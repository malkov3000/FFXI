------------------------------------------------------------------
------------------------------------------------------------------
--Remane file to your character's name + "_" + job abbreviation---
------------------------------------------------------------------
--Example: Themyscira_BLU.lua ------------------------------------
----------------------------------------------------------d(^^d)--
------------------------------------------------------------------




------------------------------------LOCKSTYLE------------------------------------------
local lockstyle = 4 -- Uses the in-game gearsets! Set # to desired lockstyle look!
send_command('wait 4; input /lockstyleset ' .. lockstyle)

function sub_job_change(new, old)
    send_command('wait 2; input /lockstyleset ' .. lockstyle)
end

------------------------------------MACRO BOOK-----------------------------------------
send_command('input /macro book 2') -- Update # to desired starting macro book!
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
	sets.idle.dt = {
    main="Gridarvor",
    sub="Kaja Grip",
    ammo="Sancus Sachet +1",
    head="Beckoner's Horn +2",
    body={ name="Apogee Dalmatica", augments={'MP+60','Pet: "Mag.Atk.Bns."+30','Blood Pact Dmg.+7',}},
    hands="Glyphic Bracers +2",
    legs="Beck. Spats +2",
    feet={ name="Apogee Pumps +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
    neck="Caller's Pendant",
    waist="Lucidity Sash",
    left_ear="Evans Earring",
    right_ear={ name="Beck. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Pet: Accuracy+11 Pet: Rng. Acc.+11','Pet: Mag. Acc.+11','Damage taken-3%',}},
    left_ring="Stikini Ring",
    right_ring="Shneddick Ring",
    back="Campestres's Cape",
} 

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

	-- We can have multiple different WEAPON sets!
	--
	--> Use "/console gs c togglewep" to cycle modes!
	--
	-- New modes can be added here!
	-- Make sure to also create a WEP set for it below!
	WEP_Set_Names = {"TPBONUS","SKILL","ACC"}
	
	-- TP sets go below!
	
	--TP BONUS
	sets.wep.TPBONUS = {}	

	--SKILL+
	sets.wep.SKILL = {}

	--ACCURACY
	sets.wep.ACC = {}


	
----------------------- TP SETS ------------------------

	TP_Index = 1 --Don't Change!
	sets.tp = {} --Leave Empty!

	-- We can have multiple different TP sets!
	--
	--> Use "/console gs c toggletp" to cycle modes!
	--
	-- New modes can be added here!
	-- Make sure to also create a TP set for it below!
	TP_Set_Names = {"DT","ACC","TP"}
	
	-- TP sets go below!
	
	--Damage Taken Reduction
	sets.tp.DT = {
    main="Gridarvor",
    sub="Kaja Grip",
    ammo="Sancus Sachet +1",
    head="Beckoner's Horn +2",
    body={ name="Apogee Dalmatica", augments={'MP+60','Pet: "Mag.Atk.Bns."+30','Blood Pact Dmg.+7',}},
    hands="Glyphic Bracers +2",
    legs="Beck. Spats +2",
    feet={ name="Apogee Pumps +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
    neck="Caller's Pendant",
    waist="Lucidity Sash",
    left_ear="Kyrene's Earring",
    right_ear={ name="Beck. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Pet: Accuracy+11 Pet: Rng. Acc.+11','Pet: Mag. Acc.+11','Damage taken-3%',}},
	left_ring="Varar Ring +1",
    right_ring="Varar Ring +1",
    back="Campestres's Cape",
}	

	--Accuracy
	sets.tp.ACC = {}

	--Multi-Hit, Store TP, Attack Speed
	sets.tp.TP = {}

	--Treasure Hunter
--	sets.tp.TH = {}		



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
	sets.ja['BloodPactRage'] = {
    main={ name="Espiritus", augments={'Enmity-6','Pet: "Mag.Atk.Bns."+30','Pet: Damage taken -4%',}},
    sub="Vox Grip",
    ammo="Sancus Sachet +1",
    head="Beckoner's Horn +2",
    body="Baayami Robe",
    hands="Baayami Cuffs",
    legs="Bravery Tonban",
    feet="Baayami Sabots",
    neck="Caller's Pendant",
    waist="Lucidity Sash",
    left_ear="Evans Earring",
    left_ring="Stikini Ring",
    back={ name="Conveyance Cape", augments={'Summoning magic skill +3','Pet: Enmity+6','Blood Pact Dmg.+2','Blood Pact ab. del. II -3',}},
}
	sets.ja['BloodPactWard'] = {
    main={ name="Espiritus", augments={'Enmity-6','Pet: "Mag.Atk.Bns."+30','Pet: Damage taken -4%',}},
    sub="Vox Grip",
    ammo="Sancus Sachet +1",
    head="Beckoner's Horn +2",
    body="Baayami Robe",
    hands="Baayami Cuffs",
    legs="Bravery Tonban",
    feet="Baayami Sabots",
    neck="Caller's Pendant",
    waist="Lucidity Sash",
    left_ear="Evans Earring",
    left_ring="Stikini Ring",
    back={ name="Conveyance Cape", augments={'Summoning magic skill +3','Pet: Enmity+6','Blood Pact Dmg.+2','Blood Pact ab. del. II -3',}},
}
	sets.ja['PetCommand'] = {}

	-- Single Ability examples below!
	-- Replace the x with desired Ability name!

	sets.ja['x'] = {}

	-- We can set an Ability to a set we already created!
	-- See example below!

	sets.ja['Provoke'] = sets.hate.high
	
	
	
--------------------- RANGED SETS ----------------------

	sets.ra = {} --Leave Empty!
	
	-- PRESHOT goes here
	sets.ra.preshot = {}

	-- MIDSHOT goes here
	sets.ra.midshot = {}



--------------------- FASTCAST SETS --------------------

	sets.fc = {} --Leave Empty!

	-- FC set here
	sets.fc.standard = {
	head={ name="Psycloth Tiara", augments={'Mag. Acc.+20','"Fast Cast"+10','INT+7',}},
    body="Baayami Robe",
    hands="Glyphic Bracers +2",
    legs={ name="Telchine Braconi", augments={'"Fast Cast"+4','Enh. Mag. eff. dur. +7',}},
    feet={ name="Apogee Pumps +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
    neck={ name="Summoner's Collar", augments={'Path: A',}},
    waist="Embla Sash",
    left_ear="Malignance Earring",
    right_ear="Loquac. Earring",
    left_ring="Stikini Ring",
    right_ring="Lebeche Ring",
}  
	
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
	sets.ma['Healing Magic'] = {
    ammo="Ombre Tathlum +1",
    head={ name="Vanya Hood", augments={'MND+10','Spell interruption rate down +15%','"Conserve MP"+6',}},
    waist="Embla Sash",
    left_ear="Mendi. Earring",
    right_ear="Flashward Earring",
    left_ring="Stikini Ring",
    right_ring="Menelaus's Ring",
    back="Solemnity Cape",
}
	sets.ma['Enhancing Magic'] = {    
    body={ name="Telchine Chas.", augments={'Enh. Mag. eff. dur. +10',}},
    legs={ name="Telchine Braconi", augments={'"Fast Cast"+4','Enh. Mag. eff. dur. +7',}},
    feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +9',}},
    waist="Embla Sash",
    left_ear="Mendi. Earring",
    right_ear="Mimir Earring",
    left_ring="Stikini Ring",
    right_ring="Lebeche Ring",
}
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
	
	sets.ma['Flash'] = sets.hate.high



	------------------- PET SETS ----------------------

	sets.pet = {} --Leave Empty!
    
	--Pet Mid Action Physical	
	sets.pet.phy = {
    main="Gridarvor",
    sub="Elan Strap",
    ammo="Sancus Sachet +1",
    head={ name="Helios Band", augments={'Pet: Attack+22 Pet: Rng.Atk.+22','Pet: "Dbl. Atk."+6','Blood Pact Dmg.+6',}},
    body="Con. Doublet +2",
    hands="Bravery Gloves",
    legs={ name="Enticer's Pants", augments={'MP+5','Pet: Mag. Acc.+3',}},
    feet={ name="Helios Boots", augments={'Pet: Attack+27 Pet: Rng.Atk.+27','Pet: "Dbl. Atk."+8','Blood Pact Dmg.+5',}},
    neck={ name="Summoner's Collar", augments={'Path: A',}},
    waist="Klouskap Sash",
    left_ear="Kyrene's Earring",
    right_ear={ name="Beck. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Pet: Accuracy+11 Pet: Rng. Acc.+11','Pet: Mag. Acc.+11','Damage taken-3%',}},
    left_ring="Varar Ring +1",
    right_ring="Varar Ring +1",
    back={ name="Campestres's Cape", augments={'Pet: M.Acc.+1 Pet: M.Dmg.+1','Pet: "Regen"+1',}},
}

	--Pet Mid Action Magic
	sets.pet.mab = {
    main={ name="Espiritus", augments={'Enmity-6','Pet: "Mag.Atk.Bns."+30','Pet: Damage taken -4%',}},
    sub="Elan Strap",
    ammo="Sancus Sachet +1",
    head="Beckoner's Horn +2",
    body={ name="Apogee Dalmatica", augments={'MP+60','Pet: "Mag.Atk.Bns."+30','Blood Pact Dmg.+7',}},
    hands={ name="Merlinic Dastanas", augments={'Pet: Mag. Acc.+17','Blood Pact Dmg.+6','Pet: "Mag.Atk.Bns."+1',}},
    legs={ name="Enticer's Pants", augments={'MP+5','Pet: Mag. Acc.+3',}},
    feet={ name="Apogee Pumps +1", augments={'MP+80','Pet: "Mag.Atk.Bns."+35','Blood Pact Dmg.+8',}},
    neck={ name="Summoner's Collar", augments={'Path: A',}},
    waist="Klouskap Sash",
    left_ear="Kyrene's Earring",
    right_ear={ name="Beck. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Pet: Accuracy+11 Pet: Rng. Acc.+11','Pet: Mag. Acc.+11','Damage taken-3%',}},
    left_ring="Varar Ring +1",
    right_ring="Varar Ring +1",
    back="Campestres's Cape",
}
	
	--Pet Specifc Ability
	--This is NOT the name of YOUR Job Abilities!!
	--It is the name of the PET's Spell/Ability!
	sets.pet['x'] = {}

	

end




-------------------------
--   SMN Spells List   --
-------------------------

Physical_BPs = S{"Punch", "Rock Throw", "Barracuda Dive", "Claw", "Welt", "Axe Kick", "ShockStrike", "Camisado",
				"Regal Scratch", "Poison Nails", "Moonlit Charge" ,"Cresent Fang" ,"Rock Buster", "Volt Strike",
				"Roundhouse", "Tail Whip", "Double Punch", "Megalith Throw", "Double Slap", "Eclipse Bite", "Mountain Buster", 
				"Spinning Dive", "Predator Claws", "Rush", "Chaotic Strike", "Hysteric Assault", "Crag Throw", "Blindside", "Regal Gash"}

Magical_BPs = S{"Inferno", "Earthen Fury", "Conflag Strike", "Tidal Wave", "Aerial Blast", "Clarsach Call", "Diamond Dust",
				"Judgment Bolt", "Searing Light", "Howling Moon", "Ruinous Omen", "Thunderspark", "Burning Strike", "Meteorite",
				"Sonic Buffet", "Nether Blast", "Flaming Crush", "Zantetsuken", "Meteor Strike", "Geocrush", "Grand Fall", "Wind Blade",
				"Heavenly Strike", "Thunderstorm", "Level ? Holy", "Holy Mist", "Lunar Bay", "Night Terror", "Impact",}






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





--------------------
-----  SCRIPT  -----
--------------------


---
--- PRECAST
---

function precast(spell)


	
-- Magic
	if spell.action_type == 'Magic' then --Is the spell magic?
		equip(sets.fc.standard) --Yes! Equip FC
	end
	if sets.fc[spell.skill] then --Do we have a specific FC set for this school of magic?
		equip(sets.fc[spell.skill]) --Yes! Use that school-specific FC set!
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
	if sets.ja[spell.type] then --Do we have a set for this 'type' of ability?
		equip(sets.ja[spell.type]) --Yes!  Equip that set!
	end
	if sets.ja[spell.english] then --Do we have a set for this Job Ability?
		equip(sets.ja[spell.english]) --Yes!  Equip that set!
	end
	
-- Ranged Attack
	if spell.action_type == 'Ranged Attack' then --Ranged Attack?
		equip(sets.ra.preshot) --Yes!  Equip PRESHOT!
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
	if sets.ma[spell.skill] then --Do we have a specific MC set for this school of magic?
		equip(sets.ma[spell.skill]) --Yes! Use that school-specific MC set!
	end
	if sets.ma[spell.english] then --Do we have a specific MC set for this spell name?
		equip(set.ma[spell.english]) --Yes! Use that spell name specific MC set!
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
	if sets.ja[spell.type] then --Do we have a set for this 'type' of ability?
		equip(sets.ja[spell.type]) --Yes!  Equip that set!
	end
	if sets.ja[spell.english] then --Do we have a set for this Job Ability?
		equip(sets.ja[spell.english]) --Yes!  Equip that set!
	end

-- Ranged Attack
	if spell.action_type == 'Ranged Attack' then --Ranged Attack?
		equip(sets.ra.midshot) --Yes!  Equip MIDSHOT!
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
	
	equip(sets.wep[WEP_Set_Names[WEP_Index]]) 

end



---
--- Status change
---

function status_change(new, old)

-- Status changes
	if new == 'Engaged' then --Are we fighting?
        equip(sets.tp[TP_Set_Names[TP_Index]]) --Use current TP set!
	elseif areas.towns:contains(world.area) then --In town?
		equip(sets.idle.town) --Use town set!
	else
		equip(sets.idle.dt) --Default to DT set!
	end
end



---
--- Toggle for TP and WEAPON set modes
---

function self_command(command)
    if command == 'toggletp' then --Set Command TP
        TP_Index = TP_Index +1 --Cycle variable
        if TP_Index > #TP_Set_Names then TP_Index = 1 end --Restart at end of list
		--Let me know which mode I'm in!
        send_command('@input /echo ----- Engaged Set changed to -----> '..TP_Set_Names[TP_Index])
        equip(sets.tp[TP_Set_Names[TP_Index]]) --Equip current mode tp set
    elseif command == 'togglewep' then --Set Command WEP
		equip({sub = "empty"}) 
        WEP_Index = WEP_Index +1 --Cycle variable
        if WEP_Index > #WEP_Set_Names then WEP_Index = 1 end --Restart at end of list
		--Let me know which mode I'm in!
        send_command('@input /echo ----- Weapon Set changed to -----> '..WEP_Set_Names[WEP_Index])
        equip(sets.wep[WEP_Set_Names[WEP_Index]]) --Equip current mode wep set
    end
end



---
--- PET MIDCAST AND AFTERCAST
---

function pet_midcast(spell)

--PET MIDCAST
	--Phy or Mab sets
	if Physical_BPs:contains(spell.english) then
		equip(sets.pet.phy)  
	elseif Magical_BPs:contains(spell.english) then
		equip(sets.pet.mab)
	end

	--Spell Specific Set
	if sets.pet[spell.english] then --Do we have a set for this Pet Ability?
		equip(sets.pet[spell.english]) --Yes!  Equip that set!
	end

end

--PET AFTERCAST
function pet_aftercast(spell)

	if player.status == 'Engaged' then --Are we fighting?
        equip(sets.tp[TP_Set_Names[TP_Index]]) --Use current TP set!
	elseif areas.towns:contains(world.area) then --In town?
		equip(sets.idle.town) --Use town set!
	else
		equip(sets.idle.dt) --Default to DT set!
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


