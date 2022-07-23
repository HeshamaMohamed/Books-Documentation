require_relative 'report'
require_relative 'html_Formatter'
require_relative 'plain_text_formatter'

report = Report.new(HTMLFormatter.new)
report.output_report

report.formatter = PlainTextFormatter.new
report.output_report
