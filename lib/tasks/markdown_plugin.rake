require 'medium-editor/helpers'

namespace :markdown_plugin do
  include MediumEditor::Helpers
  task :update do
    puts `bower install medium-editor-markdown --save`
    copy_asset "bower_components/medium-editor-markdown/dist/me-markdown.standalone.min.js", "medium-editor-markdown/me-markdown.standalone.min.js"
  end
end
