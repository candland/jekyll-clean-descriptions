require "jekyll/clean/descriptions/version"
require_relative "./descriptions/cleaner.rb"

module Jekyll
  module Clean
    module Descriptions
      class Error < StandardError; end
      # Your code goes here...
    end
  end
end

Jekyll::Hooks.register :posts, :pre_render do |container, payload|
  Jekyll::Clean::Descriptions::Cleaner.new(container).call
end
