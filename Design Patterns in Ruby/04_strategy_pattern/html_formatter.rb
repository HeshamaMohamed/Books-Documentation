class HTMLFormatter
  def output_report(context)
    puts '<html>'
    puts '  <head>'
    puts "    <title>#{context.title}</title>"
    puts '  </head>'
    puts '  <body>'
    context.text.each { |line| puts "    <p>#{line}</p>" }
    puts '  </body>'
    puts '</html>'
  end
end
