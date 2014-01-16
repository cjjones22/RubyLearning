def decoration(decorator = '*', name, block)
  width = block.call(name).size + 4
  leftify <<-EOS
    #{decorator * width}
    #{decorator} #{block.call(name).ljust((width / 2), ' ')} #{decorator}
    #{decorator * width}
  EOS
end

private
def leftify(text)
  text.split(/\n/).map {|e| e.strip}.join("\n")
end

my_lambda = lambda {|name| "Hello #{name}!"}
name = 'Victor'
puts decoration('=', name, my_lambda)

