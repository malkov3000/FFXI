------------------------------------------------------------------
------------------------------------------------------------------
--Themyscira_WAR -------------------------------------------------
----------------------------------------------------------d(^^d)--
------------------------------------------------------------------


---------------
--- Load ------
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

-------------------------------------NO HELP ON----------------------------------------
send_command('input /blockhelp on') 


---------------------
------- SETS --------
---------------------

function get_sets()

----------------------- IDLE SETS ----------------------

	sets.idle = {} --Leave Empty!

	sets.idle.dt = {
    ammo="Coiste Bodhar",
    head="Boii Mask +3",
    body="Boii Lorica +3",
    hands="Sakpata's Gauntlets",
    legs="Pumm. Cuisses +2",
    feet="Pumm. Calligae +3",
    neck={ name="War. Beads +1", augments={'Path: A',}},
    waist="Sailfi Belt +1",
    left_ear="Schere Earring",
    right_ear={ name="Boii Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+12','Mag. Acc.+12','Crit.hit rate+4',}},
    left_ring="Niqmaddu Ring",
    back={ name="Cichol's Mantle", augments={'Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    right_ring="Shneddick Ring",
}

	sets.idle.town = sets.idle.dt 


----------------------- WEAPON SETS --------------------

	WEP_Index = 1 
	sets.wep = {} 
	WSLIST = {}

	--
	--> Use "/console gs c cyclewep" to cycle modes!
	--

	WEP_Set_Names = {"Chango","Dolichenus","Naegling","Loxotic","ShiningOne"}
	
	sets.wep.Chango = {    
    main="Chango",
    sub="Utu Grip",
	}	
	WSLIST.Chango = {"Upheaval","Ukko's Fury","King's Justice","Full Break"}
	
	sets.wep.Dolichenus = {    
    main="Dolichenus",
    sub="Blurred shield +1",
	}	
	WSLIST.Dolichenus = {"Decimation","Ruinator","Mistral Axe","Smash Axe"}
	
	sets.wep.Naegling = {    
    main="Naegling",
    sub="Blurred shield +1",
	}	
	WSLIST.Naegling = {"Savage Blade","Requiescat","Circle Blade","Flat Blade"}
	
	sets.wep.Loxotic = {    
    main="Loxotic mace +1",
    sub="Blurred shield +1",
	}	
	WSLIST.Loxotic = {"Judgment","Realmrazer","Moonlight","Brainshaker"}
	
	sets.wep.ShiningOne = {    
    main="Shining One",
    sub="Utu Grip",
	}	
	WSLIST.ShiningOne = {"Impulse Drive","Stardiver","Sonic Thrust","Leg Sweep"}
	

----------------------- TP SETS ------------------------

	TP_Index = 1 
	sets.tp = {} 

	--
	--> Use "/console gs c cycletp" to cycle modes!
	--

	TP_Set_Names = {"TP"}
	
	sets.tp.TP = {
    ammo="Coiste Bodhar",
    head="Boii Mask +3",
    body="Boii Lorica +3",
    hands="Sakpata's Gauntlets",
    legs="Pumm. Cuisses +2",
    feet="Pumm. Calligae +3",
    neck={ name="War. Beads +1", augments={'Path: A',}},
    waist="Sailfi Belt +1",
    left_ear="Schere Earring",
    right_ear={ name="Boii Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+12','Mag. Acc.+12','Crit.hit rate+4',}},
    right_ring="Chirich Ring",
    left_ring="Niqmaddu Ring",
    back={ name="Cichol's Mantle", augments={'Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}	


----------------------- WS SETS ------------------------
	
	sets.ws = {} 

	sets.ws.standard = {
    ammo="Knobkierrie",
    head="Agoge Mask +4",
    body="Pumm. Lorica +4",
    hands="Boii Mufflers +3",
    legs="Boii Cuisses +3",
    feet="Nyame sollerets",
    neck={ name="War. Beads +1", augments={'Path: A',}},
    waist="Sailfi Belt +1",
    left_ear="Thrud Earring",
    right_ear="Moonshade Earring",
    right_ring="Cornelia's Ring",
    left_ring="Epaminondas's Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
}

	-- WS specific sets! Replace the x with the WS name!
	-- Like this--->> sets.ws['Savage Blade'] = {}
	

------------------- JOB ABILITY SETS -------------------

	sets.ja = {} 

	sets.ja['Berserk'] = {
    body="Pumm. Lorica +4",
    feet="Agoge Calligae +2",
	}
	
	sets.ja['Warcry'] = {
    head="Agoge Mask +3",
	}
	
	sets.ja['Tomahawk'] = {
    ammo="Thr. Tomahawk",
    feet="Agoge Calligae +2",
	}
	
	sets.ja['Mighty Strikes'] = {
    hands="Agoge Mufflers +1",
	}


--------------------- FASTCAST SETS --------------------

	sets.fc = {} 

	sets.fc.standard = {
    ammo="Impatiens",
    feet={ name="Odyssean Greaves", augments={'Mag. Acc.+8','Phys. dmg. taken -4%','DEX+10','"Mag.Atk.Bns."+11',}},
    neck="Voltsurge Torque",
    right_ear="Loquac. Earring",
    left_ring="Lebeche Ring",
    right_ring="Naji's Loop",
}  
	

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


----------------
---- SCRIPT ----
----------------


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
--- cycle for TP and WEAPON set modes
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
