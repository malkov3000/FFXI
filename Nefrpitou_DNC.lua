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

	sets = {}

-- Use "//gs export" in-game to export a file with your currently equiped gear!
-- Find the file in Windower>addons>GearSwap>data>export folder!
-- Copy the gear inside the {} and paste it into the correct set below!
-- It might work best to only include weapons in the WEAPON sets!


----------------------- IDLE SETS ----------------------

	sets.idle = {} --Leave Empty!

	-- DT set here
	sets.idle.dt = {
	ammo="Aurgelmir orb",
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
	ammo="Aurgelmir orb",
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
	TP_Set_Names = {"TP","DT","TH"}
	
	-- TP sets go below!
	
	--Damage Taken Reduction
	sets.tp.DT = {
	ammo="Aurgelmir orb",
    head="Malignance chapeau",
    body="Malignance tabard",
    hands="Malignance gloves",
    legs="Malignance tights",
    feet="Malignance boots",
    neck="Etoile gorget +1", 
    waist="Sailfi Belt +1",
    left_ear="Alabaster earring",
    right_ear="Sherida Earring",
    left_ring="Rajas Ring",
    right_ring="Chirich Ring +1",
    back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},} 

	--Accuracy
	sets.tp.ACC = {}

	--Multi-Hit, Store TP, Attack Speed
	sets.tp.TP = {
	ammo="Aurgelmir orb",
    head="Malignance chapeau",
    body="Malignance tabard",
    hands="Malignance gloves",
    legs="Gleti's breeches",
    feet="Malignance boots",
    neck="Etoile gorget +1", 
    waist="Sailfi Belt +1",
    left_ear="Dedition Earring",
    right_ear="Sherida Earring",
    left_ring="Ilabrat ring",
    right_ring="Chirich Ring +1",
    back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},} 

	--Treasure Hunter
	sets.tp.TH = { 
	ammo="Perfect lucky egg",
	head="Wh. rarab cap +1",
    body="Malignance tabard",
    hands="Malignance gloves",
    legs="Malignance tights",
    feet="Malignance boots",
    neck="Etoile gorget +1", 
    waist="Sailfi Belt +1",
    left_ear="Sherida Earring",
    right_ear="Suppanomimi",
    left_ring="Rajas Ring",
    right_ring="Chirich Ring +1",
    back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},} 	


	
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
	ammo="Aurgelmir Orb",
    head="Maculele tiara +2",
    body="Mummu Jacket +2",
    hands="Maxixi Bangles +3",
    legs="Mummu Kecks +2",
    feet="Maculele toe shoes +1",
    neck="Etoile gorget +1",
    waist="Sailfi Belt +1",
    left_ear="Sherida Earring",
    right_ear="Moonshade Earring",
    left_ring="Ilabrat Ring",
    right_ring="Cornelia's Ring",
    back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10',}},}  

	-- WS specific sets! Replace the x with the WS name!
	-- Like this--->> sets.ws['Savage Blade'] = {}
	
	sets.ws['x'] = {}  
	
	sets.ws['Evisceration'] = {
	ammo="Charis feather",
    head="Blistering sallet +1",
    body="Gleti's Cuirass",
    hands="Gleti's Gauntlets",
    legs="Gleti's breeches",
    feet="Gleti's boots",
    neck="Light gorget",
    waist="Light belt",
    left_ear="Odr Earring",
    right_ear="Moonshade Earring",
    left_ring="Ilabrat ring",
    right_ring="Cornelia's Ring",
    back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10',}},} 

	sets.ws["Rudra's Storm"] = {
	ammo="Coiste bodhar",
    head="Maculele tiara +2",
    body="Gleti's Cuirass",
    hands="Maxixi Bangles +3",
    legs="Maculele tights +2",
    feet="Gleti's boots",
    neck="Etoile gorget +1",
    waist="Sailfi Belt +1",
    left_ear="Sherida Earring",
    right_ear="Moonshade Earring",
    left_ring="Ilabrat ring",
    right_ring="Cornelia's Ring",
    back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10',}},} 


------------------- JOB ABILITY SETS -------------------

	sets.ja = {} --Leave Empty!

	--Uses: Windower>res>job_abilities
	sets.ja['CorsairRoll'] = {}
	sets.ja['CorsairShot'] = {}
	
	sets.ja['Waltz'] = {
    body="Maxixi Casaque +3",
    feet="Maxixi toe shoes +3",
    neck="Etoile gorget +1",
    back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},}
	
	sets.ja['Jig'] = {
    legs="Horos tights +1",
    feet="Maxixi toe shoes +3",}
	
	sets.ja['Step'] = {
    head="Maxixi Tiara +3",
    hands="Maxixi bangles +3",
    feet="Maxixi toe shoes +3",}
	
	sets.ja['No Foot Rise'] = {
    body="Horos Casaque +1"}
	
	sets.ja['Violent Flourish'] = {
    body="Horos Casaque +1"}
	
	sets.ja['Reverse Flourish'] = {
    hands="Maculele bangles +2",
	back="Toetapper mantle"}
	
	sets.ja['Climactic flourish'] = {
    head="Maculele tiara +2"}
	
	sets.ja['BloodPactRage'] = {}
	sets.ja['BloodPactWard'] = {}
	sets.ja['PetCommand'] = {}
	sets.ja['Monster'] = {}

	-- Single Ability examples below!
	-- Replace the x with desired Ability name!

	sets.ja['Samba'] = {
	head="Maxixi tiara +3",
	back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},}
	
	sets.ja['x'] = {}
	
	sets.ja['x'] = {}
	

	-- We can set an Ability to a set we already created!
	-- See example below!

--	sets.ja['Provoke'] = sets.hate.high
	
	

--------------------- FASTCAST SETS --------------------

	sets.fc = {} --Leave Empty!

	-- FC set here
	sets.fc.standard = {
	right_ear="Loquac. Earring",
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
