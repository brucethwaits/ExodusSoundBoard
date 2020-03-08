--table containing all the commands as well as their filepaths and icons
--intended to be referenced throughout the addon, our central source of info
--lua does not preserve order of elements in table 
--we use a numeric key and ipairs to iterate over the elements in the desired order
soundTable = {
  {"Wed Wench","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\1_red_wrench.ogg","INTERFACE/ICONS/spell_mekkatorque_bot_redwrench"}, --same as [1] = {"command_name", "sound_filepath", "icon"}, 
  {"KappaWarren","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\2_warrenKappa.ogg","INTERFACE/ICONS/achievement_nazmir_boss_ghuun"}, --[2] = {}...
  {"NotTheBelt","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\NotTheBelt.ogg","INTERFACE/ICONS/inv_belt_04"},
  {"KiltPride","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\AranPride.ogg","INTERFACE/ICONS/achievement_doublerainbow"},
  {"HowManyWeeks","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\HowManyWeeks.ogg","INTERFACE/ICONS/inv_misc_questionmark"},
  {"Bruce","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\ThanksBruce.ogg","INTERFACE/ICONS/achievement_worldevent_thanksgiving"},
  {"Blue","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Blue.ogg","INTERFACE/ICONS/ability_fixated_state_blue"},
  {"Mana","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\mana.ogg","INTERFACE/ICONS/spell_frost_manaburn"},
  {"STFU","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\stfu.ogg","INTERFACE/ICONS/spell_misc_emotionangry"},
  {"Oooh","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Oooh.ogg","INTERFACE/ICONS/spell_misc_emotionhappy"},
  {"Slipped","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\It_Slipped.ogg","INTERFACE/ICONS/inv_babytentacleface"},
  {"Blowout","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\big_winter_dk_blowout.ogg","INTERFACE/ICONS/ability_deathknight_remorselesswinters2"},
  {"ArranRee","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\ArranRee.ogg","INTERFACE/ICONS/warrior_disruptingshout"},
  {"Ree2","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Ree2.ogg","INTERFACE/ICONS/ability_fomor_boss_shout"},
  {"Ree","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\ree.ogg","INTERFACE/ICONS/ability_warrior_battleshout"},
  {"Oww","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\oww.ogg","INTERFACE/ICONS/spell_holy_painsupression"},
  {"Bloodlust","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Bloodlust.ogg","INTERFACE/ICONS/spell_nature_bloodlust"},
  {"Champion!","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Champion.ogg","INTERFACE/ICONS/inv__faction_championsofazeroth"},
  {"Popcorn","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\popcorn.ogg","INTERFACE/ICONS/inv_misc_popcorntoy"},
  {"Sorry","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Sorry.ogg","INTERFACE/ICONS/spell_misc_emotionafraid"},
  {"What","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\What.ogg","INTERFACE/ICONS/ability_rogue_surpriseattack"},
  -- {"Bastard","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Bastard.ogg","INTERFACE/ICONS/ability_warrior_commandingshout"},
  -- {"GoodJob","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\GoodJob.ogg","INTERFACE/ICONS/thumbsup"},
  {"HiThere","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\HiThere.ogg","INTERFACE/ICONS/ability_paladin_handoflight"},
  {"Zuma","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Zuma.ogg","INTERFACE/ICONS/inv_helm_laughingskull_01"},
  {"FancyMeeting","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\FancyMeetingYouHere.ogg","INTERFACE/ICONS/inv_garrison_hearthstone"},
  {"Hard","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Hard.ogg","INTERFACE/ICONS/INV_Pet_Maggot"},
  {"FirstTime","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\FirstTime.ogg","INTERFACE/ICONS/achievement_bg_win_av_x_times"},
  {"WarrenGasm","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\WarrenGasm.ogg","INTERFACE/ICONS/ability_warrior_rampage"},
  {"OnceItsIn","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\OnceItsIn.ogg","INTERFACE/ICONS/achievement_nzothraid_nzoth"},
  {"TooSoon","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\TooSoon.ogg","INTERFACE/ICONS/spell_holy_borrowedtime"},
  {"ScrewYou","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\ScrewAllOfYou.ogg","INTERFACE/ICONS/inv_misc_screwdriver_01"},
  {"Kos","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Kos.ogg","INTERFACE/ICONS/INV_Tradeskill_Cooking_FeastofBlood"},
  {"OhYeah","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\OhYeah.ogg","INTERFACE/ICONS/INV_Relics_TotemofRage"},
  {"ArranYeah","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\ArranYeah.ogg","INTERFACE/ICONS/Spell_Holy_FistOfJustice"},
  {"KiltPriide","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\KiltPride2.ogg","INTERFACE/ICONS/Spell_Shaman_GiftEarthmother"},
  {"Welcome","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Welcome.ogg","INTERFACE/ICONS/INV_Misc_Toy_07"},
  {"Receive","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\Receive.ogg","INTERFACE/ICONS/INV_Pet_DiseasedBearCub"},
  {"WTF","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\WhatDaFuck.ogg","INTERFACE/ICONS/INV_Misc_Head_Centaur_01"}
  -- {"StanSorry","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\WhatDaFuck.ogg","INTERFACE/ICONS/TODO"},
  -- {"ArranSorry","Interface\\AddOns\\ExodusSoundBoard\\Sounds\\WhatDaFuck.ogg","INTERFACE/ICONS/TODO"},
}
addonPrefix = "ESB1337"

-- variables used for generating UI
-- changing these is an easy way to update the UI - no other changes needed
local btnSize = 48
local btnsPerRow = 5
local outerHorizontalSpacing = 10

-- setting up slash commands and show/hide functionality
SLASH_ESB1 = "/ESB"
SlashCmdList["ESB"] = function(msg)
  printWelcomeMessage()
  if (PutItInFrame:IsShown()) then
    PutItInFrame:Hide()
  else
    PutItInFrame:Show()
    setupUI()
  end
end

function setupUI()
  --set up the frame for the buttons based on number of rows
  local numSounds = #soundTable
  local numRows = 0
  if (numSounds % btnsPerRow == 0) then
    numRows = numSounds / btnsPerRow
  else
    numRows = math.floor(numSounds / btnsPerRow) + 1
  end
  PutItInFrame:SetSize(btnsPerRow * btnSize + outerHorizontalSpacing * 2, numRows * btnSize + 47)

  --add a button for each item in the sound table
  for i, sound in ipairs(soundTable) do
    local button = CreateFrame("Button", "Button" .. i, PutItInFrame, "UIPanelButtonTemplate")
    local row = 0
    if (i % btnsPerRow == 0) then
       row = math.floor((i - 1) / (btnsPerRow))
    else 
       row = math.floor(i / (btnsPerRow))
    end   
    local col = (i - 1) - (row * btnsPerRow)
    button:SetPoint("TOPLEFT", outerHorizontalSpacing + col * btnSize, -30 - (row * btnSize))
    button:SetSize(btnSize, btnSize)
    button:SetNormalTexture(soundTable[i][3])
    button:SetScript("OnClick", 
      function()
        SendAllAddonMessages(soundTable[i][1])
      end
    )
  end
 
end

function printWelcomeMessage()
  print("<ESB> Welcome to Exodus Sound Board")
  print("<ESB> Each command is case sensitive, but can be included in a phrase")
  print("<ESB> The following commands are included in this release:")
  for i, sound in ipairs(soundTable) do
    print("<ESB> " .. sound[1])
  end
end

function SendAllAddonMessages(command)
  if (UnitExists("target") and (UnitIsPlayer("target"))) then C_ChatInfo.SendAddonMessage(addonPrefix, command, "WHISPER", GetUnitName("target", 1)) end;
  if (IsInRaid()) then
    C_ChatInfo.SendAddonMessage(addonPrefix, command, "RAID")
  elseif (IsInGroup()) then
    C_ChatInfo.SendAddonMessage(addonPrefix, command, "PARTY")
  else
    C_ChatInfo.SendAddonMessage(addonPrefix, command, "WHISPER", GetUnitName("player", 1))
  end
end