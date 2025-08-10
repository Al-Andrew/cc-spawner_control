
local cmdline = require("cc-afk/cmdline")












---@type table<string, cmdline.Command>
local commands = {
    ["hello"] = {
        description = "Says hello",
        args = {
            { name = "name", description = "The name to greet", type = "string", required = false }
        },
        func = function(args)
            print("Hello, " .. (args[1] or "world") .. "!")
        end
    }
}

cmdline.run(commands, arg)