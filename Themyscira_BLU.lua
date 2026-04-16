------------------------------------------------------------------
------------------------------------------------------------------
-- Themyscira_BLU ------------------------------------------------
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
    hands="Hashi. Bazu. +2",
    legs="Hashishin Tayt +2",
    feet="Hashi. Basmak +2",
    neck={ name="Mirage Stole +1", augments={'Path: A',}},
    waist="Flume Belt",
    left_ear="Ethereal Earring",
    right_ear="Etiolation Earring",
    left_ring="murky ring",
    right_ring="Shneddick Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}  

	-- Town set here
	--sets.idle.town = sets.idle.dt



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
	WEP_Set_Names = {"TPBONUS","SKILL","ACC","CLUB"}
	
	-- TP sets go below!
	
	--TP BONUS OFF HAND
	sets.wep.TPBONUS = {    
	main="Naegling",
    sub="Machaera +3",
	}	

	--SKILL+ OFF HAND
	sets.wep.SKILL = {    
	main="Naegling",
    sub="Iris",
	}

	--ACCURACY OFF HAND
	sets.wep.ACC = {    
	main="Naegling",
    sub="Hep. Sapara +1",
	}
	
	sets.wep.CLUB = {    
	main="Kaja Rod",
    sub="Hep. Sapara +1",
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
	--TP_Set_Names = {"DT_MAX","DT_MID","DT_LOW","LEARN","TP_LOW","TP_MID","TP_MAX"}
	TP_Set_Names = {"TP","HYBRID","DT","LEARN"}
	
	-- TP sets go below!
	
	--
	sets.tp.TP = {
    ammo="Aurgelmir Orb",
    head="Hashishin Kavuk +3",
    body="Hashishin Mintan +3",
    hands={ name="Adhemar Wrist. +1", augments={'Accuracy+20','Attack+20','"Subtle Blow"+8',}},
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Carmine Greaves +1",
    neck={ name="Mirage Stole +1", augments={'Path: A',}},
    waist="Sailfi Belt +1",
    left_ear="Suppanomimi",
    right_ear={ name="Hashishin Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+10','Mag. Acc.+10',}},
    left_ring="murky ring",
    right_ring="Epona's Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}

	--
	sets.tp.HYBRID = {
    ammo="Aurgelmir Orb",
    head="Hashishin Kavuk +3",
    body="Hashishin Mintan +3",
    hands="Hashi. Bazu. +2",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Carmine Greaves +1",
    neck={ name="Mirage Stole +1", augments={'Path: A',}},
    waist="Sailfi Belt +1",
    left_ear="Suppanomimi",
    right_ear={ name="Hashishin Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+10','Mag. Acc.+10',}},
    left_ring="murky ring",
    right_ring="Epona's Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}
	
	--
	sets.tp.DT = {
    ammo="Aurgelmir Orb",
    head="Hashishin Kavuk +3",
    body="Hashishin Mintan +3",
    hands="Hashi. Bazu. +2",
    legs="Hashishin Tayt +2",
    feet="Hashi. Basmak +2",
    neck={ name="Mirage Stole +1", augments={'Path: A',}},
    waist="Sailfi Belt +1",
    left_ear="Suppanomimi",
    right_ear={ name="Hashishin Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+10','Mag. Acc.+10',}},
    left_ring="murky ring",
    right_ring="Epona's Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}

	--Learning Blu spells
	sets.tp.LEARN = {
    ammo="Mavi Tathlum",
    head="Hashishin Kavuk +3",
    body="Assim. Jubbah +3",
    hands="Assim. Bazu. +1",
    legs="Hashishin Tayt +2",
    feet="Luhlaza Charuqs +2",
    neck={ name="Mirage Stole +1", augments={'Path: A',}},
    waist="Flume Belt",
    left_ear="Njordr Earring",
    right_ear={ name="Hashishin Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+10','Mag. Acc.+10',}},
    left_ring="murky ring",
    right_ring="Stikini Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}
	

	--Treasure Hunter
--	sets.tp.TH = {}		

	-- Town set here
	sets.idle.town = sets.tp.TP


----------------------- WS SETS ------------------------
	
	sets.ws = {} --Leave Empty!

	-- WS set here
	sets.ws.standard = {
    ammo="Aurgelmir Orb",
    head="Hashishin Kavuk +3",
    body="Assim. Jubbah +3",
    hands="Jhakri Cuffs +2",
    legs="Luhlaza Shalwar +3",
    feet={ name="Herculean Boots", augments={'Mag. Acc.+10','DEX+7','Weapon skill damage +4%','Accuracy+12 Attack+12',}},
    neck={ name="Mirage Stole +1", augments={'Path: A',}},
    waist="Sailfi Belt +1",
    left_ear="Ishvara Earring",
    right_ear={ name="Hashishin Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+10','Mag. Acc.+10',}},
    left_ring="Rufescent Ring",
    right_ring="Rajas Ring",
    back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
}  

	-- WS specific sets! Replace the x with the WS name!
	-- Like this--->> sets.ws['Savage Blade'] = {}
	
	sets.ws['Savage Blade'] = {
    ammo="Aurgelmir Orb",
    head="Hashishin Kavuk +3",
    body="Assim. Jubbah +3",
    hands="Jhakri Cuffs +2",
    legs="Luhlaza Shalwar +3",
    feet={ name="Herculean Boots", augments={'Mag. Acc.+10','DEX+7','Weapon skill damage +4%','Accuracy+12 Attack+12',}},
    neck={ name="Mirage Stole +1", augments={'Path: A',}},
    waist="Sailfi Belt +1",
    left_ear="Ishvara Earring",
    right_ear="Moonshade Earring",
    left_ring="Rufescent Ring",
    right_ring="Rajas Ring",
    back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
}  
	
	sets.ws['Chant du Cygne'] = {
    ammo="Aurgelmir Orb",
    head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    body={ name="Adhemar Jacket +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
    hands={ name="Adhemar Wrist. +1", augments={'Accuracy+20','Attack+20','"Subtle Blow"+8',}},
    legs="Luhlaza Shalwar +3",
    feet={ name="Herculean Boots", augments={'Crit.hit rate+2','"Dbl.Atk."+2','Accuracy+15 Attack+15',}},
    neck="Light Gorget",
    waist="Life Belt",
    left_ear="Odr Earring",
    right_ear="Brutal Earring",
    left_ring="Ilabrat Ring",
    right_ring="Epona's Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}  



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

	-- Single Ability examples below!
	-- Replace the x with desired Ability name!

	sets.ja['Diffusion'] = {
	feet="Luhlaza Charuqs +2",
}

	-- We can set an Ability to a set we already created!
	-- See example below!

--	sets.ja['Provoke'] = sets.hate.high
	
	
	
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
    ammo="Impatiens",
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body="Hashishin Mintan +3",
    hands="Jhakri Cuffs +2",
    legs="Aya. Cosciales +2",
    feet="Carmine Greaves +1",
    neck={ name="Mirage Stole +1", augments={'Path: A',}},
    waist="Witful Belt",
    left_ear="Loquac. Earring",
    right_ear="Etiolation Earring",
    left_ring="murky ring",
    right_ring="Jhakri Ring",
    back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}},
}  
	
	--Uses: Windower>res>spells AND Windower>res>skills
	sets.fc['Blue Magic'] = {
    ammo="Impatiens",
    head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
    body="Hashishin Mintan +3",
    hands="Jhakri Cuffs +2",
    legs="Aya. Cosciales +2",
    feet="Carmine Greaves +1",
    neck={ name="Mirage Stole +1", augments={'Path: A',}},
    waist="Witful Belt",
    left_ear="Loquac. Earring",
    right_ear="Etiolation Earring",
    left_ring="murky ring",
    right_ring="Jhakri Ring",
    back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}},
}
--	sets.fc['Divine Magic'] = {}
--	sets.fc['Healing Magic'] = {}
--	sets.fc['Enhancing Magic'] = {}
--	sets.fc['Enfeebling Magic'] = {}
--	sets.fc['Elemental Magic'] = {}
--	sets.fc['Dark Magic'] = {}
--	sets.fc['Summoning Magic'] = {}
--	sets.fc['Ninjutsu'] = {}



--------------------- MAGIC SETS -----------------------

	sets.ma = {} --Leave Empty!
	
	--Uses: Windower>res>spells AND Windower>res>skills
--	sets.ma['Divine Magic'] = {}
--	sets.ma['Healing Magic'] = {}
--	sets.ma['Enhancing Magic'] = {}
--	sets.ma['Enfeebling Magic'] = {}
--	sets.ma['Elemental Magic'] = {}
--	sets.ma['Dark Magic'] = {}
--	sets.ma['Summoning Magic'] = {}
--	sets.ma['Ninjutsu'] = {}

	-- Single Spell examples below!
	-- Replace the x with desired Spell name!

	sets.ma['x'] = {}  

	-- We can set a Spell to a set we already created!
	-- See example below!
	
--	sets.ma['Flash'] = sets.hate.high



------------------- BLUE MAGIC SETS --------------------

	sets.blu = {} --Leave Empty!
    
	--Accuracy / Str+Dex+Vit	
	sets.blu.str = {
    ammo="Aurgelmir Orb",
    head="Hashishin Kavuk +3",
    body="Assim. Jubbah +3",
    hands="Hashi. Bazu. +2",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Carmine Greaves +1",
    neck={ name="Mirage Stole +1", augments={'Path: A',}},
    waist="Sailfi Belt +1",
    left_ear="Mache Earring +1",
    right_ear={ name="Hashishin Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+10','Mag. Acc.+10',}},
    left_ring="murky ring",
    right_ring="Rajas Ring",
    back={ name="Rosmerta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
}
	
	--Magic Attack Bonus / Magic Accuracy
	sets.blu.mab = {
    ammo="Ghastly Tathlum +1",
    head="Hashishin Kavuk +3",
    body="Hashishin Mintan +3",
    hands="Hashi. Bazu. +2",
    legs="Luhlaza Shalwar +3",
    feet="Hashi. Basmak +2",
    neck={ name="Mirage Stole +1", augments={'Path: A',}},
    waist="Belisama's Rope +1",
    left_ear="Hecate's Earring",
    right_ear="Friomisi Earring",
    left_ring="Mephitas's Ring +1",
    right_ring="Metamor. Ring +1",
    back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}},
}

	--Blue Skill / Magic Accuracy / Spell Int Rate	
	sets.blu.skill = {
    ammo="Mavi Tathlum",
    head="Hashishin Kavuk +3",
    body="Assim. Jubbah +3",
    hands="Hashi. Bazu. +2",
    legs="Hashishin Tayt +2",
	feet="Luhlaza Charuqs +2",
    neck={ name="Mirage Stole +1", augments={'Path: A',}},
    waist="Sanctuary Obi",
    left_ear="Njordr Earring",
    right_ear={ name="Hashishin Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+10','Mag. Acc.+10',}},
    left_ring="murky ring",
    right_ring="Stikini Ring",
    back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}},
}
	
	--Cure Potency / Spell Int Rate / HP
	sets.blu.cure = {
    ammo="Staunch Tathlum",
    head="Hashishin Kavuk +3",
    body="Hashishin Mintan +3",
    hands="Hashi. Bazu. +2",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Carmine Greaves +1",
    neck={ name="Mirage Stole +1", augments={'Path: A',}},
    waist="Sanctuary Obi",
    left_ear="Meili Earring",
    right_ear="Etiolation Earring",
    left_ring="murky ring",
    right_ring="Stikini Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}	

	--inturruption rate for buffs
	sets.blu.rupt = {
    ammo="Staunch Tathlum",
    head="Hashishin Kavuk +3",
    body="Hashishin Mintan +3",
    hands="Hashi. Bazu. +2",
    legs="Hashishin Tayt +2",
    feet="Luhlaza Charuqs +2",
    neck={ name="Mirage Stole +1", augments={'Path: A',}},
    waist="Sanctuary Obi",
    left_ear="Njordr Earring",
    right_ear={ name="Hashishin Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+10','Mag. Acc.+10',}},
    left_ring="murky ring",
    right_ring="Stikini Ring",
    back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}


----------------------- PET SETS ----------------------

	sets.pet = {} --Leave Empty!
    
	--Pet Mid Action Physical	
	sets.pet.phy = {}

	--Pet Mid Action Magic
	sets.pet.mab = {}
	
	--Pet Specifc Ability
	--This is NOT the name of YOUR Job Abilities!!
	--It is the name of the PET's Spell/Ability!
	sets.pet['x'] = {}

	
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
	
-- Ranged Attack
	if spell.action_type == 'Ranged Attack' then --Ranged Attack?
		equip(sets.ra.preshot) --Yes!  Equip PRESHOT!
	end
	
end



---
--- MIDCAST
---

function midcast(spell)

-- Pet Midcast protection
	if pet_midaction() then
        return
    end

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

-- Ranged Attack
	if spell.action_type == 'Ranged Attack' then --Ranged Attack?
		equip(sets.ra.midshot) --Yes!  Equip MIDSHOT!
	end
	
-- Blue Magic Midcast uses spell lists at bottom of file!
	if PhysicalSpells:contains(spell.english) then
		equip(sets.blu.str)  
	elseif MagicalSpells:contains(spell.english) then
		equip(sets.blu.mab)
	elseif BlueMagic_Buffs:contains(spell.english) then
		equip(sets.idle.dt)
	elseif BlueMagic_Debuffs:contains(spell.english) then
		equip(sets.blu.skill)
	elseif BlueMagic_Healing:contains(spell.english) then
		equip(sets.blu.cure)
	elseif BlueMagic_Skill:contains(spell.english) then
		equip(sets.blu.skill)	
	end  
		
end



---
--- AFTERCAST
---

function aftercast(spell)

-- Pet Midcast protection
	if pet_midaction() then
        return
    end
	
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
        send_command('@input /echo ----- BAR ELEMENT SWITCHED TO -----> '..BAR_STA_Names[BARSTA_Index])
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



-------------------------------
-- Mappings for weaponskills --
-------------------------------

weaponskills = {}

-- Weaponskills that can be used at range
weaponskills.ranged = S{"Flaming Arrow", "Piercing Arrow", "Dulling Arrow", "Sidewinder", "Arching Arrow",
    "Empyreal Arrow", "Refulgent Arrow", "Apex Arrow", "Namas Arrow", "Jishnu's Radiance",
    "Hot Shot", "Split Shot", "Sniper Shot", "Slug Shot", "Heavy Shot", "Detonator", "Last Stand",
    "Coronach", "Trueflight", "Leaden Salute", "Wildfire",
    "Myrkr"}



-------------------------
--   PET Spells List   --
-------------------------

Physical_PET = S{"Example1","Example2","Volt Strike"}

Magical_PET = S{"Example1","Example2","Conflag Strike"}



-------------------------
--   BLU Spells List   --
-------------------------

PhysicalSpells = S {'Asuran Claws', 'Bilgestorm', 'Bludgeon', 'Body Slam', 'Feather Storm', 'Mandibular Bite',
                    'Queasyshroom', 'Power Attack', 'Ram Charge', 'Saurian Slide', 'Screwdriver', 'Sickle Slash',
                    'Smite of Rage', 'Spinal Cleave', 'Spiral Spin', 'Sweeping Gouge', 'Terror Touch', 'Battle Dance',
                    'Bloodrake', 'Death Scissors', 'Dimensional Death', 'Empty Thrash', 'Quadrastrike', 'Uppercut',
                    'Tourbillion', 'Thrashing Assault', 'Vertical Cleave', 'Whirl of Rage', 'Amorphic Spikes',
                    'Barbed Crescent', 'Claw Cyclone', 'Disseverment', 'Foot Kick', 'Frenetic Rip', 'Goblin Rush',
                    'Hysteric Barrage', 'Paralyzing Triad', 'Seedspray', 'Sinker Drill', 'Vanity Dive', 'Cannonball',
                    'Delta Thrust', 'Glutinous Dart', 'Grand Slam', 'Quad. Continuum', 'Sprout Smack',
                    'Benthic Typhoon', 'Helldive', 'Hydro Shot', 'Jet Stream', 'Pinecone Bomb', 'Wild Oats',
                    'Sweeping Gouge'}

MagicalSpells = S {'Acrid Stream', 'Anvil Lightning', 'Crashing Thunder', 'Charged Whisker', 'Droning Whirlwind',
                   'Firespit', 'Foul Waters', 'Gates of Hades', 'Leafstorm', 'Molting Plumage',
                   'Nectarous Deluge', 'Polar Roar', 'Regurgitation', 'Rending Deluge', 'Scouring Spate',
                   'Searing Tempest', 'Silent Storm', 'Spectral Floe', 'Subduction', 'Tem. Upheaval', 'Thermal Pulse',
                   'Thunderbolt', 'Uproot', 'Water Bomb', 'Atra. Libations', 'Blood Saber', 'Dark Orb', 'Death Ray',
                   'Eyes On Me', 'Blazing Bound', 'Evryone. Grudge', 'Palling Salvo', 'Tenebral Crush',
                   'Blinding Fulgor', 'Diffusion Ray', 'Ice Break', 'Magic Hammer', 'Rail Cannon', 'Retinal Glare',
                   'Embalming Earth', 'Entomb', 'Sandspin', 'Vapor Spray'}

BlueMagic_Buffs = S {'Barrier Tusk', 'Cocoon', 'Erratic Flutter', 'Harden Shell', 'Orcish Counterstance',
                     'Plasma Charge', 'Pyric Bulwark', 'Memento Mori', 'Nat. Meditation', 'Reactor Cool', 'Saline Coat',
                     'Feather Barrier', 'Refueling', 'Warm-Up', 'Zephyr Mantle', 'Reactor Cool', 'Plasma Charge',
                     'Amplification', 'Mighty Guard', 'Carcharian Verve', 'Magic Barrier'}
					 
BlueMagic_Debuffs = S {'Dream Flower', 'Sheep Song'}

BlueMagic_Healing = S {'Healing Breeze', 'Magic Fruit', 'Plenilune Embrace', 'Pollen', 'Restoral', 'Wild Carrot',
                       'White Wind'}

BlueMagic_Skill = S {'Diamondhide', 'Metallic Body', 'Magic Barrier', 'Occultation', 'Atra. Libations', 'MP Drainkiss',
                     'Digest', 'Blood Saber', 'Osmosis', 'Retinal Glare', 'Sudden Lunge'}


