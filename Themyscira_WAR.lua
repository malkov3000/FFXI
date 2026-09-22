------------------------------------------------------------------
------------------------------------------------------------------
--Themyscira_WAR -------------------------------------------------
----------------------------------------------------------d(^^d)--
------------------------------------------------------------------


---------------
---Load Libs---
---------------




------------------------------------LOCKSTYLE------------------------------------------
local lockstyle = 7 -- Uses the in-game gearsets! Set # to desired lockstyle look!
send_command('wait 4; input /lockstyleset ' .. lockstyle)

function sub_job_change(new, old)
    send_command('wait 2; input /lockstyleset ' .. lockstyle)
end

------------------------------------MACRO BOOK-----------------------------------------
send_command('input /macro book 7') -- Update # to desired starting macro book!
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

	-- DT set here
	sets.idle.dt = {
    ammo="Coiste Bodhar",
    head="Sakpata's Helm",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Pumm. Cuisses +2",
    feet="Pumm. Calligae +2",
    neck={ name="War. Beads +1", augments={'Path: A',}},
    waist="Sailfi Belt +1",
    left_ear="Cessance earring",
    right_ear={ name="Boii Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+12','Mag. Acc.+12','Crit.hit rate+4',}},
    left_ring="Murky Ring",
    right_ring="Shneddick Ring",
    back={ name="Cichol's Mantle", augments={'Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}

	-- Town set here
	sets.idle.town = sets.idle.dt 



----------------------- ENMITY SETS --------------------

	sets.hate = {} --Leave Empty!
	
	-- Enmity +++
	sets.hate.high = {}
	
	-- Enmity ---
	sets.hate.low = {}
	
	

----------------------- WEAPON SETS --------------------

	WEP_Index = 1 
	sets.wep = {} 
	WSLIST = {}

	-- We can have multiple different WEAPON sets!
	--
	--> Use "/console gs c togglewep" to cycle modes!
	--
	-- New modes can be added here!
	-- Make sure to also create a WEP set for it below!
	WEP_Set_Names = {"Naegling","Chango"}
	
	-- TP sets go below!
	
	sets.wep.Naegling = {    
    main="Naegling",
    sub="Blurred shield +1",
	}	
	WSLIST.Naegling = {"Savage Blade","Chant du Cygne","Sanguine Blade","Flat Blade"}

	sets.wep.Chango = {    
    main="Chango",
    sub="Kaja Grip",
	}	
	WSLIST.Naegling = {"Savage Blade","Chant du Cygne","Sanguine Blade","Flat Blade"}




	
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
	sets.tp.DT = {
    ammo="Coiste Bodhar",
    head="Sakpata's Helm",
    body="Sakpata's Plate",
    hands="Sakpata's Gauntlets",
    legs="Pumm. Cuisses +2",
    feet="Pumm. Calligae +2",
    neck={ name="War. Beads +1", augments={'Path: A',}},
    waist="Sailfi Belt +1",
    left_ear="Cessance earring",
    right_ear={ name="Boii Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+12','Mag. Acc.+12','Crit.hit rate+4',}},
    left_ring="Murky Ring",
    right_ring="Niqmaddu ring",
    back={ name="Cichol's Mantle", augments={'Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
}	

	--Accuracy
	sets.tp.ACC = {}

	--Multi-Hit, Store TP, Attack Speed
	sets.tp.TP = {}

	--Treasure Hunter
--	sets.tp.TH = {}		


	
--------------------- RANGED SETS ----------------------

	sets.ra = {} --Leave Empty!
	
	-- PRESHOT goes here
	sets.ra.preshot = {}

	-- MIDSHOT goes here
	sets.ra.midshot = {}



----------------------- WS SETS ------------------------
	
	sets.ws = {} --Leave Empty!

	-- WS set here
	sets.ws.standard = {
    ammo="Oshasha's Treatise",
    head="Agoge Mask +3",
    body="Pumm. Lorica +2",
    hands="Boii Mufflers +3",
    legs="Nyame flanchard",
    feet="Sulev. Leggings +2",
    neck={ name="War. Beads +1", augments={'Path: A',}},
    waist="Sailfi Belt +1",
    left_ear="Ishvara Earring",
    right_ear="Moonshade Earring",
    left_ring="Epaminondas's Ring",
    right_ring="Cornelia's Ring",
    back={ name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
}

	-- WS specific sets! Replace the x with the WS name!
	-- Like this--->> sets.ws['Savage Blade'] = {}
	
	sets.ws['x'] = {}  



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
	sets.ja['Monster'] = {}

	-- Single Ability examples below!
	-- Replace the x with desired Ability name!

	sets.ja['Berserk'] = {
    body="Pumm. Lorica +2",
	}
	
	sets.ja['Warcry'] = {
    head="Agoge Mask +3",
	}

	-- We can set an Ability to a set we already created!
	-- See example below!

--	sets.ja['Provoke'] = sets.hate.high
	
	

--------------------- FASTCAST SETS --------------------

	sets.fc = {} --Leave Empty!

	-- FC set here
	--sets.fc.standard = {}  
	
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
	
--	sets.ma['Flash'] = sets.hate.high



------------------- BLUE MAGIC SETS --------------------

	sets.blu = {} --Leave Empty!

	--Update BLU Spell List at end of file!
	
	--Accuracy / Str+Dex+Vit	
	sets.blu.str = {}
	
	--Magic Attack Bonus / Magic Accuracy
	sets.blu.mab = {}
	
	--Blue Skill / Magic Accuracy / Spell Int Rate	
	sets.blu.skill = {}
	
	--Cure Potency / Spell Int Rate / HP
	sets.blu.cure = {}	


----------------------- PET SETS ----------------------

	sets.pet = {} --Leave Empty!

	--Update PET Spell List near end of file!
	
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
	
		
end



---
--- AFTERCAST
---

function aftercast(spell)

	

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
		equip({sub = "empty"}) 
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
