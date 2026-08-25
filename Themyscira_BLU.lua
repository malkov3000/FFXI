------------------------------------------------------------------
------------------------------------------------------------------
-- Themyscira_BLU ------------------------------------------------
----------------------------------------------------------d(^^d)--
------------------------------------------------------------------


---------------
-- Load -------
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

--no help on!
send_command('input /blockhelp on')

---------------------
------- SETS --------
---------------------

function get_sets()

-- Use "//gs export" in-game to export a file with your currently equiped gear!
-- Find the file in Windower>addons>GearSwap>data>export folder!
-- Copy the gear inside the {} and paste it into the correct set below!


----------------------- IDLE SETS ----------------------

	sets.idle = {} --Leave Empty!

	-- DT set here
	sets.idle.dt = {
    ammo="Staunch Tathlum",
    head="Hashishin Kavuk +3",
    body="Hashishin Mintan +3",
    hands="Hashi. Bazu. +3",
    legs="Hashishin Tayt +3",
    feet="Hashi. Basmak +2",
    neck="Elite Royal Collar",
    waist="Null Belt",
    left_ear="Alabaster Earring",
    right_ear="Etiolation Earring",
    left_ring="Murky Ring",
    right_ring="Shneddick Ring",
    back="Null Shawl",
}  

	-- Town set here
	sets.idle.town = sets.idle.dt
	
	
----------------------- WEAPON SETS --------------------

	WEP_Index = 1 
	sets.wep = {} 
	WSLIST = {}
	
	--
	--> Use "/console gs c togglewep" to cycle modes!
	--

	WEP_Set_Names = {"Tizona","Maxentius","Naegling","Bunzi"}
	
	sets.wep.Tizona = {    
	main="Tizona",
    sub="Thibron",
	}	
	WSLIST.Tizona = {"Expiacion","Chant du Cygne","Requiescat","Flat Blade"}

	
	sets.wep.Naegling = {    
	main="Naegling",
    sub="Thibron",
	}	
	WSLIST.Naegling = {"Savage Blade","Chant du Cygne","Sanguine Blade","Flat Blade"}
	
	sets.wep.Maxentius = {    
	main="Maxentius",
    sub="Thibron",
	}
	WSLIST.Maxentius = {"Black Halo","Realmrazer","Starlight","Brainshaker"}
	
	sets.wep.Bunzi = {    
	main="Bunzi's Rod",
    sub="Maxentius",
	}
	WSLIST.Bunzi = {"Judgment","Realmrazer","Starlight","Brainshaker"}
	
	
----------------------- TP SETS ------------------------

	TP_Index = 1 
	sets.tp = {} 
	
	--
	--> Use "/console gs c toggletp" to cycle modes!
	--

	TP_Set_Names = {"TP","DW0","DT","LEARN"}
	
	-- TP, DT, 0DW, LEARN
	
	sets.tp.TP = {
    ammo="Aurgelmir Orb",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Malignance Gloves",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck={ name="Mirage Stole +2", augments={'Path: A',}},
    waist="Kentarch Belt +1",
    left_ear="Crep. Earring",
    right_ear="Dedition Earring",
    left_ring="Murky Ring",
    right_ring="Epona's ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dual Wield"+10','Phys. dmg. taken-10%',}},
}

	sets.tp.DW0 = {
    ammo="Aurgelmir Orb",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Malignance Gloves",
    legs="Malignance Tights",
    feet="Malignance Boots",
    neck={ name="Mirage Stole +2", augments={'Path: A',}},
    waist="Kentarch Belt +1",
    left_ear="Crep. Earring",
    right_ear="Dedition Earring",
    left_ring="Murky Ring",
    right_ring="Ilabrat Ring",
    back="Null shawl",
}

	--Learning Blu spells
	sets.tp.LEARN = {
    ammo="Mavi Tathlum",
    head="Luhlaza Keffiyeh +4",
    body="Assim. Jubbah +4",
    hands="Assim. Bazu. +1",
    legs="Hashishin Tayt +3",
    feet="Luhlaza Charuqs +4",
    neck="Mirage Stole +2",
    waist="Null Belt",
    left_ear="Njordr Earring",
    right_ear={ name="Hashishin Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+10','Mag. Acc.+10',}},
    left_ring="murky ring",
    right_ring="Stikini Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dual Wield"+10','Phys. dmg. taken-10%',}},
}

	sets.tp.DT = sets.idle.dt


----------------------- WS SETS ------------------------
	
	sets.ws = {} --Leave Empty!

	-- WS set here
	sets.ws.standard = {
    ammo="Oshasha's Treatise",
    head="Hashishin Kavuk +3",
    body="Assim. Jubbah +4",
    hands="Jhakri Cuffs +2",
    legs="Luhlaza Shalwar +4",
    feet="Nyame sollerets",
    neck="Mirage Stole +2",
    waist="Sailfi Belt +1",
    left_ear="Ishvara Earring",
    right_ear="Moonshade Earring",
    left_ring="Epaminondas's Ring",
    right_ring="Cornelia's ring",
    back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
}   

	sets.ws.mab = {
    ammo="Ghastly Tathlum +1",
    head="Hashishin Kavuk +3",
    body="Assim. Jubbah +4",
    hands="Jhakri Cuffs +2",
    legs="Luh. Shalwar +4",
    feet="Nyame sollerets",
    neck="Sibyl Scarf",
    waist="Eschan Stone",
    left_ear="Hecate's Earring",
    right_ear="Friomisi Earring",
    left_ring="Epaminondas's Ring",
    right_ring="Cornelia's Ring",
    back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
} 
	
	sets.ws['Chant du Cygne'] = {
    ammo="Coiste Bodhar",
    head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    body="Abnoba Kaftan",
    hands={ name="Adhemar Wrist. +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    legs="Gleti's Breeches",
    feet="Thereoid Greaves",
    neck={ name="Mirage Stole +2", augments={'Path: A',}},
    waist="Light Belt",
    left_ear="Odr Earring",
    right_ear={ name="Hashishin Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+10','Mag. Acc.+10',}},
    left_ring="Ilabrat Ring",
    right_ring="Epona's Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Crit.hit rate+10',}},
}

	sets.ws['Sanguine Blade'] = sets.ws.mab

	sets.ws['Seraph Blade'] = sets.ws.mab
	
	sets.ws['Requiescat'] = sets.ws.standard


------------------- JOB ABILITY SETS -------------------

	sets.ja = {} 

	--Uses: Windower>res>job_abilities
--	sets.ja['CorsairRoll'] = {}
--	sets.ja['CorsairShot'] = {}
--	sets.ja['Waltz'] = {}
--	sets.ja['Jig'] = {}
--	sets.ja['Step'] = {}
--	sets.ja['BloodPactRage'] = {}
--	sets.ja['BloodPactWard'] = {}
--	sets.ja['PetCommand'] = {}

	sets.ja['Diffusion'] = {
	feet="Luhlaza Charuqs +4",
}

	sets.ja['Provoke'] = {    
	ammo="Per. Lucky Egg",
    head="Wh. Rarab Cap +1",
    right_ring="Hoxne Ring",
}
	
	sets.ja['Jump'] = {    
	ammo="Per. Lucky Egg",
    head="Wh. Rarab Cap +1",
    right_ring="Hoxne Ring",
}
	
	
--------------------- FASTCAST SETS --------------------

	sets.fc = {} 

	-- FC set here
	sets.fc.standard = {
    ammo="Impatiens",
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body="Hashishin Mintan +3",
    hands={ name="Taeon Gloves", augments={'"Fast Cast"+5',}},
    legs="Aya. Cosciales +2",
    feet={ name="Carmine Greaves +1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}},
    neck="Voltsurge Torque",
    waist="Witful Belt",
    left_ear="Loquac. Earring",
    right_ear="Etiolation Earring",
    left_ring="Lebeche Ring",
    right_ring="Naji's Loop",
    back="Fi Follet Cape +1",
}
	
	--Uses: Windower>res>spells AND Windower>res>skills
--	sets.fc['Blue Magic'] = {}
--	sets.fc['Divine Magic'] = {}
--	sets.fc['Healing Magic'] = {}
--	sets.fc['Enhancing Magic'] = {}
--	sets.fc['Enfeebling Magic'] = {}
--	sets.fc['Elemental Magic'] = {}
--	sets.fc['Dark Magic'] = {}
--	sets.fc['Summoning Magic'] = {}
--	sets.fc['Ninjutsu'] = {}


--------------------- MAGIC SETS -----------------------

	sets.ma = {} 
	
	--Uses: Windower>res>spells AND Windower>res>skills
--	sets.ma['Divine Magic'] = {}
--	sets.ma['Healing Magic'] = {}
--	sets.ma['Enhancing Magic'] = {}
--	sets.ma['Enfeebling Magic'] = {}
--	sets.ma['Elemental Magic'] = {}
--	sets.ma['Dark Magic'] = {}
--	sets.ma['Summoning Magic'] = {}
--	sets.ma['Ninjutsu'] = {}

	sets.ma['White Wind'] = {
    ammo="Ombre Tathlum +1",
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Hashi. Bazu. +3",
    legs="Nyame Flanchard",
    feet={ name="Carmine Greaves +1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}},
    neck="Unmoving Collar +1",
    waist="Plat. Mog. Belt",
    left_ear="Alabaster Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Lebeche Ring",
    right_ring="Menelaus's ring",
    back="Solemnity Cape",
}  

	sets.ma['Embalming Earth'] = {
    ammo="Ghastly Tathlum +1",
    head="Hashishin Kavuk +3",
    body="Hashishin Mintan +3",
    hands="Hashi. Bazu. +3",
    legs="Luh. Shalwar +4",
    feet="Hashi. Basmak +2",
    neck="Quanpur Necklace",
    waist="Eschan Stone",
    left_ear="Hecate's Earring",
    right_ear="Friomisi Earring",
    left_ring="Mephitas's Ring +1",
    right_ring="Metamor. Ring +1",
    back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Spell interruption rate down-10%',}},
}


------------------- BLUE MAGIC SETS --------------------

	sets.blu = {} --Leave Empty!
    
	--Cure Potency / Spell Int Rate / HP
	sets.blu.cure = {
    ammo="Ombre Tathlum +1",
    head="Hashishin Kavuk +3",
    body="Hashishin Mintan +3",
    hands="Hashi. Bazu. +3",
    legs="Hashishin Tayt +3",
    feet={ name="Carmine Greaves +1", augments={'HP+80','MP+80','Phys. dmg. taken -4',}},
    neck="Elite Royal Collar",
    waist="Plat. Mog. Belt",
    left_ear="Alabaster Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Lebeche Ring",
    right_ring="Menelaus's ring",
    back="Solemnity Cape",
}	
	
	--Accuracy / Str+Dex+Vit	
	sets.blu.phy = {
    ammo="Aurgelmir Orb",
    head="Hashishin Kavuk +3",
    body="Hashishin Mintan +3",
    hands="Hashi. Bazu. +3",
    legs="Hashishin Tayt +3",
    feet="Hashi. Basmak +2",
    neck={ name="Mirage Stole +2", augments={'Path: A',}},
    waist="Sailfi Belt +1",
    left_ear="Alabaster Earring",
    right_ear={ name="Hashishin Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+10','Mag. Acc.+10',}},
    left_ring="Ilabrat Ring",
    right_ring="Rajas Ring",
    back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
}
	
	--Magic Attack Bonus / Magic Accuracy
	sets.blu.mab = {
    ammo="Ghastly Tathlum +1",
    head="Hashishin Kavuk +3",
    body="Hashishin Mintan +3",
    hands="Hashi. Bazu. +3",
    legs="Luh. Shalwar +4",
    feet="Hashi. Basmak +2",
    neck="Sibyl Scarf",
    waist="Eschan Stone",
    left_ear="Hecate's Earring",
    right_ear="Friomisi Earring",
    left_ring="Mephitas's Ring +1",
    right_ring="Metamor. Ring +1",
    back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Spell interruption rate down-10%',}},
}

	--Blue Skill / Magic Accuracy 	
	sets.blu.macc = {
    ammo="Ombre Tathlum +1",
    head="Assim. Keffiyeh +4",
    body="Assim. Jubbah +4",
    hands="Hashi. Bazu. +3",
    legs="Hashishin Tayt +3",
    feet="Luhlaza Ch. +4",
    neck={ name="Mirage Stole +2", augments={'Path: A',}},
    waist="Null Belt",
    left_ear="Alabaster Earring",
    right_ear={ name="Hashishin Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+10','Mag. Acc.+10',}},
    left_ring="Murky Ring",
    right_ring="Stikini ring",
    back="Aurist's Cape +1",
}

	--Blue Skill / Spell Int Rate	
	sets.blu.skill = {
    ammo="Ombre Tathlum +1",
    head="Assim. Keffiyeh +4",
    body="Assim. Jubbah +4",
    hands="Hashi. Bazu. +3",
    legs="Hashishin Tayt +3",
    feet="Luhlaza Ch. +4",
    neck={ name="Mirage Stole +2", augments={'Path: A',}},
    waist="Sanctuary Obi",
    left_ear="Njordr Earring",
    right_ear={ name="Hashishin Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+10','Mag. Acc.+10',}},
    left_ring="Murky Ring",
    right_ring="Stikini Ring",
    back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Spell interruption rate down-10%',}},
}
	
	--inturruption rate for buffs no skill
	sets.blu.rupt = {
    ammo="Staunch Tathlum",
    head="Luhlaza Keffiyeh +4",
    body="Assim. Jubbah +4",
    hands="Hashi. Bazu. +3",
    legs={ name="Carmine Cuisses +1", augments={'HP+80','STR+12','INT+12',}},
    feet="Luhlaza Ch. +4",
    neck={ name="Mirage Stole +2", augments={'Path: A',}},
    waist="Sanctuary Obi",
    left_ear="Njordr Earring",
    right_ear={ name="Hashishin Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+10','Mag. Acc.+10',}},
    left_ring="Murky Ring",
    right_ring="Stikini Ring",
    back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Spell interruption rate down-10%',}},
}

	--brrrrreath
	sets.blu.bre = {
    ammo="Ghastly Tathlum +1",
    head="Luhlaza Keffiyeh +4",
    body="Hashishin Mintan +3",
    hands="Hashi. Bazu. +3",
    legs="Luh. Shalwar +4",
    feet="Hashi. Basmak +2",
    neck="Sibyl Scarf",
    waist="Eschan Stone",
    left_ear="Hecate's Earring",
    right_ear="Friomisi Earring",
    left_ring="Mephitas's Ring +1",
    right_ring="Metamor. Ring +1",
    back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Spell interruption rate down-10%',}},
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

-- Blue Magic Midcast uses spell lists at bottom of file!
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
