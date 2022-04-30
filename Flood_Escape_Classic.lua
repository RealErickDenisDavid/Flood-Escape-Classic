local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
            local Window = Library.CreateLib("Flood Escape Classic", "GrapeTheme")
            
            -- Main

            local Main = Window:NewTab("Main")
            local MainSection = Main:NewSection("Main")

            local InfiniteJumpEnabled;
            MainSection:NewToggle("Infinite Jump", "By toggling this you can jump infinitely", function(State)
                InfiniteJumpEnabled = State

                local Player = game:GetService("Players").LocalPlayer
                game:GetService("UserInputService").JumpRequest:Connect(function()
                    if InfiniteJumpEnabled then
                        Player.Character:WaitForChild("Humanoid"):ChangeState("Jumping")
                    end
                end)
            end)

            -- Settings

            local Settings = Window:NewTab("Settings")
            SettingsSelection = Settings:NewSection("Settings")
        
            SettingsSelection:NewKeybind("KeybindText", "Change the Keybind", Enum.KeyCode.V, function()
                Library:ToggleUI()
            end)

        -- Credits

        local Credits = Window:NewTab("Credits")
        CreditsSection = Credits:NewSection("Credits")

        CreditsSection:NewLabel("Made by Real_PainNonsense & PainExploit Team#")
