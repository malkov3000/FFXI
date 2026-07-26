------------------------------------------------------------------
------------------------------------------------------------------
-- Rogueshinobi_NIN ------------------------------------------------
----------------------------------------------------------d(^^d)--
------------------------------------------------------------------


---------------
---Load Libs---
---------------

include('organizer-lib')



------------------------------------LOCKSTYLE------------------------------------------
local lockstyle = 1 -- Uses the in-game gearsets! Set # to desired lockstyle look!
send_command('wait 4; input /lockstyleset ' .. lockstyle)

function sub_job_change(new, old)
    send_command('wait 2; input /lockstyleset ' .. lockstyle)
end

------------------------------------MACRO BOOK-----------------------------------------
send_command('input /macro book 1') -- Update # to desired starting macro book!
send_command('wait 4; input /macro set 1') -- Update # to desired starting macro set!

--no help on
send_command('input /blockhelp on')

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
    head="Malignance Chapeau",
    body="Mpaca's Doublet",
    hands="Malignance Gloves",
    legs="Mpaca's Hose",
    feet="Malignance Boots",
    neck={ name="Ninja Nodowa +1", augments={'Path: A',}},
    waist="Sailfi Belt +1",
    left_ear="Alabaster Earring",
    right_ear={ name="Hattori Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+14','Mag. Acc.+14','"Store TP"+5',}},
    left_ring="Murky Ring",
    right_ring="Shneddick Ring",
    back="Null Shawl",
}

	-- Town set here
 	sets.idle.town = {
    head="Malignance Chapeau",
    body="Mpaca's Doublet",
    hands="Malignance Gloves",
    legs="Mpaca's Hose",
    feet="Malignance Boots",
    neck={ name="Ninja Nodowa +1", augments={'Path: A',}},
    waist="Sailfi Belt +1",
    left_ear="Alabaster Earring",
    right_ear={ name="Hattori Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+14','Mag. Acc.+14','"Store TP"+5',}},
    left_ring="Murky Ring",
    right_ring="Shneddick Ring",
    back="Null Shawl",
} 



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
	WEP_Set_Names = {"NAEGLING","HeishiShorinken"}
	

	sets.wep.NAEGLING = {    
	main="Naegling",
    sub="Kaja Katana",
	}	

	sets.wep.HeishiShorinken = {    
	main="Heishi Shorinken",
    sub="Kaja Katana",
	}	


	
----------------------- TP SETS ------------------------

	TP_Index = 1 --Don't Change!
	sets.tp = {} --Leave Empty!

	-- We can have multiple different TP sets!
	--
	--> Use "/console gs c toggletp" to cycle modes!
	--
	-- New modes can be added here!
	-- Make sure to also create a TP set for it below!
	TP_Set_Names = {"ACC","TH"}
	
	-- TP sets go below!
	
	--Damage Taken Reduction
--	sets.tp.DT = {}	

	--Accuracy
	sets.tp.ACC = {
    head="Malignance Chapeau",
    body="Mpaca's Doublet",
    hands="Malignance Gloves",
    legs="Mpaca's Hose",
    feet="Malignance Boots",
    neck={ name="Ninja Nodowa +1", augments={'Path: A',}},
    waist="Sailfi Belt +1",
    left_ear="Alabaster Earring",
    right_ear={ name="Hattori Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+14','Mag. Acc.+14','"Store TP"+5',}},
    left_ring="Murky Ring",
    right_ring="Epona's Ring",
    back="Null Shawl",
}
	--Multi-Hit, Store TP, Attack Speed
--	sets.tp.TP = {}

	--Treasure Hunter
	sets.tp.TH = {
    head="Malignance Chapeau",
    body="Mpaca's Doublet",
    hands="Malignance Gloves",
    legs="Mpaca's Hose",
    feet="Malignance Boots",
    neck={ name="Ninja Nodowa +1", augments={'Path: A',}},
    waist="Sailfi Belt +1",
    left_ear="Alabaster Earring",
    right_ear={ name="Hattori Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+14','Mag. Acc.+14','"Store TP"+5',}},
    left_ring="Murky Ring",
    right_ring="Epona's Ring",
    back="Null Shawl",
}	



----------------------- WS SETS ------------------------
	
	sets.ws = {} --Leave Empty!

	-- WS set here
	sets.ws.standard = {    
    head="Mpaca's Cap",
    body="Mpaca's Doublet",
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs="Mpaca's Hose",
    feet="Mpaca's Boots",
    neck="Light Gorget",
    waist="Light Belt",
    left_ear="Moonshade Earring",
    right_ear={ name="Hattori Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+14','Mag. Acc.+14','"Store TP"+5',}},
    left_ring="Ilabrat Ring",
    right_ring="Epona's Ring",
    back="Null Shawl",
	}  

	-- WS specific sets! Replace the x with the WS name!
	-- Like this--->> sets.ws['Savage Blade'] = {}
	
	sets.ws['Savage Blade'] = {    
    head="Mpaca's Cap",
    body="Mpaca's Doublet",
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs="Mpaca's Hose",
    feet="Mpaca's Boots",
    neck="Light Gorget",
    waist="Light Belt",
    left_ear="Moonshade Earring",
    right_ear={ name="Hattori Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+14','Mag. Acc.+14','"Store TP"+5',}},
    left_ring="Ilabrat Ring",
    right_ring="Epona's Ring",
    back="Null Shawl",
	}   



------------------- JOB ABILITY SETS -------------------

	sets.ja = {} --Leave Empty!

	--Uses: Windower>res>job_abilities
	--sets.ja['CorsairRoll'] = {}
	--sets.ja['CorsairShot'] = {}
	--sets.ja['Waltz'] = {}
	--sets.ja['Jig'] = {}
	--sets.ja['Step'] = {}
	--sets.ja['BloodPactRage'] = {}
	--sets.ja['BloodPactWard'] = {}
	--sets.ja['PetCommand'] = {}

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
	sets.fc.standard = {}  
	
	--Uses: Windower>res>spells AND Windower>res>skills
	--sets.fc['Blue Magic'] = {}
	--sets.fc['Divine Magic'] = {}
	--sets.fc['Healing Magic'] = {}
	--sets.fc['Enhancing Magic'] = {}
	--sets.fc['Enfeebling Magic'] = {}
	--sets.fc['Elemental Magic'] = {}
	--sets.fc['Dark Magic'] = {}
	--sets.fc['Summoning Magic'] = {}
	sets.fc['Ninjutsu'] = {}



--------------------- MAGIC SETS -----------------------

	sets.ma = {} --Leave Empty!
	
	--Uses: Windower>res>spells AND Windower>res>skills
	--sets.ma['Divine Magic'] = {}
	--sets.ma['Healing Magic'] = {}
	--sets.ma['Enhancing Magic'] = {}
	--sets.ma['Enfeebling Magic'] = {}
	--sets.ma['Elemental Magic'] = {}
	--sets.ma['Dark Magic'] = {}
	--sets.ma['Summoning Magic'] = {}
	sets.ma['Ninjutsu'] = {}

	-- Single Spell examples below!
	-- Replace the x with desired Spell name!

	sets.ma['x'] = {}  

	-- We can set a Spell to a set we already created!
	-- See example below!
	
	sets.ma['Flash'] = sets.hate.high





	
end



--------------------
-----  SCRIPT  -----
--------------------


---
--- PRECAST
---

function precast(spell)

-- Cancel
	if canceled then --Spell cancelled?
		return --Exit the function!
	end
	
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



-- Cancel
	if canceled then --Spell cancelled?
		return --Exit the function!
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


	
-- Cancel
	if canceled then --Spell cancelled?
		return --Exit the function!
	end

	if player.status == 'Engaged' then --Are we fighting?
        equip(sets.tp[TP_Set_Names[TP_Index]]) --Use current TP set!
	elseif areas.towns:contains(world.area) then --In town?
		equip(sets.idle.town) --Use town set!
	else
		equip(sets.idle.dt) --Default to DT set!
	end

end





---
--- Status and Zone change
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

-- Zone changes
windower.register_event('zone change', function(new_zone_id, old_zone_id)
	if player.status == 'Engaged' then --Are we fighting?
        equip(sets.tp[TP_Set_Names[TP_Index]]) --Use current TP set!
	elseif areas.towns:contains(world.area) then --In town?
		equip(sets.idle.town) --Use town set!
	else
		equip(sets.idle.dt) --Default to DT set!
	end
end)



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
        WEP_Index = WEP_Index +1 --Cycle variable
        if WEP_Index > #WEP_Set_Names then WEP_Index = 1 end --Restart at end of list
		--Let me know which mode I'm in!
        send_command('@input /echo ----- Weapon Set changed to -----> '..WEP_Set_Names[WEP_Index])
        equip(sets.wep[WEP_Set_Names[WEP_Index]]) --Equip current mode wep set
    end
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



