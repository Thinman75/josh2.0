local discordia = require('discordia')
local client = discordia.Client()
local token = args[2]

local mema = io.open('Mema.txt', "r");
local arr = {}
for line in mema:lines() do
	table.insert (arr, line);
end

client:on('ready', function()
	print('ready to rumble 8) ')
end)

client:on('messageCreate', function(message)
	if message.content == '!dankmema' then
		message.channel:sendMessage('Your legacy dose of dank mema: \n'.. arr[math.random(#arr)])
	elseif message.content == "!f" then
		message.channel:sendMessage(message.author.username.. ' has paid their respects')
	elseif message.content == "!dankamema" then
		message.channel:sendMessage('You\'re welcome <3')
	end
end)

client:run(token)

