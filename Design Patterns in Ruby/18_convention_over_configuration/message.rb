require 'uri'

class Message
  attr_accessor :from, :to, :body

  def initialize(from, to, body)
    @from = from
    @to = Uri.parse(to)
    @body = body
  end
end
