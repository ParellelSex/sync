wait(1)
local function create(typer)
    local bgcvb = assets['Keys']['Key'..typer]:Clone()
    bgcvb.Parent = maine
    return bgcvb
end
local function createlaser(typer)
    local bgcvbe = assets['Laser']['laser'..typer]:Clone()
    bgcvbe.Parent = maine
    bgcvbe.CanCollide = false
    return bgcvbe
end
local l =createlaser('1')
local r =createlaser('2')
game:GetService("RunService").Heartbeat:connect(function()
    l.CFrame = char()['Left Arm'].CFrame*CFrame.Angles(0,0,math.rad(90))
    r.CFrame = char()['Right Arm'].CFrame*CFrame.Angles(0,0,math.rad(90))
end)
wait(1)
local down = false
local t = 0
local visible = false
local function load()
    for i,v in next, mainui do
        if i == 1 then
                                if v.type == 'button' then
                local part1 = create('2')
                part1.CFrame = char()['Head'].CFrame
                *CFrame.Angles(0,math.rad(180),0)*CFrame.new(0,-0.15-t,1)
                part1.Display.Key.Text = v.text

input.InputBegan:connect(
    function(key)
        if key.KeyCode == Enum.KeyCode.ButtonL2 then
            l.Touched:Connect(
                function(hit)
                    if down == false then
                        if hit == part1 then
                            down = true
                            pcall(v.callback)
                            createSound()
                            part1.CFrame = part1.CFrame * CFrame.new(0, 0, 0.1)
                            wait(0.07)
                            part1.CFrame = part1.CFrame * CFrame.new(0, 0, -0.1)
                        end
                    end
                end
            )
        end
    end
)
input.InputEnded:connect(
    function(key)
        if key.KeyCode == Enum.KeyCode.ButtonL2 then
            if down == true then
                down = false
            end
        end
    end
)
input.InputBegan:connect(
    function(key)
        if key.KeyCode == Enum.KeyCode.ButtonR2 then
            r.Touched:Connect(
                function(hit)
                    if down == false then
                        if hit == part1 then
                            down = true
                            pcall(v.callback)
                            createSound()
                            part1.CFrame = part1.CFrame * CFrame.new(0, 0, 0.1)
                            wait(0.07)
                            part1.CFrame = part1.CFrame * CFrame.new(0, 0, -0.1)
                        end
                    end
                end
            )
        end
    end
)
input.InputEnded:connect(
    function(key)
        if key.KeyCode == Enum.KeyCode.ButtonR2 then
            if down == true then
                down = false
            end
        end
    end
)


                mainparts[#mainparts+1] = {lol = part1,nb = t}
                game:GetService("RunService").Heartbeat:connect(function()
                    if visible == true then          
                        part1.Transparency = 0
                        part1.Display.Key.TextTransparency = 0
                    else
                        part1.Transparency = 1
                        part1.Display.Key.TextTransparency = 1
                    end
                end)
                t = t + part1.Size.Y + 0.05
            else
                local part1 = create('2')
                part1.CFrame = char()['Head'].CFrame
                local part2 = create('1')
                game:GetService("RunService").Heartbeat:connect(function()
                part2.CFrame =part1.CFrame*CFrame.new(-0.7,0,0)
                end)
                input.InputBegan:connect(
    function(key)
        if key.KeyCode == Enum.KeyCode.ButtonL2 then
            l.Touched:Connect(
                function(hit)
                    if down == false then
                        if hit == part1 then
                            down = true
                            v.value = not v.value
                            pcall(v.callback,v.value)
                            createSound()
                            part1.CFrame = part1.CFrame * CFrame.new(0, 0, 0.1)
                            wait(0.07)
                            part1.CFrame = part1.CFrame * CFrame.new(0, 0, -0.1)
                        end
                    end
                end
            )
        end
    end
)
input.InputEnded:connect(
    function(key)
        if key.KeyCode == Enum.KeyCode.ButtonL2 then
            if down == true then
                down = false
            end
        end
    end
)
input.InputBegan:connect(
    function(key)
        if key.KeyCode == Enum.KeyCode.ButtonR2 then
            r.Touched:Connect(
                function(hit)
                    if down == false then
                        if hit == part1 then
                            down = true
                            v.value = not v.value
                            pcall(v.callback,v.value)
                            createSound()
                            part1.CFrame = part1.CFrame * CFrame.new(0, 0, 0.1)
                            wait(0.07)
                            part1.CFrame = part1.CFrame * CFrame.new(0, 0, -0.1)
                        end
                    end
                end
            )
        end
    end
)
input.InputEnded:connect(
    function(key)
        if key.KeyCode == Enum.KeyCode.ButtonR2 then
            if down == true then
                down = false
            end
        end
    end
)
                mainparts[#mainparts+1] = {lol = part1,nb = t}
                part1.Display.Key.Text = v.text
                part2.Display.Key.Text = ''
                game:GetService("RunService").Heartbeat:connect(function()
                    if v.value == true then
                        part2.Color = Color3.fromRGB(68, 235, 112)
                    else
                        part2.Color = Color3.fromRGB(235, 68, 68)
                    end
                end)
                game:GetService("RunService").Heartbeat:connect(function()
                    if visible == true then          
                        part1.Transparency = 0
                        part1.Display.Key.TextTransparency = 0
                        part2.Transparency = 0
                        part2.Display.Key.TextTransparency = 0
                    else
                        part1.Transparency = 1
                        part1.Display.Key.TextTransparency = 1
                        part2.Transparency = 1
                        part2.Display.Key.TextTransparency = 1
                    end
                end)
                t = t + part1.Size.Y + 0.05
            end
        else
                                if v.type == 'button' then
                local part1 = create('2')
                part1.CFrame = char()['Head'].CFrame
                *CFrame.Angles(0,math.rad(180),0)*CFrame.new(0,-0.15-t,1)
                part1.Display.Key.Text = v.text

input.InputBegan:connect(
    function(key)
        if key.KeyCode == Enum.KeyCode.ButtonL2 then
            l.Touched:Connect(
                function(hit)
                    if down == false then
                        if hit == part1 then
                            down = true
                            pcall(v.callback)
                            createSound()
                            part1.CFrame = part1.CFrame * CFrame.new(0, 0, 0.1)
                            wait(0.07)
                            part1.CFrame = part1.CFrame * CFrame.new(0, 0, -0.1)
                        end
                    end
                end
            )
        end
    end
)
input.InputEnded:connect(
    function(key)
        if key.KeyCode == Enum.KeyCode.ButtonL2 then
            if down == true then
                down = false
            end
        end
    end
)
input.InputBegan:connect(
    function(key)
        if key.KeyCode == Enum.KeyCode.ButtonR2 then
            r.Touched:Connect(
                function(hit)
                    if down == false then
                        if hit == part1 then
                            down = true
                            pcall(v.callback)
                            createSound()
                            part1.CFrame = part1.CFrame * CFrame.new(0, 0, 0.1)
                            wait(0.07)
                            part1.CFrame = part1.CFrame * CFrame.new(0, 0, -0.1)
                        end
                    end
                end
            )
        end
    end
)
input.InputEnded:connect(
    function(key)
        if key.KeyCode == Enum.KeyCode.ButtonR2 then
            if down == true then
                down = false
            end
        end
    end
)


                mainparts[#mainparts+1] = {lol = part1,nb = t}
                game:GetService("RunService").Heartbeat:connect(function()
                    if visible == true then          
                        part1.Transparency = 0
                        part1.Display.Key.TextTransparency = 0
                    else
                        part1.Transparency = 1
                        part1.Display.Key.TextTransparency = 1
                    end
                end)
                t = t + part1.Size.Y + 0.05
            else
                local part1 = create('2')
                part1.CFrame = char()['Head'].CFrame
                local part2 = create('1')
                game:GetService("RunService").Heartbeat:connect(function()
                part2.CFrame =part1.CFrame*CFrame.new(-0.7,0,0)
                end)
                input.InputBegan:connect(
    function(key)
        if key.KeyCode == Enum.KeyCode.ButtonL2 then
            l.Touched:Connect(
                function(hit)
                    if down == false then
                        if hit == part1 then
                            down = true
                            v.value = not v.value
                            pcall(v.callback,v.value)
                            createSound()
                            part1.CFrame = part1.CFrame * CFrame.new(0, 0, 0.1)
                            wait(0.07)
                            part1.CFrame = part1.CFrame * CFrame.new(0, 0, -0.1)
                        end
                    end
                end
            )
        end
    end
)
input.InputEnded:connect(
    function(key)
        if key.KeyCode == Enum.KeyCode.ButtonL2 then
            if down == true then
                down = false
            end
        end
    end
)
input.InputBegan:connect(
    function(key)
        if key.KeyCode == Enum.KeyCode.ButtonR2 then
            r.Touched:Connect(
                function(hit)
                    if down == false then
                        if hit == part1 then
                            down = true
                            v.value = not v.value
                            pcall(v.callback,v.value)
                            createSound()
                            part1.CFrame = part1.CFrame * CFrame.new(0, 0, 0.1)
                            wait(0.07)
                            part1.CFrame = part1.CFrame * CFrame.new(0, 0, -0.1)
                        end
                    end
                end
            )
        end
    end
)
input.InputEnded:connect(
    function(key)
        if key.KeyCode == Enum.KeyCode.ButtonR2 then
            if down == true then
                down = false
            end
        end
    end
)
                mainparts[#mainparts+1] = {lol = part1,nb = t}
                part1.Display.Key.Text = v.text
                part2.Display.Key.Text = ''
                game:GetService("RunService").Heartbeat:connect(function()
                    if v.value == true then
                        part2.Color = Color3.fromRGB(68, 235, 112)
                    else
                        part2.Color = Color3.fromRGB(235, 68, 68)
                    end
                end)
                game:GetService("RunService").Heartbeat:connect(function()
                    if visible == true then          
                        part1.Transparency = 0
                        part1.Display.Key.TextTransparency = 0
                        part2.Transparency = 0
                        part2.Display.Key.TextTransparency = 0
                    else
                        part1.Transparency = 1
                        part1.Display.Key.TextTransparency = 1
                        part2.Transparency = 1
                        part2.Display.Key.TextTransparency = 1
                    end
                end)
                t = t + part1.Size.Y + 0.05
            end
        end
    end
end
load()
input.InputBegan:connect(function(key)
	if key.KeyCode == Enum.KeyCode.ButtonB then
		visible = not visible
		if visible == true then
		   r.Transparency = 0
		   l.Transparency = 0
		   for i,v in next, mainparts do
		           if v.lol.Name == 'Key2' then
		                v.lol.CFrame = char()['Head'].CFrame
                        *CFrame.Angles(0,math.rad(180),0)*CFrame.new(0,-0.15-v.nb,1)
		        end
		   end
        else
            		   r.Transparency = 1
		   l.Transparency = 1
		end
	end
end)
