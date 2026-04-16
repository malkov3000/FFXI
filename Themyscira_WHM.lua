------------------------------------------------------------------
------------------------------------------------------------------
-- Themyscira_WHM ------------------------------------------------
----------------------------------------------------------d(^^d)--
------------------------------------------------------------------


---------------
---Load Libs---
---------------

include('organizer-lib')



------------------------------------LOCKSTYLE------------------------------------------
local lockstyle = 3 -- Uses the in-game gearsets! Set # to desired lockstyle look!
send_command('wait 4; input /lockstyleset ' .. lockstyle)

function sub_job_change(new, old)
    send_command('wait 2; input /lockstyleset ' .. lockstyle)
end

------------------------------------MACRO BOOK-----------------------------------------
send_command('input /macro book 3') -- Update # to desired starting macro book!
send_command('wait 4; input /macro set 1') -- Update # to desired starting macro set!



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
    main="Daybreak",
    sub="Archduke's Shield",
    ammo="Homiliary",
    head="Befouled Crown",
    body="Ebers Bliaut +2",
    hands="Ebers Mitts +2",
    legs="Ebers Pant. +2",
    feet="Ebers Duckbills +2",
    neck={ name="Clr. Torque +1", augments={'Path: A',}},
    waist="Slipor Sash",
    left_ear="Etiolation Earring",
    right_ear={ name="Ebers Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Damage taken-3%',}},
    left_ring="Murky Ring",
    right_ring="Shneddick Ring",
    back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Cure" potency +10%','Damage taken-5%',}},
}  

	-- Town set here
	sets.idle.town = sets.idle.dt


----------------------- WEAPON SETS --------------------

	WEP_Index = 1 --Don't Change!
	sets.wep = {} --Leave Empty!

	-- We can have multiple different WEAPON sets!
	--
	--> Use "/console gs c togglewep" to cycle modes!
	--
	-- New modes can be added here!
	-- Make sure to also create a WEP set for it below!
	--WEP_Set_Names = {"TPBONUS","SKILL","ACC"}
	
	-- TP sets go below!
	
	--TP BONUS
	--sets.wep.TPBONUS = {}	

	--SKILL+
	--sets.wep.SKILL = {}

	--ACCURACY
	--sets.wep.ACC = {}


	
----------------------- TP SETS ------------------------

	TP_Index = 1 --Don't Change!
	sets.tp = {} --Leave Empty!

	-- We can have multiple different TP sets!
	--
	--> Use "/console gs c toggletp" to cycle modes!
	--
	-- New modes can be added here!
	-- Make sure to also create a TP set for it below!
	TP_Set_Names = {"DT"}
	
	-- TP sets go below!
	
	--Damage Taken Reduction
	sets.tp.DT = sets.idle.dt	

	--Accuracy
	--sets.tp.ACC = {}

	--Multi-Hit, Store TP, Attack Speed
	--sets.tp.TP = {}

	--Treasure Hunter
--	sets.tp.TH = {}		



----------------------- WS SETS ------------------------
	
	sets.ws = {} --Leave Empty!

	-- WS set here
	sets.ws.standard = {}  

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

	-- Single Ability examples below!
	-- Replace the x with desired Ability name!

	sets.ja['Divine Caress'] = {hands="Ebers Mitts +2",}
	sets.ja['Benediction'] = {body="Piety Bliaut +2",}	




--------------------- FASTCAST SETS --------------------

	sets.fc = {} --Leave Empty!

	-- FC set here
	sets.fc.standard = {
    main="C. Palug Hammer",
    sub="Ammurapi Shield",
    ammo="Impatiens",
    head="Ebers Cap +2",
    body="Inyanga Jubbah +2",
    hands="Ebers Mitts +2",
    legs="Aya. Cosciales +2",
    feet="Ebers Duckbills +2",
    neck={ name="Clr. Torque +1", augments={'Path: A',}},
    waist="Witful Belt",
    left_ear="Malignance Earring",
    right_ear="Loquac. Earring",
    left_ring="Murky Ring",
    right_ring="Defending Ring",
    back={ name="Alaunus's Cape", augments={'"Fast Cast"+10',}},
}
	
	--Uses: Windower>res>spells AND Windower>res>skills
--	sets.fc['Divine Magic'] = {}
	sets.fc['Healing Magic'] = {
    main={ name="Queller Rod", augments={'Healing magic skill +15','"Cure" potency +10%','"Cure" spellcasting time -7%',}},
    sub="Sors Shield",
    ammo="Impatiens",
    head={ name="Kaykaus Mitra +1", augments={'MP+80','Spell interruption rate down +12%','"Cure" spellcasting time -7%',}},
    body="Inyanga Jubbah +2",
    hands="Ebers Mitts +2",
    legs="Ebers Pant. +2",
    feet={ name="Kaykaus Boots +1", augments={'MP+80','Spell interruption rate down +12%','"Cure" spellcasting time -7%',}},
    neck={ name="Clr. Torque +1", augments={'Path: A',}},
    waist="Witful Belt",
    left_ear="Nourish. Earring +1",
    right_ear="Malignance Earring",
    left_ring="Murky Ring",
    right_ring="Shneddick Ring",
    back={ name="Alaunus's Cape", augments={'"Fast Cast"+10',}},
}

--	sets.fc['Enhancing Magic'] = {}
	sets.fc['Enfeebling Magic'] = {
    main="Daybreak",
    sub="Ammurapi Shield",
    ammo="Impatiens",
    head="Ebers Cap +2",
    body="Inyanga Jubbah +2",
    hands="Ebers Mitts +2",
    legs="Aya. Cosciales +2",
    feet="Ebers Duckbills +2",
    neck={ name="Clr. Torque +1", augments={'Path: A',}},
    waist="Witful Belt",
    left_ear="Malignance Earring",
    right_ear="Loquac. Earring",
    left_ring="Murky Ring",
    right_ring="Defending Ring",
    back={ name="Alaunus's Cape", augments={'"Fast Cast"+10',}},
}
--	sets.fc['Elemental Magic'] = {}
--	sets.fc['Dark Magic'] = {}
--	sets.fc['Ninjutsu'] = {}

	sets.fc['Cursna'] = {
    main="C. Palug Hammer",
    sub="Ammurapi Shield",
    ammo="Impatiens",
    head="Ebers Cap +2",
    body="Inyanga Jubbah +2",
    hands="Ebers Mitts +2",
    legs="Ebers Pant. +2",
    feet="Ebers Duckbills +2",
    neck={ name="Clr. Torque +1", augments={'Path: A',}},
    waist="Witful Belt",
    left_ear="Malignance Earring",
    right_ear="Loquac. Earring",
    left_ring="Murky Ring",
    right_ring="Defending Ring",
    back={ name="Alaunus's Cape", augments={'"Fast Cast"+10',}},
}

	sets.fc.na = {
    main="C. Palug Hammer",
    sub="Ammurapi Shield",
    ammo="Impatiens",
    head="Ebers Cap +2",
    body="Inyanga Jubbah +2",
    hands="Ebers Mitts +2",
    legs="Ebers Pant. +2",
    feet="Ebers Duckbills +2",
    neck={ name="Clr. Torque +1", augments={'Path: A',}},
    waist="Witful Belt",
    left_ear="Malignance Earring",
    right_ear="Loquac. Earring",
    left_ring="Murky Ring",
    right_ring="Defending Ring",
    back={ name="Alaunus's Cape", augments={'"Fast Cast"+10',}},
}



--------------------- MAGIC SETS -----------------------

	sets.ma = {} --Leave Empty!
	
	--Uses: Windower>res>spells AND Windower>res>skills
	sets.ma['Divine Magic'] = {
    main="Daybreak",
    sub="Ammurapi Shield",
    ammo="Ghastly Tathlum +1",
    head="Ebers Cap +2",
    body="Ebers Bliaut +2",
    hands="Piety Mitts +2",
    legs="Th. Pantaloons +2",
    feet="Ebers Duckbills +2",
    neck="Erra Pendant",
    waist="Eschan Stone",
    left_ear="Malignance Earring",
    right_ear="Hecate's Earring",
    left_ring="Metamor. Ring +1",
    right_ring="Stikini Ring",
    back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Cure" potency +10%','Damage taken-5%',}},
}
	sets.ma['Healing Magic'] = {
    --main="Chatoyant Staff",
    --sub="Enki Strap",
    main={ name="Queller Rod", augments={'Healing magic skill +15','"Cure" potency +10%','"Cure" spellcasting time -7%',}},
    sub="Sors Shield",
    ammo="Ombre Tathlum +1",
    head={ name="Kaykaus Mitra +1", augments={'MP+80','Spell interruption rate down +12%','"Cure" spellcasting time -7%',}},
    body="Ebers Bliaut +2",
    hands="Theophany Mitts +3",
    legs="Ebers Pant. +2",
    feet={ name="Kaykaus Boots +1", augments={'MP+80','Spell interruption rate down +12%','"Cure" spellcasting time -7%',}},
    neck={ name="Clr. Torque +1", augments={'Path: A',}},
    waist="Korin Obi",
    left_ear="Nourish. Earring +1",
    right_ear={ name="Ebers Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Damage taken-3%',}},
    left_ring="murky ring",
    right_ring="Stikini Ring",
    back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Cure" potency +10%','Damage taken-5%',}},
}
	sets.ma['Enhancing Magic'] = {
    main={ name="Gada", augments={'"Blood Pact" ability delay -5','Accuracy+13','"Refresh"+1',}},
    sub="Ammurapi Shield",
    ammo="Ombre Tathlum +1",
    head="Befouled Crown",
    body="Ebers Bliaut +2",
    hands="Dynasty Mitts",
    legs="Piety Pantaln. +2",
    feet="Theo. Duckbills +2",
    neck={ name="Clr. Torque +1", augments={'Path: A',}},
    waist="Embla Sash",
    left_ear="Etiolation Earring",
    right_ear="Mimir Earring",
    left_ring="Murky Ring",
    right_ring="Stikini Ring",
    back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Cure" potency +10%','Damage taken-5%',}},
}
	sets.ma['Enfeebling Magic'] = {
    main="Daybreak",
    sub="Ammurapi Shield",
    ammo="Hydrocera",
    head="Ebers Cap +2",
    body="Theo. Bliaut +2",
    hands="Piety Mitts +2",
    legs="Ebers Pant. +2",
    feet="Theo. Duckbills +2",
    neck="Erra Pendant",
    waist="Eschan Stone",
    left_ear="Vor Earring",
    right_ear={ name="Ebers Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Damage taken-3%',}},
    left_ring="Metamor. Ring +1",
    right_ring="Stikini Ring",
    back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Cure" potency +10%','Damage taken-5%',}},
}
--	sets.ma['Elemental Magic'] = {}
--	sets.ma['Dark Magic'] = {}
--	sets.ma['Ninjutsu'] = {}

	sets.ma['Regen IV'] = {
    main="Daybreak",
    sub="Ammurapi Shield",
    ammo="Ombre Tathlum +1",
    head="Inyanga tiara +2",
    body="Piety Bliaut +2",
    hands="Ebers Mitts +2",
    legs="Th. Pantaloons +2",
    feet="Theo. Duckbills +2",
    neck={ name="Clr. Torque +1", augments={'Path: A',}},
    waist="Embla Sash",
    left_ear="Etiolation Earring",
    right_ear={ name="Ebers Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Damage taken-3%',}},
    left_ring="Murky Ring",
    right_ring="Defending Ring",
    back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Cure" potency +10%','Damage taken-5%',}},
}

	sets.ma['Cursna'] = {
    main={ name="Queller Rod", augments={'Healing magic skill +15','"Cure" potency +10%','"Cure" spellcasting time -7%',}},
    sub="Sors Shield",
    ammo="Ombre Tathlum +1",
    head={ name="Kaykaus Mitra +1", augments={'MP+80','Spell interruption rate down +12%','"Cure" spellcasting time -7%',}},
    body="Ebers Bliaut +2",
    hands="Theophany Mitts +3",
    legs="Th. Pantaloons +2",
    feet="Ebers Duckbills +2",
    neck={ name="Clr. Torque +1", augments={'Path: A',}},
    waist="Korin Obi",
    left_ear="Meili Earring",
    right_ear={ name="Ebers Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Damage taken-3%',}},
    left_ring="Menelaus's Ring",
    right_ring="Stikini Ring",
    back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Cure" potency +10%','Damage taken-5%',}},
}

	sets.ma.na = {
    main="Daybreak",
    sub="Sors Shield",
    ammo="Ombre Tathlum +1",
    head="Ebers Cap +2",
    body="Ebers Bliaut +2",
    hands="Ebers Mitts +2",
    legs="Ebers Pant. +2",
    feet="Ebers Duckbills +2",
    neck={ name="Clr. Torque +1", augments={'Path: A',}},
    waist="Korin Obi",
    left_ear="Etiolation Earring",
    right_ear={ name="Ebers Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Damage taken-3%',}},
    left_ring="Murky Ring",
    right_ring="Defending Ring",
    back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Cure" potency +10%','Damage taken-5%',}},
}

	sets.ma.bar = {
    main="Beneficus",
    sub="Ammurapi Shield",
    ammo="Ombre Tathlum +1",
    head="Ebers Cap +2",
    body="Ebers Bliaut +2",
    hands="Ebers Mitts +2",
    legs="Piety Pantaln. +2",
    feet="Ebers Duckbills +2",
    neck={ name="Clr. Torque +1", augments={'Path: A',}},
    waist="Embla Sash",
    left_ear="Etiolation Earring",
    right_ear="Mimir Earring",
    left_ring="Murky Ring",
    right_ring="Stikini Ring",
    back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Cure" potency +10%','Damage taken-5%',}},
}
	
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
-- Cancel
	if canceled then --Spell cancelled?
		return --Exit the function!
	end	
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
--- Toggle for TP and WEAPON set modes + Bar modes
---

	BARELE_Index = 1
	BAR_ELE_Names = {"Barfira","Barblizzara","Baraera","Barstonra","Barthundra","Barwatera"}
	BARSTA_Index = 1
	BAR_STA_Names = {"Barsleepra","Barpoisonra","Barparalyzra","Barblindra","Barsilencera","Barpetra","Barvira","Baramnesra"}
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
	elseif command == 'togglebarelement' then 
        BARELE_Index = BARELE_Index +1
        if BARELE_Index > #BAR_ELE_Names then BARELE_Index = 1 end 
		--Let me know which mode I'm in!
        send_command('@input /echo ----- BAR ELEMENT SWITCHED TO -----> '..BAR_ELE_Names[BARELE_Index])
	elseif command == 'castbarelement' then
		send_command('@input /ma "'..BAR_ELE_Names[BARELE_Index]..'" <me>')
	elseif command == 'togglebarstatus' then 
        BARSTA_Index = BARSTA_Index +1
        if BARSTA_Index > #BAR_STA_Names then BARSTA_Index = 1 end 
		--Let me know which mode I'm in!
        send_command('@input /echo ----- BAR STATUS SWITCHED TO -----> '..BAR_STA_Names[BARSTA_Index])
	elseif command == 'castbarstatus' then
		send_command('@input /ma "'..BAR_STA_Names[BARSTA_Index]..'" <me>')
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

BarSpells = S {'Barfira','Barblizzara','Baraera','Barstonra','Barthundra','Barwatera','Barsleepra','Barpoisonra','Barparalyzra','Barblindra','Barsilencera','Barpetra','Barvira','Baramnesra'}
