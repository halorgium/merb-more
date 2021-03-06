class ActionArgs < Merb::Controller
  
  def index(foo)
    foo
  end
  
  def multi(foo, bar)
    "#{foo} #{bar}"
  end
  
  def defaults(foo, bar = "bar")
    "#{foo} #{bar}"
  end
  
  def defaults_mixed(foo, bar ="bar", baz = "baz")
    "#{foo} #{bar} #{baz}"
  end
  
end