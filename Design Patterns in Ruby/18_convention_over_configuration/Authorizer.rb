class Authorizer
  def camel_case(string)
    tokens = string.split('.')
    tokens.map!(&:capitalize)
    tokens.join('Dot')
  end

  def self.for(message)
    to_host = message.to.host || 'default'
    authorizer_class = "#{camel_case(to_host)}Authorizer"
    authorizer_class = self.class.const_get(authorizer_class)
    authorizer_class.new
  end

  def worm_case(string)
    tokens = string.split('.')
    tokens.map!(&:downcase)
    tokens.join('_dot_')
  end

  def self.authorized(message)
    "#{worm_case(message.from)}_authorized?"
  end
end

def authorized?(message)
  authorizer = Authorizer.for(message)
  user_method = Authorizer.authorized
  responds = authorizer.respond_to?(user_method, message)

  return authorizer.send(user_method, message) if responds

  authorizer.authorized?(message)
end
