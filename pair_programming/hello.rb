# description of the method hello
# Usage of this method is detailed below
#     doctest: I can greet the world
#     >> hello
#     => "Hello World!"
#     doctest: I can greet someone personally
#     >> hello 'Chris'
#     => "Hello Chris!"
#     doctest: I can greet someone else
#     >> hello 'Bob'
#     => "Hello Bob!"
#     doctest: I can ask if someone is there
#     >> hello 'Victor', '?'
#     => "Hello Victor?"
def hello(name='World', argument='!')
  "Hello #{name}#{argument}"
end
