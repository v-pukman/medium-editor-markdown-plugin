require 'medium-editor/plugin/base'

module MediumEditor
  module Plugin
    class Markdown < ::MediumEditor::Plugin::Base
      def self.javascripts
        ["medium-editor-markdown-plugin"]
      end

      def self.stylesheets
        ["medium-editor-markdown-plugin"]
      end
    end
  end
end
