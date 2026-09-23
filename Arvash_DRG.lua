

-----------------------LOCKSTYLE------------------
local lockstyle = 1
send_command('wait 4; input /lockstyleset ' .. lockstyle)

-----------------------MACRO BOOK------------------
send_command('input /macro book 5')
send_command('wait 4; input /macro set 1')

-------------------------------------NO HELP ON----------------------------------------
send_command('input /blockhelp on') -- Prevents calling for help!

---------------------
------- SETS --------
---------------------

function get_sets()

----------------------- IDLE SETS -----------------------
    sets.Idle = {}

    sets.Idle.DT = {
    ammo="Coiste Bodhar",
    head="Sulevia's Mask +2",
    body="Sulevia's Plate. +2",
    hands="Pel. Vambraces +2",
    legs="Pelt. Cuissots +2",
    feet="Sulev. Leggings +2",
    neck="Loricate Torque +1",
    waist="Sailfi Belt +1",
    left_ear="Alabaster Earring",
    right_ear="Dragonkin Earring",
    left_ring="Shneddick Ring",
    right_ring="Murky Ring",
    back={ name="Brigantia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%',}},
}
	
----------------------- WEAPON SETS --------------------

	WEP_Index = 1 --Don't Change!
	sets.wep = {} --Leave Empty!

	-- We can have multiple different WEAPON sets!
	--
	--> Use "/console gs c togglewep" to cycle modes!
	--
	-- New modes can be added here!
	-- Make sure to also create a WEP set for it below!
	WEP_Set_Names = {"Savage","Lance"}
	
	-- TP sets go below!
	
	--Naegling
	sets.wep.Savage = {
    main="Naegling",
    sub="Regis",
}	

	--Kaja 
	sets.wep.Lance = {
    main="Kaja Lance",
    sub="Kaja Grip",
}

----------------------- TP SETS -----------------------
    sets.TP = {}

    sets.TP.DPS = {}

    sets.TP.DT = {
    ammo="Coiste Bodhar",
    head="Flam. Zucchetto +2",
    body="Pelt. Plackart +2",
    hands="Pel. Vambraces +2",
    legs="Pelt. Cuissots +2",
    feet="Flam. Gambieras +2",
    neck="Anu Torque",
    waist="Sailfi Belt +1",
    left_ear="Crep. Earring",
    right_ear="Alabaster Earring",
    left_ring="Dreki Ring",
    right_ring="Chirich Ring",
    back={ name="Brigantia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%',}},
}
	
----------------------- WS SETS -----------------------
	sets.ws = {} --Leave Empty!

	-- WS set here
	sets.ws.standard = {}  

	-- WS specific sets! Replace the x with the WS name!
	-- Like this--->> sets.ws['Savage Blade'] = {}

	sets.ws.standard = {
	ammo="Knobkierrie",
    head="Peltast's Mezail +2",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Vishap Brais +3",
    feet="Sulev. Leggings +2",
    neck={ name="Dgn. Collar +1", augments={'Path: A',}},
    waist="Sailfi Belt +1",
    left_ear="Moonshade Earring",
    right_ear="Thrud Earring",
    right_ring="Sroda Ring",
    left_ring="Dreki Ring",
    back={ name="Brigantia's Mantle", augments={'STR+13','Accuracy+20 Attack+20','STR+1','Weapon skill damage +10%',}},
}
    
	sets.SavageBlade = {
    ammo="Knobkierrie",
    head="Peltast's Mezail +2",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Vishap Brais +3",
    feet="Sulev. Leggings +2",
    neck={ name="Dgn. Collar +1", augments={'Path: A',}},
    waist="Sailfi Belt +1",
    left_ear="Moonshade Earring",
    right_ear="Thrud Earring",
    right_ring="Sroda Ring",
    left_ring="Dreki Ring",
    back={ name="Brigantia's Mantle", augments={'STR+13','Accuracy+20 Attack+20','STR+1','Weapon skill damage +10%',}},
}

	
  
	
----------------------- JOB ABILITY SETS -----------------------

    sets.JA = {}

----------------------- FASTCAST SETS -----------------------


----------------------- ITEM SETS -----------------------

--    sets.HolyWater = {
--        neck = "Nicander's Necklace"
--    }

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


