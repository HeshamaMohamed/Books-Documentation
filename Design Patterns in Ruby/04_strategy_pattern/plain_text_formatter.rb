class PlainTextFormatter
  def output_report(context)
    puts "***** #{context.title} *****"
    context.text.each { |line| puts line }
  end
end
