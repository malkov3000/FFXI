------------------------------------------------------------------
------------------------------------------------------------------
--Remane file to your character's name + "_" + job abbreviation---
------------------------------------------------------------------
--Example: Themyscira_BLU.lua ------------------------------------
----------------------------------------------------------d(^^d)--
------------------------------------------------------------------



------------------------------------LOCKSTYLE------------------------------------------
local lockstyle = 3 -- Uses the in-game gearsets! Set # to desired lockstyle look!
send_command('wait 4; input /lockstyleset ' .. lockstyle)

function sub_job_change(new, old)
    send_command('wait 2; input /lockstyleset ' .. lockstyle)
end

------------------------------------MACRO BOOK-----------------------------------------
send_command('input /macro book 3') -- Update # to desired starting macro book!
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
	-- DT set is starting point for most other sets!
	sets.idle.dt = {
	head="Chass. Tricorne +3",
    body="Chasseur's Frac +2",
    hands="Malignance Gloves",
    legs="Chas. Culottes +2",
    feet="Malignance Boots",
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Alabaster Earring",
    right_ear="Dominance Earring",
    left_ring="Shneddick Ring",
    right_ring="Murky Ring",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+4','"Dbl.Atk."+10','Damage taken-5%',}},
}  

	-- Town set here
	sets.idle.town = {
    main={ name="Lanun Knife", augments={'Path: C',}},
    range={ name="Compensator", augments={'DMG:+8','AGI+8','Rng.Acc.+8',}},
    head="Lanun Tricorne +1",
    body="Councilor's Garb",
    hands="Chasseur's Gants +3",
    legs="Chas. Culottes +2",
    feet="Sprinter's Shoes",
    waist="Svelt. Gouriz +1",
    left_ring="Shneddick Ring",
    right_ring="Dim. Ring (Holla)",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+4','"Dbl.Atk."+10','Damage taken-5%',}},
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
	WEP_Set_Names = {"TPBONUS","RANGED","MAB","ROLL"}
	
	-- TP sets go below!
	
	--Naegling TP BONUS
	sets.wep.TPBONUS = {
    main="Naegling",
    sub="Gleti's Knife",
    range="Anarchy +2",
}	

	--RANGED ATTACKS
	sets.wep.RANGED = {
    main={ name="Lanun Knife", augments={'Path: C',}},
    sub="Nusku Shield",
    range="Fomalhaut",
}

	--MAGIC ATTACK BONUS
	sets.wep.MAB = {
    main="Tauret",
	sub="Daduchos Saber",
    range="Fomalhaut",
}

	--ROLL+
	sets.wep.ROLL = {
    main={ name="Lanun Knife", augments={'Path: C',}},
    sub="Nusku Shield",
    range={ name="Compensator", augments={'DMG:+15','AGI+15','Rng.Acc.+15',}},
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
	TP_Set_Names = {"DT","ACC","TP"}
	
	-- TP sets go below!
	
	--Damage Taken Reduction
	sets.tp.DT = {
    ammo="Chrono Bullet",
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Malignance Gloves",
    legs="Chas. Culottes +3",
    feet="Malignance Boots",
    neck="Null Loop",
    waist="Sailfi Belt +1",
    left_ear="Crep. Earring",
    right_ear="Suppanomimi",
    right_ring="Ilabrat Ring",
	left_ring="Chirich Ring",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+4','"Dbl.Atk."+10','Damage taken-5%',}},
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
	
	sets.ws['Savage Blade'] = {
    head="Nyame Helm",
    body="Laksa. Frac +4",
    hands="Chasseur's Gants +3",
    legs="Nyame Flanchard",
    feet="Lanun Bottes +4",
    neck={ name="Comm. Charm +1", augments={'Path: A',}},
    waist="Sailfi Belt +1",
    left_ear="Moonshade Earring",
    right_ear="Brutal Earring",
    left_ring="Sroda Ring",
    right_ring="Epona's Ring",
    back={ name="Camulus's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+1','Weapon skill damage +10%',}},
} 
	sets.ws['Leaden Salute'] = {
    ammo="Orichalc. Bullet",
    head="Pixie Hairpin +1",
    body="Lanun Frac +4",
    hands="Chasseur's Gants +3",
    legs="Nyame Flanchard",
    feet="Lanun Bottes +4",
    neck={ name="Comm. Charm +1", augments={'Path: A',}},
    waist="Svelt. Gouriz +1",
    left_ear="Friomisi Earring",
    right_ear="Moonshade Earring",
    left_ring="Archon Ring",
    right_ring="Arvina Ringlet +1",
    back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
}
	sets.ws['Aeolian Edge'] = {
    head="Nyame Helm",
    body="Lanun Frac +4",
    hands="Chasseur's Gants +3",
    legs="Nyame Flanchard",
    feet="Lanun Bottes +4",
    neck="Sanctity Necklace",
    waist="Eschan Stone",
    left_ear="Moonshade Earring",
    right_ear="Friomisi Earring",
    left_ring="Metamor. Ring +1",
    right_ring="Rajas Ring",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+4','"Dbl.Atk."+10','Damage taken-5%',}},
}
	sets.ws['Last Stand'] = {
    ammo="Chrono Bullet",
    head="Chass. Tricorne +3",
    body="Laksa. Frac +4",
    hands="Chasseur's Gants +3",
    legs="Chas. Culottes +3",
    feet="Lanun Bottes +4",
    neck="Marked Gorget",
    waist="Kwahu Kachina Belt",
    left_ear="Moonshade Earring",
    right_ear="Volley Earring",
    left_ring="Arvina Ringlet +1",
    right_ring="Meghanada Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Store TP"+10',}},
}


------------------- JOB ABILITY SETS -------------------

	sets.ja = {} --Leave Empty!

	--Uses: Windower>res>job_abilities
	sets.ja['CorsairRoll'] = {
	head="Lanun Tricorne +1",
    body="Chasseur's Frac +2",
	neck="Regal Necklace",
    hands="Chasseur's Gants +3",
    legs="Chas. Culottes +3",
    feet="Chass. Bottes +1",
	right_ring="Luzaf's Ring",
    back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+4','"Dbl.Atk."+10','Damage taken-5%',}},
}
	sets.ja['CorsairShot'] = {
    ammo="Orichalc. Bullet",
    head="Laksa. Tricorne +4",
    body="Laksa. Frac +4",
    hands="Chasseur's Gants +3",
    legs="Laksa. Trews +4",
    feet="Laksa. Bottes +4",
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Crep. Earring",
    right_ear={ name="Chas. Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+10','Mag. Acc.+10',}},
    left_ring="Metamor. Ring +1",
    right_ring="Crepuscular Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
}
	sets.ja['Wild Card'] = {
	feet="Lanun Bottes +4",
}
	sets.ja['Waltz'] = {}
	sets.ja['Jig'] = {}
	sets.ja['Step'] = {}

	-- Single Ability examples below!
	-- Replace the x with desired Ability name!

	sets.ja['x'] = {}

	-- We can set an Ability to a set we already created!
	-- See example below!

	sets.ja['Provoke'] = sets.hate.high
	
	
	
--------------------- RANGED SETS ----------------------

	sets.ra = {} --Leave Empty!
	
	-- PRESHOT goes here
	sets.ra.preshot = {
	ammo="Chrono Bullet",
    head="Chass. Tricorne +3",
    body="Oshosi Vest",
    hands={ name="Carmine Fin. Ga. +1", augments={'Rng.Atk.+20','"Mag.Atk.Bns."+12','"Store TP"+6',}},
    legs="Laksa. Trews +4",
    feet="Meg. Jam. +2",
    neck={ name="Comm. Charm +1", augments={'Path: A',}},
	waist="Impulse Belt",
    left_ring="Crepuscular Ring",
    back={ name="Camulus's Mantle", augments={'"Snapshot"+10',}},
}

	-- MIDSHOT goes here
	sets.ra.midshot = {
    ammo="Chrono Bullet",
    head="Ikenga's Hat",
    body="Ikenga's Vest",
    hands="Malignance Gloves",
    legs="Chas. Culottes +3",
    feet="Ikenga's Clogs",
    neck="Marked Gorget",
    waist="Kwahu Kachina Belt",
    left_ear="Crep. Earring",
    right_ear="Volley Earring",
    left_ring="Crepuscular Ring",
    right_ring="Ilabrat Ring",
    back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','"Store TP"+10',}},
}



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
	
	sets.ma['Flash'] = sets.hate.high




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


	
-- Magic
	if sets.ma[spell.skill] then --Do we have a specific MC set for this school of magic?
		equip(sets.ma[spell.skill]) --Yes! Use that school-specific MC set!
	end
	if sets.ma[spell.english] then --Do we have a specific MC set for this spell name?
		equip(sets.ma[spell.english]) --Yes! Use that spell name specific MC set!
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


