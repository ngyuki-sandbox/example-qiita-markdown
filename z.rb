require 'qiita-markdown'

File.open('README.md') do |f|
  markdown = f.read
  markdown.force_encoding("utf-8")
  processor = Qiita::Markdown::Processor.new
  ret = processor.call(markdown)
  puts ret[:output]
end
