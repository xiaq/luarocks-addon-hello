local hello = {}

function hello.load()
    print "Hello!"
    print "You have loaded the addon 'hello' in your rockspec."
    print "I do nothing yet, however."
end

function hello.run(...)
    print "Hello!"
    print "You have run the command 'hello' provided by the eponymous addon."
    print "The arguments you gave to me are:"
    for i, a in ipairs({...}) do
        print(i, a)
    end
    print "I do nothing yet, however."
    return true
end

return hello
