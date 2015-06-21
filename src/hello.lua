local hello = {}

local api = require("luarocks.api")

local function hello_callback(to)
    print("Hello, "..to.."!")
end

function hello.load()
    api.register_rockspec_field("hello", { _type = "string" }, hello_callback)
    print "Hello!"
    print "You have loaded the addon 'hello' in your rockspec."
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
