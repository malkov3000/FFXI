------------------------------------------------------------------
------------------------------------------------------------------
-- Themyscira_WHM ------------------------------------------------
----------------------------------------------------------d(^^d)--
------------------------------------------------------------------


----------------
---- Load ------
----------------

------------------------------------LOCKSTYLE------------------------------------------
local lockstyle = 3 
send_command('wait 4; input /lockstyleset ' .. lockstyle)

function sub_job_change(new, old)
    send_command('wait 2; input /lockstyleset ' .. lockstyle)
end

------------------------------------MACRO BOOK-----------------------------------------
send_command('input /macro book 3') 
send_command('wait 4; input /macro set 1') 

-------------------------------------NO HELP ON----------------------------------------
send_command('input /blockhelp on') 


---------------------
------- SETS --------
---------------------

function get_sets()

----------------------- IDLE SETS ----------------------

	sets.idle = {} 

	sets.idle.dt = {
    main="Daybreak",
    sub="Archduke's Shield",
    ammo="Homiliary",
    head="Ebers Cap +2",
    body="Ebers Bliaut +3",
    hands="Ebers Mitts +2",
    legs="Ebers Pant. +3",
    feet="Ebers Duckbills +2",
    neck="Elite Royal Collar",
    waist="Null Belt",
    left_ear="Etiolation Earring",
    right_ear="Alabaster Earring",
    left_ring="Murky Ring",
    right_ring="Shneddick Ring",
    back="Null Shawl",
}

	sets.idle.town = sets.idle.dt


----------------------- WEAPON SETS --------------------

	WEP_Index = 1 
	sets.wep = {} 
	WSLIST = {}

	--
	--> Use "/console gs c cyclewep" to cycle modes!
	--

	--WEP_Set_Names = {"TPBONUS","SKILL","ACC"}
	
	--sets.wep.TPBONUS = {}	

	--sets.wep.SKILL = {}

	--sets.wep.ACC = {}

	
----------------------- TP SETS ------------------------

	TP_Index = 1 
	sets.tp = {} 

	--
	--> Use "/console gs c cycletp" to cycle modes!
	--

	TP_Set_Names = {"DT"}
	
	sets.tp.DT = sets.idle.dt	

----------------------- WS SETS ------------------------
	
	sets.ws = {} 

	sets.ws.standard = {}  

	--sets.ws['x'] = {}  


------------------- JOB ABILITY SETS -------------------

	sets.ja = {} 

	sets.ja['Divine Caress'] = {hands="Ebers Mitts +2",}
	sets.ja['Benediction'] = {body="Piety Bliaut +2",}	


--------------------- FASTCAST SETS --------------------

	sets.fc = {} 

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
    left_ring="Lebeche Ring",
    right_ring="Naji's Loop",
    back="Fi Follet Cape +1",
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
    legs="Ebers Pant. +3",
    feet={ name="Kaykaus Boots +1", augments={'MP+80','Spell interruption rate down +12%','"Cure" spellcasting time -7%',}},
    neck={ name="Clr. Torque +1", augments={'Path: A',}},
    waist="Witful Belt",
    left_ear="Nourish. Earring +1",
    right_ear="Malignance Earring",
    left_ring="Lebeche Ring",
    right_ring="Naji's Loop",
    back="Fi Follet Cape +1",
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
    left_ring="Lebeche Ring",
    right_ring="Naji's Loop",
    back="Fi Follet Cape +1",
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
    legs="Ebers Pant. +3",
    feet="Ebers Duckbills +2",
    neck={ name="Clr. Torque +1", augments={'Path: A',}},
    waist="Witful Belt",
    left_ear="Malignance Earring",
    right_ear="Loquac. Earring",
    left_ring="Lebeche Ring",
    right_ring="Naji's Loop",
    back="Fi Follet Cape +1",
}

	sets.fc.na = {
    main="C. Palug Hammer",
    sub="Ammurapi Shield",
    ammo="Impatiens",
    head="Ebers Cap +2",
    body="Inyanga Jubbah +2",
    hands="Ebers Mitts +2",
    legs="Ebers Pant. +3",
    feet="Ebers Duckbills +2",
    neck={ name="Clr. Torque +1", augments={'Path: A',}},
    waist="Witful Belt",
    left_ear="Malignance Earring",
    right_ear="Loquac. Earring",
    left_ring="Lebeche Ring",
    right_ring="Naji's Loop",
    back="Fi Follet Cape +1",
}


--------------------- MAGIC SETS -----------------------

	sets.ma = {} 
	
	sets.ma['Divine Magic'] = {
    main="Bunzi's Rod",
    sub="Ammurapi Shield",
    ammo="Ghastly Tathlum +1",
    head="Bunzi's Hat",
    body="Bunzi's Robe",
    hands="Piety Mitts +4",
    legs="Bunzi's Pants",
    feet="Bunzi's Sabots",
    neck="Sibyl Scarf",
    waist="Eschan Stone",
    left_ear="Malignance Earring",
    right_ear="Hecate's Earring",
    left_ring="Metamor. Ring +1",
    right_ring="Mephitas's Ring +1",
    back="Aurist's Cape +1",
}

	sets.ma['Healing Magic'] = {
    --main="Chatoyant Staff",
    --sub="Enki Strap",
    main={ name="Queller Rod", augments={'Healing magic skill +15','"Cure" potency +10%','"Cure" spellcasting time -7%',}},
    sub="Sors Shield",
    ammo="Ombre Tathlum +1",
    head={ name="Kaykaus Mitra +1", augments={'MP+80','Spell interruption rate down +12%','"Cure" spellcasting time -7%',}},
    body="Ebers Bliaut +3",
    hands="Theophany Mitts +4",
    legs="Ebers Pant. +3",
    feet={ name="Kaykaus Boots +1", augments={'MP+80','Spell interruption rate down +12%','"Cure" spellcasting time -7%',}},
    neck={ name="Clr. Torque +1", augments={'Path: A',}},
    waist="Korin Obi",
    left_ear="Nourish. Earring +1",
    right_ear="Ebers Earring +1",
    left_ring="murky ring",
    right_ring="Stikini Ring",
    back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Cure" potency +10%','Damage taken-5%',}},
}

	sets.ma['Enhancing Magic'] = {
    main="Gada",
    sub="Ammurapi Shield",
    ammo="Ombre Tathlum +1",
    head="Telchine cap",
    body="Telchine Chas.",
    hands="Dynasty Mitts",
    legs="Telchine braconi",
    feet="Theo. Duckbills +4",
    neck={ name="Clr. Torque +1", augments={'Path: A',}},
    waist="Embla Sash",
    left_ear="Etiolation Earring",
    right_ear="Mimir Earring",
    left_ring="Murky Ring",
    right_ring="Stikini Ring",
    back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Cure" potency +10%','Damage taken-5%',}},
}

	sets.ma['Enfeebling Magic'] = {
    main="Bunzi's Rod",
    sub="Ammurapi Shield",
    ammo="Hydrocera",
    head="Ebers Cap +2",
    body="Theo. Bliaut +2",
    hands="Piety Mitts +4",
    legs="Ebers Pant. +3",
    feet="Theo. Duckbills +4",
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Alabaster Earring",
    right_ear="Vor Earring",
    left_ring="Metamor. Ring +1",
    right_ring="Stikini Ring",
    back="Aurist's Cape +1",
}

	sets.ma['Elemental Magic'] = {
    main="Bunzi's Rod",
    sub="Ammurapi Shield",
    ammo="Ghastly Tathlum +1",
    head="Bunzi's Hat",
    body="Bunzi's Robe",
    hands="Bunzi's Gloves",
    legs="Bunzi's Pants",
    feet="Bunzi's Sabots",
    neck="Sibyl Scarf",
    waist="Eschan Stone",
    left_ear="Malignance Earring",
    right_ear="Hecate's Earring",
    left_ring="Metamor. Ring +1",
    right_ring="Mephitas's Ring +1",
    back="Aurist's Cape +1",
}

--	sets.ma['Dark Magic'] = {}
--	sets.ma['Ninjutsu'] = {}

	sets.ma['Dispelga'] = {
    main="Daybreak",
    sub="Ammurapi Shield",
    ammo="Hydrocera",
    head="Ebers Cap +2",
    body="Theo. Bliaut +2",
    hands="Piety Mitts +4",
    legs="Ebers Pant. +3",
    feet="Theo. Duckbills +4",
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Vor Earring",
    right_ear="Ebers Earring +1",
    left_ring="Metamor. Ring +1",
    right_ring="Stikini Ring",
    back="Aurist's Cape +1",
}

	sets.ma['Regen IV'] = {
    main="Gada",
    sub="Ammurapi Shield",
    ammo="Ombre Tathlum +1",
    head="Inyanga tiara +2",
    body="Piety Bliaut +2",
    hands="Ebers Mitts +2",
    legs="Th. Pantaloons +2",
    feet="Theo. Duckbills +4",
    neck={ name="Clr. Torque +1", augments={'Path: A',}},
    waist="Embla Sash",
    left_ear="Etiolation Earring",
    right_ear="Alabaster Earring",
    left_ring="Murky Ring",
    right_ring="Defending Ring",
    back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Cure" potency +10%','Damage taken-5%',}},
}

	sets.ma['Cursna'] = {
    main={ name="Queller Rod", augments={'Healing magic skill +15','"Cure" potency +10%','"Cure" spellcasting time -7%',}},
    sub="Sors Shield",
    ammo="Ombre Tathlum +1",
    head={ name="Kaykaus Mitra +1", augments={'MP+80','Spell interruption rate down +12%','"Cure" spellcasting time -7%',}},
    body="Ebers Bliaut +3",
    hands="Theophany Mitts +4",
    legs="Th. Pantaloons +2",
    feet="Ebers Duckbills +2",
    neck={ name="Clr. Torque +1", augments={'Path: A',}},
    waist="Korin Obi",
    left_ear="Meili Earring",
    right_ear="Ebers Earring +1",
    left_ring="Menelaus's Ring",
    right_ring="Stikini Ring",
    back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Cure" potency +10%','Damage taken-5%',}},
}

	BARELE_Index = 1
	BAR_ELE_Names = {"Barblizzara","Baraera","Barwatera","Barstonra","Barfira","Barthundra"}
	BARSTA_Index = 1
	BAR_STA_Names = {"Barparalyzra","Barsilencera","Barpoisonra","Barsleepra","Barblindra","Barpetra","Barvira","Baramnesra"}

	sets.ma.na = {
    main="Daybreak",
    sub="Sors Shield",
    ammo="Ombre Tathlum +1",
    head="Ebers Cap +2",
    body="Ebers Bliaut +3",
    hands="Ebers Mitts +2",
    legs="Ebers Pant. +3",
    feet="Ebers Duckbills +2",
    neck={ name="Clr. Torque +1", augments={'Path: A',}},
    waist="Korin Obi",
    left_ear="Etiolation Earring",
    right_ear="Alabaster Earring",
    left_ring="Murky Ring",
    right_ring="Defending Ring",
    back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Cure" potency +10%','Damage taken-5%',}},
}

	sets.ma.bar = {
    main="Beneficus",
    sub="Ammurapi Shield",
    ammo="Ombre Tathlum +1",
    head="Ebers Cap +2",
    body="Ebers Bliaut +3",
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
	
	sets.ma.aga = {
    --main="Chatoyant Staff",
    --sub="Enki Strap",
    main={ name="Queller Rod", augments={'Healing magic skill +15','"Cure" potency +10%','"Cure" spellcasting time -7%',}},
    sub="Sors Shield",
    ammo="Ombre Tathlum +1",
    head={ name="Kaykaus Mitra +1", augments={'MP+80','Spell interruption rate down +12%','"Cure" spellcasting time -7%',}},
    body="Theo. Bliaut +2",
    hands="Theophany Mitts +4",
    legs="Ebers Pant. +3",
    feet={ name="Kaykaus Boots +1", augments={'MP+80','Spell interruption rate down +12%','"Cure" spellcasting time -7%',}},
    neck={ name="Clr. Torque +1", augments={'Path: A',}},
    waist="Korin Obi",
    left_ear="Nourish. Earring +1",
    right_ear="Ebers Earring +1",
    left_ring="murky ring",
    right_ring="Stikini Ring",
    back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Cure" potency +10%','Damage taken-5%',}},
}

	sets.ma['Curaga III'] = sets.ma.aga
	sets.ma['Curaga IV'] = sets.ma.aga

end


-------------------
--   AREA List   --
-------------------

areas = {}

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


--------------------
-----  SCRIPT  -----
--------------------


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
	if spell.type == 'WeaponSkill' and player.tp >= 1000 then 
		equip(sets.ws.standard) 
	end
	if sets.ws[spell.english] and player.tp >= 1000 then 
		equip(sets.ws[spell.english]) 	
	end
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

-- Magic
	if sets.ma[spell.skill] then 
		equip(sets.ma[spell.skill]) 
	end
	if sets.ma[spell.english] then 
		equip(sets.ma[spell.english]) 
	end
-- Weapon Skill
	if spell.type == 'WeaponSkill' and player.tp >= 1000 then 
		equip(sets.ws.standard) 
	end
	if sets.ws[spell.english] and player.tp >= 1000 then 
		equip(sets.ws[spell.english]) 	
	end	
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
end


---
--- AFTERCAST
---

function aftercast(spell)

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
--- cycle for TP and WEAPON set modes + Bar modes
---

function self_command(command)
    if command == 'cycletp' then 
        TP_Index = TP_Index +1 
        if TP_Index > #TP_Set_Names then TP_Index = 1 end 
        send_command('@input /echo ----- Engaged Set changed to -----> '..TP_Set_Names[TP_Index])
        equip(sets.tp[TP_Set_Names[TP_Index]]) 
    elseif command == 'cyclewep' then 
		equip({sub = "empty"}) 
        WEP_Index = WEP_Index +1 
        if WEP_Index > #WEP_Set_Names then WEP_Index = 1 end 
        send_command('@input /echo ----- Weapon Set changed to -----> '..WEP_Set_Names[WEP_Index])
        equip(sets.wep[WEP_Set_Names[WEP_Index]]) 
	elseif command == 'cyclebarelement' then 
        BARELE_Index = BARELE_Index +1
        if BARELE_Index > #BAR_ELE_Names then BARELE_Index = 1 end 
        send_command('@input /echo ----- BAR ELEMENT SWITCHED TO -----> '..BAR_ELE_Names[BARELE_Index])
	elseif command == 'castbarelement' then
		send_command('@input /ma "'..BAR_ELE_Names[BARELE_Index]..'" <me>')
	elseif command == 'cyclebarstatus' then 
        BARSTA_Index = BARSTA_Index +1
        if BARSTA_Index > #BAR_STA_Names then BARSTA_Index = 1 end 
        send_command('@input /echo ----- BAR STATUS SWITCHED TO -----> '..BAR_STA_Names[BARSTA_Index])
	elseif command == 'castbarstatus' then
		send_command('@input /ma "'..BAR_STA_Names[BARSTA_Index]..'" <me>')
    end
end


--------------------------------------------
---- (Must stay at the absolute bottom) ----
--------------------------------------------

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
        windower.add_to_chat(121, '--- Gearswap cleanup successful! ---')
    end
end 
