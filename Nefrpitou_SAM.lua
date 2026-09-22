------------------------------------------------------------------
------------------------------------------------------------------
--Remane file to your character's name + "_" + job abbreviation---
------------------------------------------------------------------
--Example: Themyscira_BLU.lua ------------------------------------
----------------------------------------------------------d(^^d)--
------------------------------------------------------------------



------------------------------------LOCKSTYLE------------------------------------------
local lockstyle = 2 -- Uses the in-game gearsets! Set # to desired lockstyle look!
send_command('wait 4; input /lockstyleset ' .. lockstyle)

function sub_job_change(new, old)
    send_command('wait 2; input /lockstyleset ' .. lockstyle)
end

------------------------------------MACRO BOOK-----------------------------------------
send_command('input /macro book 2') -- Update # to desired starting macro book!
send_command('wait 4; input /macro set 2') -- Update # to desired starting macro set!

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
	sets.idle.dt = {    
	sub="Utu Grip",
    ammo="Knobkierrie",
    head="Nyame helm",
    body="Nyame mail",
    hands="Nyame gauntlets",
    legs="Nyame flanchard",
    feet="Nyame sollerets",
    neck="Sanctity necklace",
    waist="Null belt",
    left_ear="Alabaster earring",
    right_ear="Dominance Earring",
    left_ring="Murky Ring",
    right_ring="Shneddick Ring",
    back="Null shawl"}  

	-- Town set here
	sets.idle.town = {    
	sub="Utu Grip",
    ammo="Knobkierrie",
    head="Nyame helm",
    body="Nyame mail",
    hands="Nyame gauntlets",
    legs="Nyame flanchard",
    feet="Nyame sollerets",
    neck="Sanctity necklace",
    waist="Null belt",
    left_ear="Alabaster earring",
    right_ear="Dominance Earring",
    left_ring="Murky Ring",
    right_ring="Shneddick Ring",
    back="Null shawl"}  



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
	-- You can remove sets from this list too!
	WEP_Set_Names = {"TPBONUS","SKILL","ACC"}
	
	-- TP sets go below!
	
	--TP BONUS
	sets.wep.TPBONUS = {}	

	--SKILL+
	sets.wep.SKILL = {}

	--ACCURACY
	sets.wep.ACC = {}


	
----------------------- TP SETS ------------------------

	TP_Index = 1 --Don't Change!
	sets.tp = {} --Leave Empty!

	-- We can have multiple different TP sets!
	--
	--> Use "/console gs c toggletp" to cycle modes!
	--
	-- New modes can be added here!
	-- Make sure to also create a TP set for it below!
	-- You can remove sets from this list too!
	TP_Set_Names = {"MAXTP","SAFETP","SAFETPACC","DefenseMEVA",}
	
	-- TP sets go below!
	
	--MAX Zanshin TP			STP 83 DEF 35/35 ACC 1318
	sets.tp.MAXTP = { 
	ammo="Aurgelmir Orb",
    head="Kasuga Kabuto +3",
    body="Kasuga Domaru +3",
    hands="Tatenashi gote +1",
    legs="Kasuga Haidate +3",
    feet={ name="Ryuo Sune-Ate +1", augments={'HP+65','"Store TP"+5','"Subtle Blow"+8',}},
    neck={ name="Sam. Nodowa +1", augments={'Path: A',}},
    waist="Sweordfaetels +1",
    left_ear="Dedition Earring",
    right_ear={ name="Kasuga Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+9','Mag. Acc.+9',}},
    left_ring="Niqmaddu Ring",
    right_ring="Chirich Ring +1",
    back="Takaha mantle"}

	--Safe TP					STP 73 DEF 60/50 ACC 1352
	sets.tp.SAFETP = { 
	ammo="Aurgelmir Orb",
    head="Kasuga Kabuto +3",
    body="Kasuga Domaru +3",
    hands="Tatenashi gote +1",
    legs="Kasuga Haidate +3",
    feet={ name="Ryuo Sune-Ate +1", augments={'HP+65','"Store TP"+5','"Subtle Blow"+8',}},
    neck={ name="Sam. Nodowa +1", augments={'Path: A',}},
    waist="Sweordfaetels +1",
    left_ear="Alabaster earring",
    right_ear={ name="Kasuga Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+9','Mag. Acc.+9',}},
    left_ring="Murky ring",
    right_ring="Chirich Ring +1",
    back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Phys. dmg. taken-10%',}},}


	--Safe TP ACC 				STP 66 DEF 50/50  Acc 1468
	sets.tp.SAFETPACC = {
	ammo="Aurgelmir Orb",
    head="Kasuga Kabuto +3",
    body="Kasuga Domaru +3",
    hands="Wakido kote +4",
    legs="Kasuga Haidate +3",
    feet="Wakido sune-ate +3",
    neck={ name="Sam. Nodowa +1", augments={'Path: A',}},
    waist="Null belt",
    left_ear="Alabaster earring",
    right_ear={ name="Kasuga Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+9','Mag. Acc.+9',}},
    left_ring="Murky ring",
    right_ring="Chirich Ring +1",
    back="Null shawl"}

	
	--MAX DT+MEVA 				STP 42 DEF 61/61 MEVA 704 ACC 1373
	sets.tp.DefenseMEVA = {
	ammo="Aurgelmir Orb",
    head="Nyame helm",
    body="Kasuga Domaru +3",
    hands="Nyame gauntlets",
    legs="Kasuga Haidate +3",
    feet="Nyame sollerets",
    neck="Sanctity necklace",
    waist="Null belt",
    left_ear="Alabaster earring",
    right_ear={ name="Kasuga Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+9','Mag. Acc.+9',}},
    left_ring="Murky Ring",
    right_ring="Chirich Ring +1",
    back="Null shawl"}	

	--Treasure Hunter
	sets.tp.TH = { 
	ammo="Perfect lucky egg",
	head="Wh. rarab cap +1",
    body="Kasuga Domaru +3",
    hands="Wakido Kote +4",
    legs="Kasuga Haidate +3",
    feet={ name="Ryuo Sune-Ate +1", augments={'HP+65','"Store TP"+5','"Subtle Blow"+8',}},
    neck={ name="Sam. Nodowa +1", augments={'Path: A',}},
    waist="Sweordfaetels +1",
    left_ear="Dedition Earring",
    right_ear={ name="Kasuga Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+9','Mag. Acc.+9',}},
    left_ring="Niqmaddu Ring",
    right_ring="Chirich Ring +1",
    back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Store TP"+10','Phys. dmg. taken-10%',}},}		
	

	
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
	ammo="Knobkierrie",
    head="Mpaca's cap",
    body="Sakonji domaru +4",
    hands="Kasuga Kote +3",
    legs="Wakido haidate +4",
    feet="Kas. Sune-Ate +2",
    neck={ name="Sam. Nodowa +1", augments={'Path: A',}},
    waist="Sailfi Belt +1",
    left_ear="Moonshade Earring",
    right_ear="Thrud Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Cornelia's ring",
    back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},}

	sets.ws.maxtp = {
	ammo="Knobkierrie",
    head="Wakido Kabuto +3",
    body="Sakonji domaru +4",
    hands="Kasuga Kote +3",
    legs="Wakido haidate +4",
    feet="Kas. Sune-Ate +2",
    neck={ name="Sam. Nodowa +1", augments={'Path: A',}},
    waist="Sailfi Belt +1",
    left_ear="Lugra earring +1",
    right_ear="Thrud Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Cornelia's ring",
    back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},} 

	-- WS specific sets! Replace the x with the WS name!
	-- Like this--->> sets.ws['Savage Blade'] = {}
	
	sets.ws['Tachi: Ageha'] = {
	ammo="Knobkierrie",
    head="Wakido Kabuto +3",
    body="Wakido Domaru +3",
    hands="Wakido Kote +4",
    legs="Wakido haidate +4",
    feet="Wakido Sune-Ate +3",
    neck= "Null loop",
    waist="Null belt",
    left_ear="Moonshade Earring",
    right_ear="Thrud Earring",
    left_ring="Niqmaddu Ring",
    right_ring="Cornelia's ring",
    back="Null shawl"}


	
	sets.ws[''] = {} 

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

	sets.ja['x'] = {}
	
	sets.ja['Meditate'] = {head="Wakido Kabuto +3",
	hands="Sakonji Kote +3",}


	-- We can set an Ability to a set we already created!
	-- See example below!

--	sets.ja['Provoke'] = sets.hate.high
	
	

--------------------- FASTCAST SETS --------------------

	sets.fc = {} --Leave Empty!

	-- FC set here
	sets.fc.standard = {right_ear="Loquac. Earring",
    right_ring="Prolix Ring",}  
	
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
    if spell.type == 'WeaponSkill' and player.tp >= 1000 and player.tp <= 2999 then 
        equip(sets.ws.standard) 
    end
    if sets.ws[spell.english] and player.tp >= 1000 and player.tp <= 2999 then 
        equip(sets.ws[spell.english]) 
    end
    if spell.type == 'WeaponSkill' and player.tp >= 3000 then 
        equip(sets.ws.maxtp)
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
    if spell.type == 'WeaponSkill' and player.tp >= 1000 and player.tp <= 2999 then 
        equip(sets.ws.standard) 
    end
    if sets.ws[spell.english] and player.tp >= 1000 and player.tp <= 2999 then 
        equip(sets.ws[spell.english]) 
    end
    if spell.type == 'WeaponSkill' and player.tp >= 3000 then 
        equip(sets.ws.maxtp)
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
