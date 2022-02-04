local mainui = {}
local mainparts = {}
local mainparts2 = {}
local assets = Instance.new('Folder',workspace)
assets.Name = 'assets'
local keyassets = game:GetObjects(getasset('sync/assets/Key.rbxm'))[1]
keyassets.Parent = assets
local laserassets = game:GetObjects(getasset('sync/assets/Laser.rbxm'))[1]
laserassets.Parent = assets
local function createSound()
    local sfx = Instance.new("Sound", game.SoundService)
    sfx.SoundId = (getsynasset or getcustomasset)('sync/assets/sgx.mp3')
    sfx.Playing = true
    sfx.Ended:Connect(function()
        sfx:Destroy()
    end)
end
createSound()

local function addToggle(option)
    option = typeof(option) == "table" and option or {}
    option.text = tostring(option.text)
    option.value = typeof(option.state) == "boolean" and option.state or false
    option.callback = typeof(option.callback) == "function" 
    and option.callback or function() end
     mainui[#mainui+1] = {type = 'toggle',text = option.text,value = option.value,callback = option.callback}
end

local function addButton(option)
    option = typeof(option) == "table" and option or {}
    option.text = tostring(option.text)
    option.callback = typeof(option.callback) == "function" 
    and option.callback or function() end
    mainui[#mainui+1] = {type = 'button',text = option.text,callback = option.callback}
end
local plr = game:GetService('Players').LocalPlayer
local function char()
    return plr.Character
end
local maine = Instance.new('Model',workspace)
