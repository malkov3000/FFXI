------------------------------------------------------------------
------------------------------------------------------------------
-- Themyscira_PLD ------------------------------------------------
----------------------------------------------------------d(^^d)--
------------------------------------------------------------------


---------------
---Load Libs---
---------------

include('organizer-lib')



------------------------------------LOCKSTYLE------------------------------------------
local lockstyle = 2 -- Uses the in-game gearsets! Set # to desired lockstyle look!
send_command('wait 4; input /lockstyleset ' .. lockstyle)

function sub_job_change(new, old)
    send_command('wait 2; input /lockstyleset ' .. lockstyle)
end

------------------------------------MACRO BOOK-----------------------------------------
send_command('input /macro book 2') -- Update # to desired starting macro book!
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

	-- Town set here
	sets.idle.town = {
    ammo="Staunch Tathlum",
    head="Chev. Armet +3",
    body="Sakpata's Plate",
    hands="Chev. Gauntlets +2", 
    legs={ name="Chev. Cuisses +3", priority = 141},
    feet={ name="Rev. Leggings +4", priority = 127},
    neck={ name="Unmoving Collar +1", priority = 200},
    waist="Null Belt",
    left_ear={ name="Alabaster Earring", priority = 100},
    right_ear={ name="Etiolation Earring", priority = 50},
    right_ring="Shneddick Ring",
    left_ring={ name="Gelatinous Ring +1", priority = 100},
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Occ. inc. resist. to stat. ailments+10',}},
}

	-- DT set here
	sets.idle.dt = sets.idle.town



----------------------- ENMITY SETS --------------------

	sets.hate = {} --Leave Empty!
	
	-- Enmity +++
	sets.hate.high = {
    ammo="Staunch Tathlum",
    head="Rev. Coronet +3",
    body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    legs="Rev. Breeches +3",
    feet="Chev. Sabatons +2",
    neck="Unmoving Collar +1",
    waist={ name="Plat. Mog. Belt", priority = 1000},
    left_ear="Alabaster Earring",
    right_ear="Etiolation Earring",
    right_ring="Apeile Ring +1",
    left_ring="Gelatinous Ring +1",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Occ. inc. resist. to stat. ailments+10',}},
}
	
	-- Enmity ---
	--sets.hate.low = {}
	
	

----------------------- WEAPON SETS --------------------

	WEP_Index = 1 --Don't Change!
	sets.wep = {} --Leave Empty!

	-- We can have multiple different WEAPON sets!
	--
	--> Use "/console gs c togglewep" to cycle modes!
	--
	-- New modes can be added here!
	-- Make sure to also create a WEP set for it below!
	WEP_Set_Names = {"PDT","MDT","WS","STUN"}
	
	-- TP sets go below!
	
	--TP BONUS
	sets.wep.MDT = {
    main="Malignance Sword",
    sub="Aegis",
}	

	sets.wep.STUN = {
    main="Kaja Lance",
    sub="Wizzan grip",
}	

	sets.wep.PDT = {
    main="Malignance Sword",
    sub="Duban",
}	

	sets.wep.WS = {
    main="Naegling",
    sub="Blurred Shield +1",
}	
	

	--SKILL+
--	sets.wep.SKILL = {}

	--ACCURACY
--	sets.wep.ACC = {}


	
----------------------- TP SETS ------------------------

	TP_Index = 1 --Don't Change!
	sets.tp = {} --Leave Empty!

	-- We can have multiple different TP sets!
	--
	--> Use "/console gs c toggletp" to cycle modes!
	--
	-- New modes can be added here!
	-- Make sure to also create a TP set for it below!
	TP_Set_Names = {"TP"}
	
	-- TP sets go below!
	
	--Damage Taken Reduction
	sets.tp.TP = {
    ammo="Coiste Bodhar",
    head="Chev. Armet +3",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets", 
    legs="Chev. Cuisses +3", 
    feet="Rev. Leggings +4", 
    neck="Null loop",
    waist="Null Belt",
    left_ear="Alabaster Earring",
    right_ear="Crep. Earring",
    right_ring="Chirich Ring",
    left_ring="Gelatinous Ring +1",
    back="Null Shawl",
}


	



----------------------- WS SETS ------------------------
	
	sets.ws = {} --Leave Empty!

	-- WS set here
	sets.ws.standard = {   
	ammo="Oshasha's Treatise",
    head="Sakpata's Helm",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Sakpata's Cuisses",
    feet="Sulev. Leggings +2",
    neck="Rep. Plat. Medal",
    waist="Sailfi Belt +1",
    left_ear="Moonshade Earring",
    right_ear="Ishvara Earring",
    right_ring="Epaminondas's Ring",
    left_ring="Cornelia's Ring",
    back="Alabaster mantle",
	}  


	
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


	sets.ja['Provoke'] = sets.hate.high
	sets.ja['Majesty'] = sets.hate.high
	
	sets.ja['Sentinel'] = {
    ammo="Staunch Tathlum",
    head="Rev. Coronet +3",
    body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    legs="Rev. Breeches +3",
    feet="Cab. Leggings +2",
    neck="Unmoving Collar +1",
    waist={ name="Plat. Mog. Belt", priority = 1000},
    left_ear="Alabaster Earring",
    right_ear="Etiolation Earring",
    right_ring="Apeile Ring +1",
    left_ring="Gelatinous Ring +1",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Occ. inc. resist. to stat. ailments+10',}},
}
	
	sets.ja['Shield Bash'] = {
    ammo="Staunch Tathlum",
    head="Rev. Coronet +3",
    body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    hands="Cab. Gauntlets +2",
    legs="Rev. Breeches +3",
    feet="Chev. Sabatons +2",
    neck="Unmoving Collar +1",
    waist={ name="Plat. Mog. Belt", priority = 1000},
    left_ear="Alabaster Earring",
    right_ear="Etiolation Earring",
    right_ring="Apeile Ring +1",
    left_ring="Gelatinous Ring +1",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Occ. inc. resist. to stat. ailments+10',}},
}

	sets.ja['Rampart'] = sets.hate.high
	sets.ja['Fealty'] = sets.hate.high
	sets.ja['Palisade'] = sets.hate.high
	sets.ja['Invincible'] = sets.hate.high
	sets.ja['Cover'] = sets.hate.high
	



--------------------- FASTCAST SETS --------------------

	sets.fc = {} --Leave Empty!

	-- FC set here
	sets.fc.standard = {
    ammo="Impatiens",
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body="Rev. Surcoat +3",
    hands="Rev. Gauntlets +3",
    legs="Enif Cosciales",
    feet="Chev. Sabatons +2",
    neck="Voltsurge torque",
    waist={ name="Plat. Mog. Belt", priority = 1000},
    left_ear="Alabaster Earring",
    right_ear="Loquac. Earring",
    right_ring="Naji's Loop",
    left_ring="Lebeche ring",
    back={ name="Rudianos's Mantle", augments={'"Fast Cast"+10',}},
}
	
	--Uses: Windower>res>spells AND Windower>res>skills
--	sets.fc['Blue Magic'] = {}
--	sets.fc['Divine Magic'] = {}
	sets.fc['Healing Magic'] = {
    ammo="Impatiens",
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body="Rev. Surcoat +3",
    hands="Chev. Gauntlets +2",
    legs="Enif Cosciales",
    feet="Chev. Sabatons +2",
    neck="Voltsurge torque",
    waist={ name="Plat. Mog. Belt", priority = 1000},
    left_ear="Nourish. Earring +1",
    right_ear="Loquac. Earring",
    right_ring="Naji's Loop",
    left_ring="Lebeche ring",
    back={ name="Rudianos's Mantle", augments={'"Fast Cast"+10',}},
}
--	sets.fc['Enhancing Magic'] = {}
--	sets.fc['Enfeebling Magic'] = {}
--	sets.fc['Elemental Magic'] = {}
--	sets.fc['Dark Magic'] = {}
--	sets.fc['Summoning Magic'] = {}
--	sets.fc['Ninjutsu'] = {}



--------------------- MAGIC SETS -----------------------

	sets.ma = {} --Leave Empty!
	
	--Uses: Windower>res>spells AND Windower>res>skills
	sets.ma['Divine Magic'] = {
    ammo="Staunch Tathlum",
    head={ name="Souv. Schaller +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    hands="Cab. Gauntlets +2",
    legs={ name="Carmine Cuisses +1", augments={'HP+80','STR+12','INT+12',}},
    feet={ name="Odyssean Greaves", augments={'Mag. Acc.+8','Phys. dmg. taken -4%','DEX+10','"Mag.Atk.Bns."+11',}},
    neck="Moonbeam Necklace",
    waist={ name="Plat. Mog. Belt", priority = 1000},
    left_ear="Knightly Earring",
    right_ear={ name="Chev. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+14','Mag. Acc.+14','Damage taken-5%',}},
    right_ring="Murky Ring",
    left_ring="Apeile Ring +1",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','"Cure" potency +10%','Spell interruption rate down-10%',}},
}

	sets.ma['Healing Magic'] = {
    ammo="Staunch Tathlum",
    head={ name="Souv. Schaller +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    hands="Macabre Gaunt. +1",
    legs={ name="Carmine Cuisses +1", augments={'HP+80','STR+12','INT+12',}},
    feet="Odyssean Greaves",
    neck="Moonbeam Necklace",
    waist={ name="Plat. Mog. Belt", priority = 1000},
    left_ear="Knightly Earring",
    right_ear={ name="Chev. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+14','Mag. Acc.+14','Damage taken-5%',}},
    right_ring="Murky Ring",
    left_ring="Gelatinous Ring +1",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','"Cure" potency +10%','Spell interruption rate down-10%',}},
}

	sets.ma['Enhancing Magic'] = {
    ammo="Staunch Tathlum",
    head={ name="Souv. Schaller +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    body="Chev. Cuirass +2",
    hands="Chev. Gauntlets +2",
    legs={ name="Carmine Cuisses +1", augments={'HP+80','STR+12','INT+12',}},
    feet={ name="Odyssean Greaves", augments={'Mag. Acc.+8','Phys. dmg. taken -4%','DEX+10','"Mag.Atk.Bns."+11',}},
    neck="Moonbeam Necklace",
    waist={ name="Plat. Mog. Belt", priority = 1000},
    left_ear="Alabaster Earring",
    right_ear="Mimir Earring",
    right_ring="Murky Ring",
    left_ring="Gelatinous Ring +1",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','"Cure" potency +10%','Spell interruption rate down-10%',}},
}
--	sets.ma['Enfeebling Magic'] = {}
--	sets.ma['Elemental Magic'] = {}
--	sets.ma['Dark Magic'] = {}
--	sets.ma['Summoning Magic'] = {}
--	sets.ma['Ninjutsu'] = {}
	sets.ma['Blue Magic'] = {
    ammo="Staunch Tathlum",
    head={ name="Souv. Schaller +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    body="Chev. Cuirass +2",
    hands="Chev. Gauntlets +2",
    legs={ name="Carmine Cuisses +1", augments={'HP+80','STR+12','INT+12',}},
    feet={ name="Odyssean Greaves", augments={'Mag. Acc.+8','Phys. dmg. taken -4%','DEX+10','"Mag.Atk.Bns."+11',}},
    neck="Moonbeam Necklace",
    waist={ name="Plat. Mog. Belt", priority = 1000},
    left_ear="Alabaster Earring",
    right_ear={ name="Chev. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+14','Mag. Acc.+14','Damage taken-5%',}},
    right_ring="Murky Ring",
    left_ring="Gelatinous Ring +1",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','"Cure" potency +10%','Spell interruption rate down-10%',}},
}

	
	sets.ma['Phalanx'] = {
    main="Sakpata's sword",
    sub="Priwen",
    ammo="Staunch Tathlum",
    head={ name="Souv. Schaller +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    body="Chev. Cuirass +2",
    hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    legs="Sakpata's Cuisses",
    feet={ name="Odyssean Greaves", augments={'Mag. Acc.+8','Phys. dmg. taken -4%','DEX+10','"Mag.Atk.Bns."+11',}},
    neck="Moonbeam Necklace",
    waist="Audumbla Sash",
    left_ear="Knightly Earring",
    right_ear="Mimir Earring",
    right_ring="Murky Ring",
    left_ring="Stikini ring",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','"Cure" potency +10%','Spell interruption rate down-10%',}},
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
	if canceled then 
		return 
	end
-- Magic
	if spell.action_type == 'Magic' then 
		equip(sets.fc.standard) 
	end
	if sets.fc[spell.skill] then 
		equip(sets.fc[spell.skill]) 
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
-- Cancel
	if canceled then 
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
--- AFTERCAST
---

function aftercast(spell)
-- Cancel
	if canceled then 
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
--- Status and Zone change
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
end
-- Zone changes
windower.register_event('zone change', function(new_zone_id, old_zone_id)
	if player.status == 'Engaged' then 
        equip(sets.tp[TP_Set_Names[TP_Index]]) 
	elseif areas.towns:contains(world.area) then 
		equip(sets.idle.town) 
	else
		equip(sets.idle.dt) 
	end
end)



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

