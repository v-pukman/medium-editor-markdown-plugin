# Markdown Plugin for Rails

This gem integrates [Medium Editor Markdown Plugin](https://github.com/IonicaBizau/medium-editor-markdown) with Rails asset pipeline.

## Version

The latest version of plugin bundled by this gem is [v2.6.1](https://github.com/IonicaBizau/medium-editor-markdown)

## Installation

Include **medium-editor-markdown-plugin** in your Rails project's Gemfile:

```ruby
gem 'medium-editor'
gem 'medium-editor-markdown-plugin'
```

## Configuration

Include javascript file in **app/assets/javascripts/application.js**:

```javascript
//= require medium-editor
//= require medium-editor-markdown-plugin
```

## Using plugin with Medium Editor

Initialize Medium Editor and add Markdown Plugin inside configuration:

```html
<div class="editable"></div>
<div class="markdown">
  <pre></pre>
</div>

<script>
  $(document).ready(function(){
    var markdown = $(".markdown pre");
    var editor = new MediumEditor('.editable', {
      extensions: {
        markdown: new MeMarkdown(function (md) {
          markdown.html(md);
        })
      }
    });
  });
</script>
```

## Contributing

1. Fork it ( https://github.com/mwlang/medium-editor-markdown-plugin/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
