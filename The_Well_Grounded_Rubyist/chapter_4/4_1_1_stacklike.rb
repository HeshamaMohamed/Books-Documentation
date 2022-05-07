module Stacklike
  def stack
    @stack ||= []
  end

  def add_to_stack(obj)
    stack.push(obj) # we called the 'stack' method. if we tried to call @stack variable, it might be un-initialized yet.
  end

  def take_from_stack
    stack.pop
  end
end
