class C; end

c = C.new
class << c
  def x; end
  def y; end
  def z; end
  protected :y
  private :z
end
p c.singleton_methods.sort
# [:x, :y]

class << c
  p private_instance_methods(false)
end
# [:z]

class C; end
class D < C; end
def C.a_class_method_on_C; end
def D.a_class_method_on_D; end
p D.singleton_methods
# [:a_class_method_on_D, :a_class_method_on_C]

p File.singleton_methods - File.singleton_methods(false)
# [:read, :sysopen, :for_fd, :popen, :foreach, :binread, :new, :binwrite,
#  :write, :copy_stream, :select, :pipe, :open, :try_convert, :readlines]
