module Jekyll
  module Clean
    module Descriptions
      class Cleaner
        FORMAT_STRING_METHODS = [
          :strip_html, :strip_newlines, :normalize_whitespace, :escape_once,
        ].freeze

        def filters
          @filters ||= Filters.new(Liquid::Context.new)
        end

        def initialize
        end

        def call page
          if !page.data['description']
            if page.data['excerpt']
              description = cleanup(page.data['excerpt'])
              if description and !description.empty?
                page.data['description'] = description
              end
            end
          end
          page
        end

        def cleanup description
          description = FORMAT_STRING_METHODS.reduce(description) do |memo, method|
            filters.public_send(method, memo)
          end
          filters.truncate(description, 160)
        end

        class Filters
          include Jekyll::Filters
          include Liquid::StandardFilters

          def initialize(context)
            @context = context
          end
        end
      end
    end
  end
end
