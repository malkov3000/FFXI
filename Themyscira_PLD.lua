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
    head={ name="Chev. Armet +2", priority=135},
    body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    hands={ name="Chev. Gauntlets +2", priority=54},
    legs={ name="Chev. Cuisses +2", priority=117},
    feet={ name="Rev. Leggings +3", priority=82},
    neck={ name="Unmoving Collar +1", priority=140},
    waist="Flume Belt",
    left_ear={ name="Alabaster Earring", priority=100},
    right_ear={ name="Odnowa Earring +1", priority=110},
    left_ring="Shneddick Ring",
    right_ring={ name="Gelatinous Ring +1", priority=80},
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Damage taken-5%',}, priority=60},
}

	-- DT set here
	sets.idle.dt = sets.idle.town



----------------------- ENMITY SETS --------------------

	sets.hate = {} --Leave Empty!
	
	-- Enmity +++
	sets.hate.high = {
    ammo="Staunch Tathlum",
    head={ name="Rev. Coronet +3", priority=71},
    body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    hands={ name="Rev. Gauntlets +3", priority=113},
    legs={ name="Rev. Breeches +3", priority=163},
    feet={ name="Rev. Leggings +3", priority=82},
    neck={ name="Unmoving Collar +1", priority=140},
    waist="Flume Belt",
    left_ear={ name="Alabaster Earring", priority=100},
    right_ear={ name="Odnowa Earring +1", priority=110},
    left_ring="Apeile Ring",
    right_ring={ name="Gelatinous Ring +1", priority=80},
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Damage taken-5%',}, priority=60},
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
	WEP_Set_Names = {"TANK"}
	
	-- TP sets go below!
	
	--TP BONUS
	sets.wep.TANK = {
    main="Malignance Sword",
    sub="Priwen",
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
	TP_Set_Names = {"DT"}
	
	-- TP sets go below!
	
	--Damage Taken Reduction
	sets.tp.DT = sets.idle.town

	--Accuracy
--	sets.tp.ACC = {}

	--Multi-Hit, Store TP, Attack Speed
--	sets.tp.TP = {}

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

	-- sets.ja['x'] = {}

	-- We can set an Ability to a set we already created!
	-- See example below!

	sets.ja['Provoke'] = sets.hate.high
	sets.ja['Majesty'] = sets.hate.high
	sets.ja['Sentinal'] = sets.hate.high
	sets.ja['Rampart'] = sets.hate.high
	sets.ja['Palisade'] = sets.hate.high
	sets.ja['Invincible'] = sets.hate.high
	



--------------------- FASTCAST SETS --------------------

	sets.fc = {} --Leave Empty!

	-- FC set here
	sets.fc.standard = {
    ammo="Impatiens",
    head={ name="Carmine Mask +1", priority=38},
    body={ name="Rev. Surcoat +3", priority=254},
    hands={ name="Rev. Gauntlets +3", priority=113},
    legs={ name="Enif Cosciales", priority=40},
    feet={ name="Carmine Greaves +1", priority=95},
    neck={ name="Unmoving Collar +1", priority=140},
    waist={ name="Eschan Stone", priority=20},
    left_ear={ name="Alabaster Earring", priority=100},
    right_ear={ name="Odnowa Earring +1", priority=110},
    left_ring={ name="Griffon ring", priority=25},
    right_ring={ name="Gelatinous Ring +1", priority=80},
    back={ name="Rudianos's Mantle", augments={'"Fast Cast"+10',}},
} 
	
	--Uses: Windower>res>spells AND Windower>res>skills
--	sets.fc['Blue Magic'] = {}
--	sets.fc['Divine Magic'] = {}
	sets.fc['Healing Magic'] = {
    ammo="Impatiens",
    head={ name="Carmine Mask +1", priority=38},
    body={ name="Rev. Surcoat +3", priority=254},
    hands={ name="Rev. Gauntlets +3", priority=113},
    legs={ name="Enif Cosciales", priority=40},
    feet={ name="Carmine Greaves +1", priority=95},
    neck={ name="Unmoving Collar +1", priority=140},
    waist="Sailfi Belt +1",
    left_ear="Nourish. Earring +1",
    right_ear={ name="Odnowa Earring +1", priority=110},
    left_ring={ name="Griffon ring", priority=25},
    right_ring={ name="Gelatinous Ring +1", priority=80},
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
    ammo="Ombre Tathlum +1",
    head={ name="Rev. Coronet +3", priority=71},
    body={ name="Rev. Surcoat +3", priority=254},
    hands={ name="Rev. Gauntlets +3", priority=113},
    legs={ name="Rev. Breeches +3", priority=163},
    feet={ name="Rev. Leggings +3", priority=82},
    neck="Moonbeam Necklace",
    waist={ name="Eschan Stone", priority=20},
    left_ear={ name="Alabaster Earring", priority=100},
    right_ear={ name="Odnowa Earring +1", priority=110},
    left_ring="Murky Ring",
    right_ring="Stikini Ring",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Damage taken-5%',}, priority=60},
}
	sets.ma['Healing Magic'] = {
    ammo="Staunch Tathlum",
    head={ name="Rev. Coronet +3", priority=71 },
    body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
    hands={ name="Rev. Gauntlets +3", priority=113 },
    legs={ name="Rev. Breeches +3", priority=163 },
    feet={ name="Rev. Leggings +3", priority=82 },
    neck={ name="Unmoving Collar +1", priority=140 },
    waist="Sroda Belt",
    left_ear={ name="Alabaster Earring", priority=100 },
    right_ear={ name="Odnowa Earring +1", priority=110 },
    left_ring="Menelaus's Ring",
    right_ring={ name="Gelatinous Ring +1", priority=80 },
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Damage taken-5%',}, priority=60},
}
	sets.ma['Enhancing Magic'] = {
    ammo="Staunch Tathlum",
    head={ name="Rev. Coronet +3", priority=71},
    body={ name="Rev. Surcoat +3", priority=254},
    hands={ name="Rev. Gauntlets +3", priority=113},
    legs={ name="Carmine Cuisses +1", priority=50},
    feet={ name="Rev. Leggings +3", priority=82},
    neck="Moonbeam Necklace",
    waist="Audumbla sash",
    left_ear={ name="Alabaster Earring", priority=100},
    right_ear="Mimir Earring",
    left_ring="Murky Ring",
    right_ring="Stikini Ring",
    back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Enmity+10','Damage taken-5%',}, priority=60},
}
--	sets.ma['Enfeebling Magic'] = {}
--	sets.ma['Elemental Magic'] = {}
--	sets.ma['Dark Magic'] = {}
--	sets.ma['Summoning Magic'] = {}
--	sets.ma['Ninjutsu'] = {}
	sets.ma['Blue Magic'] = sets.ma['Divine Magic']

	-- Single Spell examples below!
	-- Replace the x with desired Spell name!

	--sets.ma['x'] = {}  

	-- We can set a Spell to a set we already created!
	-- See example below!
	
--	sets.ma['Flash'] = sets.hate.high


	
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

