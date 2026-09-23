------------------------------------------------------------------
------------------------------------------------------------------
--Remane file to your character's name + "_" + job abbreviation---
------------------------------------------------------------------
--Example: Themyscira_BLU.lua ------------------------------------
----------------------------------------------------------d(^^d)--
------------------------------------------------------------------


----------------
---- Load ------
----------------

------------------------------------LOCKSTYLE------------------------------------------
local lockstyle = 1 -- Uses the in-game gearsets! Set # to desired lockstyle look!
send_command('wait 4; input /lockstyleset ' .. lockstyle)

function sub_job_change(new, old)
    send_command('wait 2; input /lockstyleset ' .. lockstyle)
end

------------------------------------MACRO BOOK-----------------------------------------
send_command('input /macro book 1') -- Update # to desired starting macro book!
send_command('wait 4; input /macro set 1') -- Update # to desired starting macro set!

-------------------------------------NO HELP ON----------------------------------------
send_command('input /blockhelp on') -- Prevents calling for help!




---------------------
------- SETS --------
---------------------

function get_sets()

-- Use "//gs export" in-game to export a file with your currently equiped gear!
-- Find the file in Windower>addons>GearSwap>data>export folder!
-- Copy the gear inside the {} and paste it into the correct set below!
-- It might work best to only include weapons in the WEAPON sets!


----------------------- IDLE SETS ----------------------

	sets.idle = {} --Leave Empty!

	-- DT set here
	sets.idle.dt = {}  

	-- Town set here
	sets.idle.town = {}  



----------------------- ENMITY SETS --------------------

	sets.hate = {} --Leave Empty!
	
	-- Enmity +++
	sets.hate.high = {}
	
	-- Enmity ---
	sets.hate.low = {}
	
	

----------------------- WEAPON SETS --------------------

	WEP_Index = 1 --Don't Change!
	sets.wep = {} --Leave Empty!
	WSLIST = {}

	-- We can have multiple different WEAPON sets!
	--
	--> Use "/console gs c togglewep" to cycle modes!
		--> Use "/console gs c ws#" to WS!
	--
	-- New modes can be added here!
	-- Make sure to also create a WEP set for it below!
	-- You can remove sets from this list too!
	WEP_Set_Names = {"TPBONUS","SKILL","ACC"}
	
	-- Weapon sets go below! Here are samples!
	
	--TP BONUS
	sets.wep.TPBONUS = {}	
	WSLIST.TPBONUS = {"WS NAME 1","WS NAME 2","WS NAME 3","WS NAME 4"}
	--SKILL+
	sets.wep.SKILL = {}
	WSLIST.SKILL = {"WS NAME 1","WS NAME 2","WS NAME 3","WS NAME 4"}
	--ACCURACY
	sets.wep.ACC = {}
	WSLIST.ACC = {"WS NAME 1","WS NAME 2","WS NAME 3","WS NAME 4"}

	
----------------------- TP SETS ------------------------

	TP_Index = 1 --Don't Change!
	sets.tp = {} --Leave Empty!

	-- We can have multiple different TP sets!
	--
	--> Use "/console gs c toggletp" to cycle modes!
	--
	-- New modes can be added here!
	-- Make sure to also create a TP set for it below!
	-- You can remove sets from this list too!
	TP_Set_Names = {"DT","ACC","TP"}
	
	-- TP sets go below! Here are samples!
	
	--Damage Taken Reduction
	sets.tp.DT = {}	

	--Accuracy
	sets.tp.ACC = {}

	--Multi-Hit, Store TP, Attack Speed
	sets.tp.TP = {}

	--Treasure Hunter
--	sets.tp.TH = {}		


	
--------------------- RANGED SETS ----------------------

	sets.ra = {} --Leave Empty!
	
	-- PRESHOT goes here
	sets.ra.preshot = {}

	-- MIDSHOT goes here
	sets.ra.midshot = {}



----------------------- WS SETS ------------------------
	
	sets.ws = {} --Leave Empty!

	-- WS set here
	sets.ws.standard = {}  

	-- WS specific sets! Replace the x with the WS name!
	-- Like this--->> sets.ws['Savage Blade'] = {}
	
	sets.ws['x'] = {}  



------------------- JOB ABILITY SETS -------------------

	sets.ja = {} --Leave Empty!

	--Uses: Windower>res>job_abilities
	sets.ja['CorsairRoll'] = {}
	sets.ja['CorsairShot'] = {}
	sets.ja['Waltz'] = {}
	sets.ja['Jig'] = {}
	sets.ja['Step'] = {}
	sets.ja['BloodPactRage'] = {}
	sets.ja['BloodPactWard'] = {}
	sets.ja['PetCommand'] = {}
	sets.ja['Monster'] = {}

	-- Single Ability examples below!
	-- Replace the x with desired Ability name!

	sets.ja['x'] = {}

	-- We can set an Ability to a set we already created!
	-- See example below!

--	sets.ja['Provoke'] = sets.hate.high
	
	

--------------------- FASTCAST SETS --------------------

	sets.fc = {} --Leave Empty!

	-- FC set here
	sets.fc.standard = {}  
	
	--Uses: Windower>res>spells AND Windower>res>skills
	sets.fc['Blue Magic'] = {}
	sets.fc['Divine Magic'] = {}
	sets.fc['Healing Magic'] = {}
	sets.fc['Enhancing Magic'] = {}
	sets.fc['Enfeebling Magic'] = {}
	sets.fc['Elemental Magic'] = {}
	sets.fc['Dark Magic'] = {}
	sets.fc['Summoning Magic'] = {}
	sets.fc['Ninjutsu'] = {}



--------------------- MAGIC SETS -----------------------

	sets.ma = {} --Leave Empty!
	
	--Uses: Windower>res>spells AND Windower>res>skills
	sets.ma['Divine Magic'] = {}
	sets.ma['Healing Magic'] = {}
	sets.ma['Enhancing Magic'] = {}
	sets.ma['Enfeebling Magic'] = {}
	sets.ma['Elemental Magic'] = {}
	sets.ma['Dark Magic'] = {}
	sets.ma['Summoning Magic'] = {}
	sets.ma['Ninjutsu'] = {}

	-- Single Spell examples below!
	-- Replace the x with desired Spell name!

	sets.ma['x'] = {}  

	-- We can set a Spell to a set we already created!
	-- See example below!
	
--	sets.ma['Flash'] = sets.hate.high

	BARELE_Index = 1
	BAR_ELE_Names = {"Barblizzara","Baraera","Barwatera","Barstonra","Barfira","Barthundra"}
	BARSTA_Index = 1
	BAR_STA_Names = {"Barparalyzra","Barsilencera","Barpoisonra","Barsleepra","Barblindra","Barpetra","Barvira","Baramnesra"}

	-- na spells
	sets.ma.na = {}
	--bar spells
	sets.ma.bar = {}

	
----------------------- PET SETS ----------------------

	sets.pet = {} --Leave Empty!

	--Update PET Spell List near end of file!
	
	--Pet Mid Action Physical	
	sets.pet.phy = {}

	--Pet Mid Action Magic
	sets.pet.mab = {}
	
	--Pet Specifc Ability
	--This is NOT the name of YOUR Job Abilities!!
	--It is the name of the PET's Spell/Ability!
	sets.pet['x'] = {}
	
	
------------------- BLUE MAGIC SETS --------------------

	sets.blu = {} --Leave Empty!
    
	--Cure Potency / Spell Int Rate / HP
	sets.blu.cure = {}
	
	--Accuracy / Str+Dex+Vit	
	sets.blu.phy = {}
	
	--Magic Attack Bonus / Magic Accuracy / INT
	sets.blu.mab = {}

	--Blue Skill / Magic Accuracy 	
	sets.blu.macc = {}

	--Blue Skill / Spell Int Rate	
	sets.blu.skill = {}
	
	--inturruption rate for buffs no skill
	sets.blu.rupt = {}

	--brrrrreath
	sets.blu.bre = {}

	
end



-------------------
--   AREA List   --
-------------------

areas = {}

-- City areas for town gear
areas.towns = S{
    "Ru'Lude Gardens",
    "Upper Jeuno",
    "Lower Jeuno",
    "Port Jeuno",
    "Port Windurst",
    "Windurst Waters",
    "Windurst Woods",
    "Windurst Walls",
    "Heavens Tower",
    "Port San d'Oria",
    "Northern San d'Oria",
    "Southern San d'Oria",
    "Port Bastok",
    "Bastok Markets",
    "Bastok Mines",
    "Metalworks",
    "Aht Urhgan Whitegate",
    "Tavnazian Safehold",
    "Nashmau",
    "Selbina",
    "Mhaura",
    "Norg",
    "Eastern Adoulin",
    "Western Adoulin",
    "Kazham",
    "Rabao",
    "Chocobo Circuit",
}



-------------------------
--   PET Spells Lists  --
-------------------------
-- Add your pet's physical and magical abilities inside the brackets below!

Physical_PET = S{
    'Footkick', 'Whirl Claws', 'Headbutt', 'Wild Oats', 'Razor Fang', 'Claw Cyclone'
}

Magical_PET = S{
    'Fire IV', 'Ice IV', 'Thundaga III', 'Bio II', 'Meteor Strike', 'Geocrush'
}


-------------------------
--  NA and BAR spell   --
-------------------------

NaSpells = S {'Blindna', 'Esuna', 'Paralyna', 'Poisona', 'Silena', 'Stona', 'Viruna'}

BarSpells = S {'Barblizzara','Baraera','Barfira','Barstonra','Barthundra','Barwatera','Barsleepra','Barpoisonra','Barparalyzra','Barblindra','Barsilencera','Barpetra','Barvira','Baramnesra'}


-------------------------
--   BLU Spells List   --
-------------------------

blu_cure = S {'Healing Breeze', 'Magic Fruit', 'Plenilune Embrace', 'Pollen', 'Restoral', 'Wild Carrot'} 

blu_phy = S {'Asuran Claws', 'Bilgestorm', 'Bludgeon', 'Body Slam', 'Feather Storm', 'Mandibular Bite', 'Queasyshroom', 'Power Attack', 'Ram Charge', 'Saurian Slide', 'Screwdriver', 'Sickle Slash', 
'Smite of Rage', 'Spinal Cleave', 'Spiral Spin', 'Sweeping Gouge', 'Terror Touch', 'Battle Dance', 'Bloodrake', 'Death Scissors', 'Dimensional Death', 'Empty Thrash', 'Quadrastrike', 'Uppercut', 
'Tourbillion', 'Thrashing Assault', 'Vertical Cleave', 'Whirl of Rage', 'Amorphic Spikes', 'Barbed Crescent', 'Claw Cyclone', 'Disseverment', 'Foot Kick', 'Frenetic Rip', 'Goblin Rush', 
'Hysteric Barrage', 'Paralyzing Triad', 'Seedspray', 'Sinker Drill', 'Vanity Dive', 'Cannonball', 'Delta Thrust', 'Glutinous Dart', 'Grand Slam', 'Quad. Continuum', 'Sprout Smack', 
'Benthic Typhoon', 'Helldive', 'Hydro Shot', 'Jet Stream', 'Pinecone Bomb', 'Wild Oats', 'Sweeping Gouge', 'Sudden Lunge'}

blu_mab = S {'Acrid Stream', 'Anvil Lightning', 'Crashing Thunder', 'Charged Whisker', 'Droning Whirlwind', 'Firespit', 'Foul Waters', 'Gates of Hades', 'Leafstorm', 'Molting Plumage', 
'Nectarous Deluge', 'Polar Roar', 'Regurgitation', 'Rending Deluge', 'Scouring Spate', 'Searing Tempest', 'Silent Storm', 'Spectral Floe', 'Subduction', 'Tem. Upheaval', 'Thermal Pulse', 
'Thunderbolt', 'Uproot', 'Water Bomb', 'Atra. Libations', 'Blood Saber', 'Dark Orb', 'Death Ray', 'Eyes On Me', 'Blazing Bound', 'Evryone. Grudge', 'Palling Salvo', 'Tenebral Crush', 
'Blinding Fulgor', 'Diffusion Ray', 'Ice Break', 'Magic Hammer', 'Rail Cannon', 'Retinal Glare', 'Sandspin', 'Vapor Spray'}
				   
blu_macc = S {'Dream Flower', 'Sheep Song','Feather Tickle','Light of Penance', 'MP Drainkiss', 'Entomb'}

blu_skill = S {'Diamondhide', 'Metallic Body', 'Magic Barrier', 'Occultation', 'Atra. Libations', 'Digest', 'Blood Saber', 'Osmosis', 'Retinal Glare'}

blu_rupt = S {'Barrier Tusk', 'Cocoon', 'Erratic Flutter', 'Harden Shell', 'Orcish Counterstance', 'Plasma Charge', 'Pyric Bulwark', 'Memento Mori', 'Nat. Meditation', 'Reactor Cool', 'Saline Coat', 
'Feather Barrier', 'Refueling', 'Warm-Up', 'Zephyr Mantle', 'Reactor Cool', 'Plasma Charge', 'Amplification', 'Mighty Guard', 'Carcharian Verve', 'Magic Barrier'}
					 
blu_bre = S {'Bad Breath', 'Poison Breath', 'Radiant Breath', 'Frost Breath', 'Heat Breath', 'Thunder Breath', 'Wind Breath'}


----------------
---- SCRIPT ----
----------------


---
--- PRECAST
---

function precast(spell)

	
-- Magic
	if spell.action_type == 'Magic' then 
		equip(sets.fc.standard) 
	end
	if sets.fc[spell.skill] then 
		equip(sets.fc[spell.skill]) 
	end
	
-- Na Spells
	if NaSpells:contains(spell.english) then
		equip(sets.fc.na)  	
	end  
	
-- Weapon Skill
	if spell.type == 'WeaponSkill' and player.tp >= 1000 then --and player.tp <= 2999 then 
		equip(sets.ws.standard) 
	end
	if sets.ws[spell.english] and player.tp >= 1000 then --and player.tp <= 2999 then 
		equip(sets.ws[spell.english]) 
	end
	--if spell.type == 'WeaponSkill' and player.tp >= 3000 then 
	--	equip(sets.ws.maxtp) 	
	--end
	
-- Job Ability
	if sets.ja[spell.type] then 
		equip(sets.ja[spell.type]) 
	end
	if sets.ja[spell.english] then 
		equip(sets.ja[spell.english]) 
	end
	
	
end


---
--- MIDCAST
---

function midcast(spell)

--Pet Midcast protection!
	if pet_midaction() then
        return
    end
	
-- Magic
	if sets.ma[spell.skill] then 
		equip(sets.ma[spell.skill]) 
	end
	if sets.ma[spell.english] then 
		equip(sets.ma[spell.english]) 
	end

-- Weapon Skill
	if spell.type == 'WeaponSkill' and player.tp >= 1000 then --and player.tp <= 2999 then 
		equip(sets.ws.standard) 
	end
	if sets.ws[spell.english] and player.tp >= 1000 then --and player.tp <= 2999 then 
		equip(sets.ws[spell.english]) 
	end
	--if spell.type == 'WeaponSkill' and player.tp >= 3000 then 
	--	equip(sets.ws.maxtp) 	
	--end
	
-- Job Ability
	if sets.ja[spell.type] then 
		equip(sets.ja[spell.type]) 
	end
	if sets.ja[spell.english] then 
		equip(sets.ja[spell.english]) 
	end

	--  Na and Bar Spells
	if NaSpells:contains(spell.english) then
		equip(sets.ma.na)  
	elseif BarSpells:contains(spell.english) then
		equip(sets.ma.bar)
	end  

-- Blue Magic Midcast uses spell lists
	if blu_cure:contains(spell.english) then
		equip(sets.blu.cure)  
	elseif blu_phy:contains(spell.english) then
		equip(sets.blu.phy)
	elseif blu_mab:contains(spell.english) then
		equip(sets.blu.mab)
	elseif blu_macc:contains(spell.english) then
		equip(sets.blu.macc)
	elseif blu_skill:contains(spell.english) then
		equip(sets.blu.skill)
	elseif blu_rupt:contains(spell.english) then
		equip(sets.blu.rupt)
	elseif blu_bre:contains(spell.english) then
		equip(sets.blu.bre)		
	end  
		
end


---
--- AFTERCAST
---

function aftercast(spell)

--Pet Midcast protection!
	if pet_midaction() then
        return
    end
	
	if player.status == 'Engaged' then 
        equip(sets.tp[TP_Set_Names[TP_Index]]) 
	elseif areas.towns:contains(world.area) then 
		equip(sets.idle.town) 
	else
		equip(sets.idle.dt) 
	end
	
    if sets.wep and sets.wep[WEP_Set_Names[WEP_Index]] then
        equip(sets.wep[WEP_Set_Names[WEP_Index]])
	end

end


---
--- PET MIDCAST AND AFTERCAST
---

function pet_midcast(spell)

-- PET MIDCAST - Uses the PET Spell list near bottom of file!
	--Phy or Mab sets
	if Physical_PET:contains(spell.english) then
		equip(sets.pet.phy)  
	elseif Magical_PET:contains(spell.english) then
		equip(sets.pet.mab)
	end

	--Spell Specific Set
	if sets.pet[spell.english] then --Do we have a set for this Pet Ability?
		equip(sets.pet[spell.english]) --Yes!  Equip that set!
	end

end

-- PET AFTERCAST
function pet_aftercast(spell)

	if player.status == 'Engaged' then --Are we fighting?
        equip(sets.tp[TP_Set_Names[TP_Index]]) --Use current TP set!
	elseif areas.towns:contains(world.area) then --In town?
		equip(sets.idle.town) --Use town set!
	else
		equip(sets.idle.dt) --Default to DT set!
	end

end


---
--- Status change
---

function status_change(new, old)

-- Status changes
	if new == 'Engaged' then 
        equip(sets.tp[TP_Set_Names[TP_Index]]) 
	elseif areas.towns:contains(world.area) then 
		equip(sets.idle.town) 
	else
		equip(sets.idle.dt) 
	end
	
    if sets.wep and sets.wep[WEP_Set_Names[WEP_Index]] then
        equip(sets.wep[WEP_Set_Names[WEP_Index]])
	end
	
end


---
--- Toggle for TP and WEAPON set modes
---


function self_command(command)
    if command == 'toggletp' then 
        TP_Index = TP_Index +1 
        if TP_Index > #TP_Set_Names then TP_Index = 1 end 
        send_command('@input /echo ----- Engaged Set changed to -----> '..TP_Set_Names[TP_Index])
        equip(sets.tp[TP_Set_Names[TP_Index]]) 
    elseif command == 'togglewep' then 
		equip({sub = "empty"}) 
        WEP_Index = WEP_Index +1 
        if WEP_Index > #WEP_Set_Names then WEP_Index = 1 end 
        send_command('@input /echo ----- Weapon Set changed to -----> '..WEP_Set_Names[WEP_Index])
        equip(sets.wep[WEP_Set_Names[WEP_Index]]) 
	elseif command == 'ws1' then
		send_command('@input /ws "'..WSLIST[WEP_Set_Names[WEP_Index]][1]..'" <t>')
	elseif command == 'ws2' then
		send_command('@input /ws "'..WSLIST[WEP_Set_Names[WEP_Index]][2]..'" <t>')
	elseif command == 'ws3' then
		send_command('@input /ws "'..WSLIST[WEP_Set_Names[WEP_Index]][3]..'" <t>')
	elseif command == 'ws4' then
		send_command('@input /ws "'..WSLIST[WEP_Set_Names[WEP_Index]][4]..'" <t>')
	elseif command == 'togglebarelement' then 
        BARELE_Index = BARELE_Index +1
        if BARELE_Index > #BAR_ELE_Names then BARELE_Index = 1 end 
        send_command('@input /echo ----- BAR ELEMENT SWITCHED TO -----> '..BAR_ELE_Names[BARELE_Index])
	elseif command == 'castbarelement' then
		send_command('@input /ma "'..BAR_ELE_Names[BARELE_Index]..'" <me>')
	elseif command == 'togglebarstatus' then 
        BARSTA_Index = BARSTA_Index +1
        if BARSTA_Index > #BAR_STA_Names then BARSTA_Index = 1 end 
        send_command('@input /echo ----- BAR STATUS SWITCHED TO -----> '..BAR_STA_Names[BARSTA_Index])
	elseif command == 'castbarstatus' then
		send_command('@input /ma "'..BAR_STA_Names[BARSTA_Index]..'" <me>')
    end
end




------------------------------------------------------------------
-- TOP-LEVEL ENGINE REGISTER (Must stay at the absolute bottom) --
------------------------------------------------------------------

-- Isolated Event Handler
-- This handles the zone change safely without nesting bugs or scope crashes
function handle_zone_gear_swap(new_zone_id, old_zone_id)
    -- Safety validation gate: prevents indexing nil 'areas' values
    if areas and areas.towns and player then
        if player.status == 'Engaged' then 
            equip(sets.tp[TP_Set_Names[TP_Index]]) 
        elseif areas.towns:contains(world.area) then 
            equip(sets.idle.town) 
        else
            equip(sets.idle.dt) 
        end
        
        -- Confirms weapon selections update through transitions safely
        if sets.wep and sets.wep[WEP_Set_Names[WEP_Index]] then
            equip(sets.wep[WEP_Set_Names[WEP_Index]])
        end
    end
end

-- Registers the zone change hook cleanly after all functions are fully loaded
my_zone_event = windower.register_event('zone change', handle_zone_gear_swap)

-- Safely cleans up the background listener when changing jobs or reloading
function file_unload()
    if my_zone_event then
        windower.unregister_event(my_zone_event)
        my_zone_event = nil
        -- THIS LINE CONFIRMS THE UNLOAD HAPPENED:
        windower.add_to_chat(121, '--- Gearswap cleanup: Zone event successfully removed! ---')
    end
end 


