------------------------------------------------------------------
------------------------------------------------------------------
-- Themyscira_THF ------------------------------------------------
----------------------------------------------------------d(^^d)--
------------------------------------------------------------------


----------------
---- Load ------
----------------

------------------------------------LOCKSTYLE------------------------------------------
local lockstyle = 5 
send_command('wait 4; input /lockstyleset ' .. lockstyle)

function sub_job_change(new, old)
    send_command('wait 2; input /lockstyleset ' .. lockstyle)
end

------------------------------------MACRO BOOK-----------------------------------------
send_command('input /macro book 5') 
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
	ammo="Yetshila",
    head="Skulker's Bonnet +3",
    body="Pillager's Vest +4",
	--hands="Plun. Armlets +2",
    hands="Malignance Gloves",
    legs="Malignance Tights",
    feet="Skulk. Poulaines +3",
    neck={ name="Asn. Gorget +1", augments={'Path: A',}},
    waist="Gerdr belt",
    --left_ear="Odr Earring",
    left_ear="Alabaster earring",
	right_ear={ name="Skulker's Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+9','Mag. Acc.+9',}},
    --left_ring="Ilabrat ring",
    left_ring="murky ring",
    --right_ring="Epona's Ring",
    right_ring="Shneddick Ring",
    back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Crit.hit rate+10','Phys. dmg. taken-10%',}},
}

	sets.idle.town = sets.idle.dt 


----------------------- WEAPON SETS --------------------

	WEP_Index = 1 
	sets.wep = {} 
	WSLIST = {}

	--
	--> Use "/console gs c cyclewep" to cycle modes!
	--> Use "/console gs c ws#" to WS!
	--

	WEP_Set_Names = {"Tauret","Naegling"}
	
	sets.wep.Naegling = {   
	main="Naegling",
    sub="Shijo",
	}	
	WSLIST.Naegling = {"Savage Blade","Requiescat","Circle Blade","Flat Blade"}

	sets.wep.Tauret = {  
	main="Tauret",
    sub="Gleti's Knife",
	}
	WSLIST.Tauret = {"Evisceration","Exenterator","Aeolian Edge","Shadowstitch"}

	
----------------------- TP SETS ------------------------

	TP_Index = 1 
	sets.tp = {} 

	--
	--> Use "/console gs c cycletp" to cycle modes!
	--

	TP_Set_Names = {"TP","TH"}
	
	sets.tp.TP = {
	ammo="Yetshila",
    head="Skulker's Bonnet +3",
    body="Pillager's Vest +4",
    hands="Malignance Gloves",
    legs="Malignance Tights",
    feet="Skulk. Poulaines +3",
    neck={ name="Asn. Gorget +1", augments={'Path: A',}},
    waist="Gerdr belt",
    left_ear="Alabaster earring",
	right_ear={ name="Skulker's Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+9','Mag. Acc.+9',}},
    left_ring="murky ring",
    right_ring="Epona's Ring",
    back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Crit.hit rate+10','Phys. dmg. taken-10%',}},
}	

	sets.tp.TH = {
	ammo="Perfect lucky egg",
    head="Skulker's Bonnet +3",
    body="Pillager's Vest +4",
    hands="Plun. Armlets +2",
    legs="Malignance Tights",
    feet="Skulk. Poulaines +3",
    neck={ name="Asn. Gorget +1", augments={'Path: A',}},
    waist="Gerdr belt",
    left_ear="Alabaster earring",
    right_ear="Skulker's Earring +1",
    left_ring="murky ring",
    right_ring="Hoxne Ring",
    back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Crit.hit rate+10','Phys. dmg. taken-10%',}},
}	

	
----------------------- WS SETS ------------------------
	
	sets.ws = {} 

	sets.ws.standard = {
    ammo="Oshasha's Treatise",
    head="Pill. Bonnet +2",
    body="Skulker's Vest +2",
    hands="Meg. Gloves +2",
    legs="Plun. Culottes +2",
    feet="Nyame Sollerets",
    neck="Rep. Plat. Medal",
    waist="Sailfi Belt +1",
    left_ear="Ishvara Earring",
    right_ear="Moonshade Earring",
    left_ring="Cornelia's Ring",
    right_ring="Epaminondas's Ring",
    back="Alabaster Mantle",
} 
	
	sets.ws['Savage Blade'] = {
    ammo="Oshasha's Treatise",
    head="Pill. Bonnet +2",
    body="Skulker's Vest +2",
    hands="Meg. Gloves +2",
    legs="Plun. Culottes +2",
    feet="Nyame Sollerets",
    neck="Rep. Plat. Medal",
    waist="Sailfi Belt +1",
    left_ear="Ishvara Earring",
    right_ear="Moonshade Earring",
    left_ring="Cornelia's Ring",
    right_ring="Epaminondas's Ring",
    back="Alabaster Mantle",
}
	
	sets.ws['Evisceration'] = {
	ammo="Yetshila",
    head="Blistering sallet +1",
    body="Pillager's Vest +4",
    hands="Gleti's gauntlets",
    legs="Gleti's Breeches",
    feet="Gleti's boots",
    neck="Light Gorget",
    waist="Light Belt",
    left_ear="Odr Earring",
    right_ear="Skulker's Earring +1",
    left_ring="Ilabrat Ring",
    right_ring="Epona's Ring",
    back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Crit.hit rate+10','Phys. dmg. taken-10%',}},
	}  
	
	sets.ws['Aeolian Edge'] = {
    ammo="Oshasha's Treatise",
    head="Pill. Bonnet +2",
    body="Skulker's Vest +2",
    hands="Nyame Gauntlets",
    legs="Nyame flanchard",
    feet="Nyame sollerets",
    neck="Sibyl Scarf",
    waist="Eschan Stone",
    left_ear="Ishvara Earring",
    right_ear="Moonshade Earring",
    left_ring="Cornelia's Ring",
    right_ring="Epaminondas's Ring",
    back="Alabaster Mantle",
}


------------------- JOB ABILITY SETS -------------------

	sets.ja = {} 

	sets.ja['Conspirator'] = {body="Skulker's Vest +2",}
	
	sets.ja['Despoil'] = {body="Skulk. Poulaines +3",}


--------------------- FASTCAST SETS --------------------

	sets.fc = {} 

	sets.fc.standard = {
    ammo="Impatiens",
    legs="Enif Cosciales",
    neck="Voltsurge Torque",
    left_ear="Loquac. Earring",
    right_ear="Etiolation Earring",
    left_ring="Lebeche Ring",
    right_ring="Naji's Loop",
}  


--------------------- MAGIC SETS -----------------------

	sets.ma = {} 

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
