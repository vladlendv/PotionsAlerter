local frame = CreateFrame("Frame")

frame:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")

local LivingActionPotion = "Живая свобода"
local FreeActionPotion = "Свободное действие"
local generalChat = "1"

frame:SetScript("OnEvent", function(self, event, ...)
  if (arg2 == "SPELL_AURA_APPLIED") then
    local index = GetChannelName(generalChat)
    if (arg10 == LivingActionPotion) then
      if (index ~= nil) then
        DoEmote('LAUGH', arg7)
        SendChatMessage(arg7 .. ' использует ' .. select(2, GetItemInfo(20008)), "CHANNEL", nil, index);
      end
    elseif (arg10 == FreeActionPotion) then
      if (index ~= nil) then
        DoEmote('LAUGH', arg7)
        SendChatMessage(arg7 .. ' использует ' .. select(2, GetItemInfo(5634)), "CHANNEL", nil, index);
      end
    end
  end
end)
