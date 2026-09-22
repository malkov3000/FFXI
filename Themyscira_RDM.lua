------------------------------------------------------------------
------------------------------------------------------------------
--Remane file to your character's name + "_" + job abbreviation---
------------------------------------------------------------------
--Example: Themyscira_BLU.lua ------------------------------------
----------------------------------------------------------d(^^d)--
------------------------------------------------------------------


---------------
---Load Libs---
---------------




------------------------------------LOCKSTYLE------------------------------------------
local lockstyle = 8 -- Uses the in-game gearsets! Set # to desired lockstyle look!
send_command('wait 4; input /lockstyleset ' .. lockstyle)

function sub_job_change(new, old)
    send_command('wait 2; input /lockstyleset ' .. lockstyle)
end

------------------------------------MACRO BOOK-----------------------------------------
send_command('input /macro book 8') -- Update # to desired starting macro book!
send_command('wait 4; input /macro set 1') -- Update # to desired starting macro set!

--no help on
send_command('input /blockhelp on')

---------------------
------- SETS --------
---------------------

function get_sets()

	sets = {}

-- Use "//gs export" in-game to export a file with your currently equiped gear!
-- Find the file in Windower>addons>GearSwap>data>export folder!
-- Copy the gear inside the {} and paste it into the correct set below!
-- It might work best to only include weapons in the WEAPON sets!


----------------------- IDLE SETS ----------------------

	sets.idle = {} --Leave Empty!

	-- DT set here
	sets.idle.dt = {
    main={ name="Emissary", augments={'Mag. Acc.+15','"Mag.Atk.Bns."+20','"Refresh"+1',}},
    sub="Archduke's Shield",
    ammo="Homiliary",
    head="Viti. Chapeau +3",
    body="Lethargy Sayon +3",
    hands="Leth. Ganth. +3",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck={ name="Dls. Torque +1", augments={'Path: A',}},
    waist="Null belt",
    left_ear="Etiolation Earring",
    right_ear="Alabaster Earring",
    left_ring="Murky Ring",
    right_ring="Shneddick Ring",
    back="Solemnity Cape",
}

	-- Town set here
	sets.idle.town = sets.idle.dt



----------------------- ENMITY SETS --------------------

	sets.hate = {} --Leave Empty!
	
	-- Enmity +++
	--sets.hate.high = {}
	
	-- Enmity ---
	--sets.hate.low = {}
	
	

----------------------- WEAPON SETS --------------------

	WEP_Index = 1 
	sets.wep = {} 
	WSLIST = {}

	-- We can have multiple different WEAPON sets!
	--
	--> Use "/console gs c togglewep" to cycle modes!
	--
	-- New modes can be added here!
	-- Make sure to also create a WEP set for it below!
	-- You can remove sets from this list too!
	WEP_Set_Names = {"Naegling", "Maxentius"}
	
	-- Weapon sets go below! Here are samples!
	
	sets.wep.Naegling = {    
	main="Naegling",
    sub="Ammurapi Shield",
	}	
	WSLIST.Naegling = {"Savage Blade","Chant du Cygne","Sanguine Blade","Flat Blade"}

	sets.wep.Maxentius = {    
	main="Maxentius",
    sub="Ammurapi Shield",
	}
	WSLIST.Maxentius = {"Black Halo","Realmrazer","Starlight","Brainshaker"}


	
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
	TP_Set_Names = {"TP"}
	
	-- TP sets go below! Here are samples!
	
	--Damage Taken Reduction
	sets.tp.DT = {}	

	--Accuracy
	sets.tp.ACC = {}

	--Multi-Hit, Store TP, Attack Speed
	sets.tp.TP = {
    ammo="Aurgelmir Orb",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Malignance Gloves",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck="Null Loop",
    waist="Sailfi Belt +1",
    left_ear="Mache Earring +1",
    right_ear="Alabaster Earring",
    left_ring="Murky Ring",
    right_ring="Chirich Ring",
    back="Null shawl",
}

	--Treasure Hunter
--	sets.tp.TH = {}		


	
--------------------- RANGED SETS ----------------------

	sets.ra = {} --Leave Empty!
	
	-- PRESHOT goes here
	--sets.ra.preshot = {}

	-- MIDSHOT goes here
	--sets.ra.midshot = {}



----------------------- WS SETS ------------------------
	
	sets.ws = {} --Leave Empty!

	-- WS set here
	sets.ws.standard = {
    ammo="Oshasha's Treatise",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Rep. Plat. Medal",
    waist="Sailfi Belt +1",
    left_ear="Ishvara Earring",
    right_ear="Moonshade Earring",
    left_ring="Epaminondas's Ring",
    right_ring="Cornelia's Ring",
    back="Alabaster Mantle",
}

	-- WS specific sets! Replace the x with the WS name!
	-- Like this--->> sets.ws['Savage Blade'] = {}
	
	--sets.ws['x'] = {}  



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
	--sets.ja['Monster'] = {}

	-- Single Ability examples below!
	-- Replace the x with desired Ability name!

	--sets.ja['x'] = {}

	-- We can set an Ability to a set we already created!
	-- See example below!

--	sets.ja['Provoke'] = sets.hate.high
	
	

--------------------- FASTCAST SETS --------------------

	sets.fc = {} --Leave Empty!

	-- FC set here
	sets.fc.standard = {
    main={ name="Emissary", augments={'Mag. Acc.+15','"Mag.Atk.Bns."+20','"Refresh"+1',}},
    sub="Sors Shield",
    ammo="Impatiens",
    head="Atro. Chapeau +3",
    body="Viti. Tabard +2",
    hands={ name="Kaykaus Cuffs +1", augments={'MP+80','"Conserve MP"+7','"Fast Cast"+4',}},
    legs="Aya. Cosciales +2",
    feet={ name="Carmine Greaves +1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}},
    neck={ name="Dls. Torque +1", augments={'Path: A',}},
    waist="Witful Belt",
    left_ear="Malignance Earring",
    right_ear={ name="Lethargy Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+8','Mag. Acc.+8',}},
    left_ring="Lebeche Ring",
    right_ring="Naji's Loop",
    back="Fi Follet Cape +1",
}
	
	--Uses: Windower>res>spells AND Windower>res>skills
	--sets.fc['Blue Magic'] = {}
	--sets.fc['Divine Magic'] = {}
	--sets.fc['Healing Magic'] = {}
	--sets.fc['Enhancing Magic'] = {}
	--sets.fc['Enfeebling Magic'] = {}
	--sets.fc['Elemental Magic'] = {}
	--sets.fc['Dark Magic'] = {}
	--sets.fc['Summoning Magic'] = {}
	--sets.fc['Ninjutsu'] = {}



--------------------- MAGIC SETS -----------------------

	sets.ma = {} --Leave Empty!
	
	--Uses: Windower>res>spells AND Windower>res>skills
	sets.ma['Divine Magic'] = {
    main="Naegling",
    sub="Ammurapi Shield",
    ammo="Hydrocera",
    head="Atro. Chapeau +3",
    body="Lethargy Sayon +3",
    hands="Leth. Ganth. +3",
    legs="Leth. Fuseau +3",
    feet="Leth. Houseaux +2",
    neck={ name="Dls. Torque +1", augments={'Path: A',}},
    waist="Null belt",
    left_ear="Malignance Earring",
    right_ear="Alabaster Earring",
    left_ring="Metamor. Ring +1",
    right_ring="Stikini Ring",
    back="Aurist's Cape +1",
}
	sets.ma['Healing Magic'] = {
    main="Naegling",
    sub="Sors Shield",
    ammo="Ombre Tathlum +1",
    head={ name="Kaykaus Mitra +1", augments={'MP+80','Spell interruption rate down +12%','"Cure" spellcasting time -7%',}},
    body="Viti. Tabard +2",
    hands={ name="Kaykaus Cuffs +1", augments={'MP+80','"Conserve MP"+7','"Fast Cast"+4',}},
    legs="Atrophy Tights +3",
    feet={ name="Kaykaus Boots +1", augments={'MP+80','Spell interruption rate down +12%','"Cure" spellcasting time -7%',}},
    neck={ name="Dls. Torque +1", augments={'Path: A',}},
    waist="Korin Obi",
    left_ear="Meili Earring",
    right_ear="Alabaster Earring",
    left_ring="Menelaus's Ring",
    right_ring="Stikini Ring",
    back="Solemnity Cape",
}
	sets.ma['Enhancing Magic'] = {
    main={ name="Emissary", augments={'Mag. Acc.+15','"Mag.Atk.Bns."+20','"Refresh"+1',}},
    sub="Ammurapi Shield",
    ammo="Homiliary",
    head="Telchine cap",
    body="Viti. Tabard +2",
    hands="Atrophy Gloves +3",
    legs="Leth. Fuseau +3",
    feet="Leth. Houseaux +2",
    neck={ name="Dls. Torque +1", augments={'Path: A',}},
    waist="Embla Sash",
    left_ear="Mimir Earring",
    right_ear={ name="Lethargy Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+8','Mag. Acc.+8',}},
    left_ring="Murky Ring",
    right_ring="Stikini Ring",
    back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10',}},
}
	sets.ma['Enfeebling Magic'] = {
	main="Bunzi's Rod",
    sub="Ammurapi Shield",
    ammo="Regal gem",
    head="Viti. Chapeau +3",
    body="Lethargy Sayon +3",
    hands="Leth. Ganth. +3",
    legs="Chironic Hose",
    feet="Vitiation Boots +4",
    neck={ name="Dls. Torque +1", augments={'Path: A',}},
    waist="Null belt",
    left_ear="Malignance Earring",
    right_ear="Snotra Earring",
    left_ring="Metamor. Ring +1",
    right_ring="Stikini Ring",
    back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10',}},
}
	sets.ma['Elemental Magic'] = {
    main="Bunzi's Rod",
    sub="Ammurapi Shield",
    ammo="Ghastly Tathlum +1",
    head="Atro. Chapeau +3",
    body="Bunzi's Robe",
    hands="Piety Mitts +4",
    legs="Leth. Fuseau +3",
    feet="Bunzi's Sabots",
    neck="Sibyl Scarf",
    waist="Eschan Stone",
    left_ear="Malignance Earring",
    right_ear="Hecate's Earring",
    left_ring="Mephitas's Ring +1",
    right_ring="Metamor. Ring +1",
    back="Aurist's Cape +1",
}
	sets.ma['Dark Magic'] = {
    main="Naegling",
    sub="Ammurapi Shield",
    ammo="Ombre Tathlum +1",
    head="Atro. Chapeau +3",
    body="Lethargy Sayon +3",
    hands="Leth. Ganth. +3",
    legs="Leth. Fuseau +3",
    feet="Leth. Houseaux +2",
    neck="Erra Pendant",
    waist="Null belt",
    left_ear="Malignance Earring",
    right_ear="Alabaster Earring",
    left_ring="Metamor. Ring +1",
    right_ring="Stikini Ring",
    back="Aurist's Cape +1",
}
	--sets.ma['Summoning Magic'] = {}
	--sets.ma['Ninjutsu'] = {}

	-- Single Spell examples below!
	-- Replace the x with desired Spell name!

	sets.ma['Refresh III'] = {
    main={ name="Emissary", augments={'Mag. Acc.+15','"Mag.Atk.Bns."+20','"Refresh"+1',}},
    sub="Ammurapi Shield",
    ammo="Homiliary",
    head="Telchine cap",
    body="Atrophy Tabard +3",
    hands="Atrophy Gloves +3",
    legs="Leth. Fuseau +3",
    feet="Leth. Houseaux +2",
    neck={ name="Dls. Torque +1", augments={'Path: A',}},
    waist="Embla Sash",
    left_ear="Mimir Earring",
    right_ear={ name="Lethargy Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+8','Mag. Acc.+8',}},
    left_ring="Murky Ring",
    right_ring="Stikini Ring",
    back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10',}},
}  

	-- We can set a Spell to a set we already created!
	-- See example below!
	
--	sets.ma['Flash'] = sets.hate.high



----------------------- PET SETS ----------------------

	sets.pet = {} --Leave Empty!

	--Update PET Spell List near end of file!
	
	--Pet Mid Action Physical	
	--pets.pet.phy = {}

	--Pet Mid Action Magic
	--sets.pet.mab = {}
	
	--Pet Specifc Ability
	--This is NOT the name of YOUR Job Abilities!!
	--It is the name of the PET's Spell/Ability!
	--sets.pet['x'] = {}

	
end



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
-- Na Spells
	if NaSpells:contains(spell.english) then
		equip(sets.fc.na)  	
	end  
-- Weapon Skill
	if spell.type == 'WeaponSkill' and player.tp >= 1000 then --Do We Have TP?
		equip(sets.ws.standard) --No!  Use the standard WS set!
	end
	if sets.ws[spell.english] and player.tp >= 1000 then --Do We Have TP?
		equip(sets.ws[spell.english]) --Yes!  Use that WS set!	
	end
-- Job Ability
	if sets.ja[spell.type] then --Do we have a set for this 'type' of ability?
		equip(sets.ja[spell.type]) --Yes!  Equip that set!
	end
	if sets.ja[spell.english] then --Do we have a set for this Job Ability?
		equip(sets.ja[spell.english]) --Yes!  Equip that set!
	end
end



---
--- MIDCAST
---

function midcast(spell)

-- Magic
	if sets.ma[spell.skill] then --Do we have a specific MC set for this school of magic?
		equip(sets.ma[spell.skill]) --Yes! Use that school-specific MC set!
	end
	if sets.ma[spell.english] then --Do we have a specific MC set for this spell name?
		equip(sets.ma[spell.english]) --Yes! Use that spell name specific MC set!
	end
-- Weapon Skill
	if spell.type == 'WeaponSkill' and player.tp >= 1000 then --Do We Have TP?
		equip(sets.ws.standard) --No!  Use the standard WS set!
	end
	if sets.ws[spell.english] and player.tp >= 1000 then --Do We Have TP?
		equip(sets.ws[spell.english]) --Yes!  Use that WS set!	
	end	
-- Job Ability
	if sets.ja[spell.type] then --Do we have a set for this 'type' of ability?
		equip(sets.ja[spell.type]) --Yes!  Equip that set!
	end
	if sets.ja[spell.english] then --Do we have a set for this Job Ability?
		equip(sets.ja[spell.english]) --Yes!  Equip that set!
	end
--  Na and Bar Spells
	if NaSpells:contains(spell.english) then
		equip(sets.ma.na)  
	elseif BarSpells:contains(spell.english) then
		equip(sets.ma.bar)
	end  	
end



---
--- AFTERCAST
---

function aftercast(spell)



	if player.status == 'Engaged' then --Are we fighting?
        equip(sets.tp[TP_Set_Names[TP_Index]]) --Use current TP set!
	elseif areas.towns:contains(world.area) then --In town?
		equip(sets.idle.town) --Use town set!
	else
		equip(sets.idle.dt) --Default to DT set!
	end
	
	equip(sets.wep[WEP_Set_Names[WEP_Index]]) 	

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



---
--- Toggle for TP and WEAPON set modes + Bar modes
---
function self_command(command)
    if command == 'toggletp' then 
        TP_Index = TP_Index +1 
        if TP_Index > #TP_Set_Names then TP_Index = 1 end 
        send_command('@input /echo ----- Engaged Set changed to -----> '..TP_Set_Names[TP_Index])
        equip(sets.tp[TP_Set_Names[TP_Index]]) 
    elseif command == 'togglewep' then 
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



-------------------------
--  NA and BAR spell   --
-------------------------

NaSpells = S {'Blindna', 'Esuna', 'Paralyna', 'Poisona', 'Silena', 'Stona', 'Viruna'}

BarSpells = S {'Barblizzara','Baraera','Barfira','Barstonra','Barthundra','Barwatera','Barsleepra','Barpoisonra','Barparalyzra','Barblindra','Barsilencera','Barpetra','Barvira','Baramnesra'}


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
