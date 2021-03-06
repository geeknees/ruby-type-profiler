class Foo
  def foo=(x)
    @foo = x
  end

  def foo
    @foo
  end
end

def log(x)
end

Foo.new.foo = 1
log(Foo.new.foo)
Foo.new.foo = "str"
log(Foo.new.foo)

__END__
# Classes
class Object
  def log : (Integer | String) -> nil
end

class Foo
  @foo : Integer | String
  def foo= : (Integer | String) -> (Integer | String)
  def foo : -> (Integer | String)
end
