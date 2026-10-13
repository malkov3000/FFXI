------------------------------------------------------------------
------------------------------------------------------------------
--Remane file to your character's name + "_" + job abbreviation---
------------------------------------------------------------------
--Example: Themyscira_BLU.lua ------------------------------------
----------------------------------------------------------d(^^d)--
------------------------------------------------------------------


------------------------------------LOCKSTYLE------------------------------------------
local lockstyle = 4 -- Uses the in-game gearsets! Set # to desired lockstyle look!
send_command('wait 4; input /lockstyleset ' .. lockstyle)

function sub_job_change(new, old)
    send_command('wait 2; input /lockstyleset ' .. lockstyle)
end

------------------------------------MACRO BOOK-----------------------------------------
send_command('input /macro book 4') -- Update # to desired starting macro book!
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
	ammo="Staunch tathlum",
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
	sets.idle.town = sets.idle.dt  


	
	

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
	-- You can remove sets from this list too!
	WEP_Set_Names = {"TwashTP","TwashAcc","Tauret","Karambit",}
	
	-- Weapon sets go below! Here are samples!
	

	--Twash with 1000TP bonus
	sets.wep.TwashTP = {
	main="Twashtar",
    sub="Fusetto +2",}
	WSLIST.TwashTP = {"Aeolian Edge","Evisceration","Pyrrhic Kleos","Rudra's Storm"}
	
	--Twash with ACC dagger
	sets.wep.TwashAcc = {
	main="Twashtar",
    sub="Gleti's knife",}
	WSLIST.TwashAcc = {"Aeolian Edge","Evisceration","Pyrrhic Kleos","Rudra's Storm"}
	
	--Tauret
	sets.wep.Tauret = {
	main="Tauret",
    sub="Gleti's knife",}
	WSLIST.Tauret = {"Aeolian Edge","Evisceration","Pyrrhic Kleos","Rudra's Storm"}
	
	--Karambit
	sets.wep.Karambit = {
	main="Karambit",
	sub = empty,}
	WSLIST.Karambit = {"Spinning Attack","Shoulder Tackle","Backhand Blow","Asuran Fists"}


	
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
	TP_Set_Names = {"TP","DT","MaxDT","TH",}
	
	-- TP sets go below! Here are samples!
	
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
	
	
	sets.tp.MaxDT = {
	ammo="Staunch tathlum",
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
    left_ear="Moonshade earring",
    right_ear="Maculele earring",
    left_ring="Ilabrat Ring",
    right_ring="Cornelia's Ring",
    back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10',}},}   
	
	sets.ws['Evisceration'] = {
	ammo="Charis feather",
    head="Blistering sallet +1",
    body="Gleti's Cuirass",
    hands="Gleti's Gauntlets",
    legs="Gleti's breeches",
    feet="Gleti's boots",
    neck="Light gorget",
    waist="Light belt",
    left_ear="Moonshade Earring",
    right_ear="Odr earring",
    left_ring="Ilabrat ring",
    right_ring="Cornelia's Ring",
    back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10',}},}

	sets.ws["Rudra's Storm"] = {
	ammo="Coiste bodhar",
    head="Maculele tiara +2",
    body="Gleti's Cuirass",
    hands="Maxixi Bangles +3",
    legs="Maculele tights +2",
    feet="Nyame sollerets",
    neck="Etoile gorget +1",
    waist="Sailfi Belt +1",
    left_ear="Moonshade earring",
    right_ear="Maculele earring",
    left_ring="Ilabrat ring",
    right_ring="Cornelia's Ring",
    back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10',}},} 
	
	sets.ws["Pyrrhic Kleos"] = {
	ammo="Coiste bodhar",
    head="Gleti's mask",
    body="Gleti's Cuirass",
    hands="Gleti's Gauntlets",
    legs="Gleti's breeches",
    feet="Gleti's boots",
    neck="Light gorget",
    waist="Light belt",
    left_ear="Moonshade Earring",
    right_ear="Odr earring",
    left_ring="Ilabrat ring",
    right_ring="Cornelia's Ring",
    back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10',}},}

	sets.ws["Aeolian Edge"] = {
	ammo="Oshasha's treatise",  
	head="Nyame helm",
    body="Nyame mail",
    hands="Nyame gauntlets",
    legs="Nyame flanchard",
    feet="Nyame sollerets",
    neck="Etoile gorget +1",
    waist="Sailfi belt +1",
    left_ear="Alabaster Earring",
    right_ear="Moonshade earring",
    left_ring="Cornelia's ring",
    right_ring="Ilabrat ring",			
    back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Crit.hit rate+10',}},}	



------------------- JOB ABILITY SETS -------------------

	sets.ja = {} --Leave Empty!

	--Uses: Windower>res>job_abilities
	--sets.ja['CorsairRoll'] = {}
	--sets.ja['CorsairShot'] = {}
	
	sets.ja['Waltz'] = {
    ammo="Yamarang", 
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
	
	
	--sets.ja['BloodPactRage'] = {}
	--sets.ja['BloodPactWard'] = {}
	--sets.ja['PetCommand'] = {}
	--sets.ja['Monster'] = {}
	
	sets.ja['BloodPactRage'] = {}
	sets.ja['BloodPactWard'] = {}
	sets.ja['PetCommand'] = {}
	sets.ja['Monster'] = {}

	-- Single Ability examples below!
	-- Replace the x with desired Ability name!

	sets.ja['Samba'] = {
	head="Maxixi tiara +3",
	back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10',}},}


	
	

--------------------- FASTCAST SETS --------------------

	sets.fc = {} --Leave Empty!

	-- FC set here (this is a catch all for any spell type you don't have a dedicated FC set for i.e. ninjutsu or cures or whatever)
	sets.fc.standard = {
	right_ear="Loquac. Earring",
    right_ring="Prolix Ring",}
	
	--  FC set for ONLY bard songs 
	sets.fc['Singing'] = {}


	
	
	
	--Uses: Windower>res>spells AND Windower>res>skills    (Need to make FC set for other spells)
	--sets.fc['Blue Magic'] = {}
	--sets.fc['Divine Magic'] = {}
	--sets.fc['Healing Magic'] = {}
	--sets.fc['Enhancing Magic'] = {}
	--sets.fc['Enfeebling Magic'] = {}
	--sets.fc['Elemental Magic'] = {}
	--sets.fc['Dark Magic'] = {}
	--sets.fc['Summoning Magic'] = {}
	--sets.fc['Ninjutsu'] = {}



--------------------- MAGIC SETS -----------------------

	sets.ma = {} --Leave Empty!
	
	--Uses: Windower>res>spells AND Windower>res>skills
	--sets.ma['Divine Magic'] = {}
	
	sets.ma['Divine Magic'] = {}
	sets.ma['Healing Magic'] = {}
	sets.ma['Enhancing Magic'] = {}
	sets.ma['Enfeebling Magic'] = {}
	sets.ma['Elemental Magic'] = {}
	sets.ma['Dark Magic'] = {}
	sets.ma['Summoning Magic'] = {}
	sets.ma['Ninjutsu'] = {}



	-- Single Spell examples below!

	
	
	

	
------------------- SONG SETS --------------------

	sets.brd = {} --Leave Empty!

	
	--[[Buff set + gear item--
	Minne - 	Mousai seraweels +1 (only)
	Threnody -	Mousai Manteel/+1
	Scherzo - 	Fili Cothurnes +2
	Carol - 	Mousai Gages/+1
	Mambo - 	Mousai Crackows/+1
	Etude - 	Mousai Turban/+1
	Paeon - 	Brioso Roundlet +3	
]]



	--buffs
	--sets.brd.buff = sets.ma['Singing']

	--sets.brd.Minne = sets.brd.buff -- set_combine(sets.brd.buff, {'@???'})
	
	--sets.brd.scherzo = set_combine(sets.brd.buff, {Feet='Fili Cothurnes +2'})
	
	--sets.brd.Carol = sets.brd.buff -- set_combine(sets.brd.buff, {'@???'})
	
	--sets.brd.mambo = sets.brd.buff -- set_combine(sets.brd.buff, {'@???'})
	
	--sets.brd.Etude = sets.brd.buff -- set_combine(sets.brd.buff, {'@???'})
	
	--sets.brd.paeon = set_combine(sets.brd.buff, {Head='Brioso Roundlet +3'})	
	
	--debuffs
	--sets.brd.debuff = set_combine(sets.ma['Singing'], {}	
	
	--sets.brd.Threnody = sets.brd.debuff--set_combine(sets.brd.debuff, {'@???'})
		
	--dummy
	--sets.brd.dummy = set_combine(sets.idle.dt, { ammo = empty, range = 'Daurdabla'})	




	
end



--[[
-------------------------
--   BRD Song List   --
-------------------------
--Ballad -	Mage's ballad, Mage's ballad II, Mage's ballad III
--Minne - 	Knight's Minne, Knight's Minne II, Knight's Minne III, Knight's Minne IV, Knight's Minne V
--Minuet - 	Valor Minuet, Valor Minuet II, Valor Minuet III, Valor Minuet IV, Valor Minuet V
--Madrigal - 	Sword madrigal, Blade madrigal
--Prelude - 	hunter's prelude, Archer's prelude
March - 	Victory march, Advancing march, Honor march
--Lullaby - 	Foe lullaby, Foe lullaby II, Horde lullaby, Horde lullaby II
--Threnody - 	fire Threnody, ice Threnody, wind Threnody, earth Threnody, lightning Threnody, water Threnody, light Threnody, dark Threnody, 
			fire Threnody II, ice Threnody II, wind Threnody II, earth Threnody II, lightning Threnody II, water Threnody II, light Threnody II, dark Threnody II
--Scherzo - 	Sentinel's scherzo
--Carol - 	fire Carol, ice Carol, wind Carol, earth Carol, lightning Carol, water Carol, light Carol, dark Carol II
--Carol - 	fire Carol II, ice Carol II, wind Carol II, earth Carol II, lightning Carol II, water Carol II, light Carol II, dark Carol II
--Mambo - 	Sheepfoe, Dragonfoe
--Etude - 	Sinewy, dextrous, vivacious, quick, learned, spirited, enchanting, herculean, uncanny, vital, swift, sage, logical, bewitching
--Paeon - 	Army's Paeon I-VI
--Dummy - 	probablly use Paeon
]]

-- @????  You gotta stick these songs from above into the spots below please!

-------------------------
--   BRD Spells List   --
-------------------------

--Do NOT include lullabys or honor march in any of these lists below!  Each song should only be in a single list!
brd_buff = S {"Mage's Ballad", "Mage's Ballad II", "Mage's Ballad III", "Valor Minuet", "Valor Minuet II", "Valor Minuet III", "Valor Minuet IV", "Valor Minuet V", "Sword Madrigal", "Blade Madrigal", "Hunter's Prelude", "Archer's Prelude", "Valor Minuet", "Advancing March", "Victory March",} 

brd_debuff = S {"Foe Requiem", "Foe Requiem I", "Foe Requiem II", "Foe Requiem III", "Foe Requiem IV", "Foe Requiem V", "Foe Requiem VI", "Foe Requiem VII","Knight's Elegy", "Magic Finale", "Battlefield Elegy", "Carnage Elegy", "Maiden's Virelai", "Pine Nocturne",} 

brd_Minne = S {"Knight's Minne", "Knight's Minne II", "Knight's Minne III", "Knight's Minne IV", "Knight's Minne V",} 

brd_Threnody = S {"Fire Threnody", "Fire Threnody II", "Ice Threnody", "Ice Threnody II", "Wind Threnody", "Wind Threnody II", "Earth Threnody", "Earth Threnody II", "Lightning Threnody", "Lightning Threnody II", "Water Threnody", "Water Threnody II", "Light Threnody", "Light Threnody II", "Dark Threnody", "Dark Threnody II",} 

brd_scherzo = S {"Sentinel's Scherzo",} 

brd_Carol = S {"Fire Carol", "Fire Carol II", "Ice Carol", "Ice Carol II", "Wind Carol", "Wind Carol II", "Earth Carol", "Earth Carol II", "Lightning Carol", "Lightning Carol II", "Water Carol", "Water Carol II", "Light Carol", "Light Carol II", "Dark Carol", "Dark Carol II",} 

brd_mambo = S {"Sheepfoe Mamba", "Dragonfoe Mambo",} 

brd_Etude = S {"Sinewy Etude", "Dextrous Etude", "Vivacious Etude"," Quick Etude", "Learned Etude", "Spirited Etude", "Enchanting Etude", "Herculean Etude", "Uncanny Etude", "Vital Etude", "Swift Etude", "Sage Etude", "Logical Etude", "Bewitching Etude",} 

brd_paeon = S {"Army's Paeon V", "Army's Paeon VI",} 

--Do not include your dummy songs in any of the above lists!
brd_dummy = S {"Army's Paeon", "Army's Paeon II", "Army's Paeon III", "Army's Paeon IV"}



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
	if spell.action_type == 'Magic' then 
		equip(sets.fc.standard) 
	end
	if sets.fc[spell.skill] then 
		equip(sets.fc[spell.skill]) 
	end
	if sets.fc[spell.english] then 
		equip(sets.fc[spell.english]) 
	end
	if brd_dummy:contains(spell.english) then
		equip(sets.fc.dummy) 
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
	
-- Songs lists
	if brd_buff:contains(spell.english) then
		equip(sets.brd.buff)  
	elseif brd_debuff:contains(spell.english) then
		equip(sets.brd.debuff)	
	elseif brd_Minne:contains(spell.english) then
		equip(sets.brd.Minne)	
	elseif brd_Threnody:contains(spell.english) then
		equip(sets.brd.Threnody)	
	elseif brd_scherzo:contains(spell.english) then
		equip(sets.brd.scherzo)	
	elseif brd_Carol:contains(spell.english) then
		equip(sets.brd.Carol)	
	elseif brd_mambo:contains(spell.english) then
		equip(sets.brd.mambo)	
	elseif brd_Etude:contains(spell.english) then
		equip(sets.brd.Etude)	
	elseif brd_paeon:contains(spell.english) then
		equip(sets.brd.paeon)				
	elseif brd_dummy:contains(spell.english) then
		equip(sets.brd.dummy)		
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
--- Toggle for TP and WEAPON set modes
---

function self_command(command)
    if command == 'toggletp' then 
        TP_Index = TP_Index +1 
        if TP_Index > #TP_Set_Names then TP_Index = 1 end 
        send_command('@input /echo ----- Engaged Set changed to -----> '..TP_Set_Names[TP_Index])
        equip(sets.tp[TP_Set_Names[TP_Index]]) 
    elseif command == 'togglewep' then 
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
        windower.add_to_chat(121, '--- Gearswap cleanup successful! ---')
    end
end 
