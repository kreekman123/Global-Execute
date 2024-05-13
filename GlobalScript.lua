local bossFarming = true

spawn(function()
  if bossFarming then
    getgenv().Config = {
        Start = true,
        ServerHop = true,
        HopMode = "VIP", --// VIP/Tech VIP/Normal
        Webhooks = {
            Send = true,
            Webhook = "https://discord.com/api/webhooks/1239421123121119283/klx6-gTJ1W9_sA_3w5L4O8t6HyvRTK1vkQVhWEYhftRA6TcqSOLgj6AO58XV4J9fn2-T",
            PingOnHuge = true,
            UserId = "775117392644407296"
        }
    }
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/378a9896656af23e5819ba369039c77a.lua"))()
  end
end)

spawn(function()
  -- This bit can go at the start - just needs to run once
  local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
  local StarterGui = game:GetService("StarterGui")
  game:GetService("Players").LocalPlayer.Idled:connect(
      function()
          game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame);
          wait(0.5);
          game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame);
      end
  );
  --------------------------------------------------------
  
  -- When you want to send a message
  OrionLib:MakeNotification({
      Name = "Anti-AFK script loaded!",
      Content = "You won't be kicked for being AFK.",
      Image = "rbxassetid://1847190174",
      Time = 5
  })
end)
