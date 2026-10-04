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
	sub="Genmei shield",
--	ammo="@???",  --can put defensive ammo slot item here
    head="Fili Calot +2",
    body="Fili hongreline +2",
    hands="Fili Manchettes +2",
    legs="Fili Rhingrave +2",
    feet="Fili Cothurnes +2",
    neck="Sanctity necklace",
    waist="Null belt",
    left_ear="Alabaster Earring",
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
	WEP_Set_Names = {"NeagTP","NeagAcc","TwashTP","TwashAcc","Tauret",}
	
	-- Weapon sets go below! Here are samples!
	
	--Neagling with 1000TP bonus
	sets.wep.NeagTP = {
	main="Naegling",
    sub="Fusetto +2",}	
	WSLIST.NeagTP = {"Savage Blade","@???","@???","@???"}  --Fill out the WSs you want here!

	--Neagling with ACC dagger
	sets.wep.NeagAcc = {
	main="Naegling",
    sub="Gleti's knife",}
	WSLIST.NeagAcc = {"Savage Blade","@???","@???","@???"}

	--Twash with 1000TP bonus
	sets.wep.TwashTP = {
	main="Twashtar",
    sub="Fusetto +2",}
	WSLIST.TwashTP = {"Rudra's Storm","@???","@???","@???"}
	
	--Twash with ACC dagger
	sets.wep.TwashACC = {
	main="Twashtar",
    sub="Gleti's knife",}
	WSLIST.TwashACC = {"Rudra's Storm","@???","@???","@???"}
	
	--Tauret
	sets.wep.Tauret = {
	main="Tauret",
    sub="Gleti's knife",}
	WSLIST.Tauret = {"Evisceration","@???","@???","@???"}


	
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
	TP_Set_Names = {"DT","TP","MaxDT","TH",}
	
	-- TP sets go below! Here are samples!
	
	--Damage Taken Reduction
	sets.tp.DT = {
--	ammo="@???",  --can put offensive ammo slot item here
	head="Fili Calot +2",
    body="Inyanga Jubbah +2",
    hands="Fili Manchettes +2",
    legs="Fili Rhingrave +2",
    feet="Fili Cothurnes +2",
    neck="Sanctity necklace",
    waist="Null belt",
    left_ear="Alabaster Earring",
    right_ear="Dominance Earring",
    left_ring="Murky Ring",
    right_ring="Shneddick Ring",
    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},}	

	--Multi-Hit, Store TP, Attack Speed
	sets.tp.TP = {
--	ammo="@???",  --can put offensive ammo slot item here
	head="Fili Calot +2",
    body="Inyanga Jubbah +2",
    hands="Fili Manchettes +2",
    legs="Fili Rhingrave +2",
    feet="Fili Cothurnes +2",
    neck="Bard's charm +1",
    waist="Sailfi belt +1",
    left_ear="Dedition earring",
    right_ear="Brutal earring",
    left_ring="Chirich ring +1",
    right_ring="Ilabrat ring",			
    back="Null belt",}
	
	--Max DT+MEVA ----------careful, may lose a lot of HP on switch due to Nyame-- have to check!!!---
	sets.idle.MaxDT = {
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

	--Treasure Hunter
	sets.tp.TH = {
	ammo="Perfect lucky egg",
	head="Wh. rarab cap +1",
    body="Inyanga Jubbah +2",
    hands="Fili Manchettes +2",
    legs="Fili Rhingrave +2",
    feet="Fili Cothurnes +2",
    neck="Bard's charm +1",
    waist="Sailfi belt +1",
    left_ear="Dedition earring",
    right_ear="Brutal earring",
    left_ring="Chirich ring +1",
    right_ring="Ilabrat ring",			
    back="Null belt",}	





----------------------- WS SETS ------------------------
	
	sets.ws = {} --Leave Empty!

	-- WS set here
	sets.ws.standard = {
--	ammo="@???",  --can put offensive ammo slot item here
	head="Nyame helm",
    body="bihu justaucorps +2",
    hands="Nyame gauntlets",
    legs="Nyame flanchard",
    feet="Nyame sollerets",
    neck="Bard's charm +1",
    waist="Sailfi belt +1",
    left_ear="Alabaster Earring",
    right_ear="Moonshade earring",
    left_ring="Cornelia's ring",
    right_ring="Ilabrat ring",			
    back="Null belt",}  
	
	sets.ws['Savage blade'] = {
--	ammo="@???",  --can put offensive ammo slot item here
	head="Nyame helm",
    body="bihu justaucorps +2",
    hands="Nyame gauntlets",
    legs="Nyame flanchard",
    feet="Nyame sollerets",
    neck="Bard's charm +1",
    waist="Sailfi belt +1",
    left_ear="Alabaster Earring",
    right_ear="Moonshade earring",
    left_ring="Cornelia's ring",
    right_ring="Ilabrat ring",			
    back="Null belt",}

	sets.ws['Evisceration'] = 
--	ammo="@???",  --can put offensive ammo slot item here
    head="Nyame helm",
    body="bihu justaucorps +2",
    hands="Nyame gauntlets",
    legs="Nyame flanchard",
    feet="Nyame sollerets",
    neck="Bard's charm +1",
    waist="light belt",
    left_ear="Alabaster Earring",
    right_ear="Moonshade earring",
    left_ring="Cornelia's ring",
    right_ring="Ilabrat ring",			
    back="Null belt",}
	
	sets.ws["Rudra's storm"] = {
--	ammo="@???",  --can put offensive ammo slot item here
    head="Nyame helm",
    body="bihu justaucorps +2",
    hands="Nyame gauntlets",
    legs="Nyame flanchard",
    feet="Nyame sollerets",
    neck="Bard's charm +1",
    waist="light belt",
    left_ear="Alabaster Earring",
    right_ear="Moonshade earring",
    left_ring="Cornelia's ring",
    right_ring="Ilabrat ring",			
    back="Null belt",} 



------------------- JOB ABILITY SETS -------------------

	sets.ja = {} --Leave Empty!

	--Uses: Windower>res>job_abilities
	--sets.ja['CorsairRoll'] = {}
	--sets.ja['CorsairShot'] = {}
	
--	sets.ja['Waltz'] = {'@???'}  --Waltz potency gear?
	
	--sets.ja['Jig'] = {}
	--sets.ja['Step'] = {}
	--sets.ja['BloodPactRage'] = {}
	--sets.ja['BloodPactWard'] = {}
	--sets.ja['PetCommand'] = {}
	--sets.ja['Monster'] = {}

	sets.ja['Soul Voice'] = {legs="Bihu Cannions +2"}
	sets.ja['Nightingale'] = {feet="Bihu Slippers +2"}
	sets.ja['Troubadour'] = {body="Bihu jstcorps. +2"}


	
	

--------------------- FASTCAST SETS --------------------

	sets.fc = {} --Leave Empty!

	-- FC set here (this is a catch all for any spell type you don't have a dedicated FC set for i.e. ninjutsu or cures or whatever)
	sets.fc.standard = {
	main={ name="Kali", augments={'MP+60','Mag. Acc.+20','"Refresh"+1',}},
    sub={ name="Kali", augments={'Mag. Acc.+15','String instrument skill +10','Wind instrument skill +10',}},
--	ammo="@???",  --can put fast cast ammo slot item here
    head="Fili Calot +2",
    body="Inyanga Jubbah +2",
    hands="Gende. Gages +1",
    legs="Aya. Cosciales +2",
    feet="Fili Cothurnes +2",
    neck="Aoidos' Matinee",
    waist="Embla Sash",
    left_ear="Aoidos' Earring",
    right_ear="Loquac. Earring",
    left_ring="Prolix Ring",
    right_ring="Inyanga Ring",
    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},}
	
	--  FC set for ONLY bard songs 
	sets.fc['Singing'] = set_combine(sets.fc.standard, {'@??? add your JSE bard FC gear pieces here'})
	
	--  FC set for ONLY Honor March - MUST INCLUDE MARSYAS OR YOU WON"T BE ABLE TO HONOR MARCH  
	sets.fc['Honor March'] = set_combine(sets.fc['Singing'], { range = '@??? aeonic'})  
	
	--  FC set for ONLY DUMMY songs - MUST INCLUDE 4 song instrument OR YOU WON"T BE ABLE TO OPEN SLOT  
	sets.fc.dummy = set_combine(sets.fc['Singing'], { range = '@??? relic'})
	sets.fc.['dumm1 @???'] = sets.fc.dummy  
	sets.fc.['dumm2 @???'] = sets.fc.dummy
	sets.fc.['dumm3 @???'] = sets.fc.dummy
	sets.fc.['dumm4 @???'] = sets.fc.dummy
	
	
	
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
	
	sets.ma['Healing Magic'] = { 
	main="Daybreak",
    head="Vanya hood",
    body="Kaykaus bilaut +1",
    hands="Kaykaus cuffs +1",
    legs="Vanya slops",
    feet="Vanya clogs",
    neck="Reti pendant",
    waist="Shinjutsu-no-obi +1",
    left_ear="Gifted Earring",
    right_ear="Calamitous Earring",
    left_ring="Prolix Ring",
    right_ring="Inyanga Ring",
    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
	}
	
	sets.ma['Enhancing Magic'] = {'@???'}
	
	--sets.ma['Enfeebling Magic'] = {}
	--sets.ma['Elemental Magic'] = {}
	--sets.ma['Dark Magic'] = {}
	--sets.ma['Summoning Magic'] = {}
	--sets.ma['Ninjutsu'] = {}
	
	sets.ma['Singing'] = {
	main={ name="Kali", augments={'MP+60','Mag. Acc.+20','"Refresh"+1',}},
    sub={ name="Kali", augments={'Mag. Acc.+15','String instrument skill +10','Wind instrument skill +10',}},
	range="Gjallarhorn",
    head="Fili Calot +2",
    body="Fili hongreline +2",
    hands="Fili manchettes +2",
    legs="Aya. Cosciales +2",
    feet="Brioso Slippers +3",
    neck="Moonbow Whistle +1",
    waist="Embla Sash",
    left_ear="Aoidos' Earring",
    right_ear={ name="Fili Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Damage taken-3%',}},
    left_ring="Prolix Ring",
    right_ring="Inyanga Ring",
    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},}

	-- Single Spell examples below!

	
	sets.ma.["Honor march"] = set_combine(sets.ma['Singing'], { range = '@??? aeonic'})
	
	sets.ma['Horde Lullaby II'] = {}
	
	sets.ma['Foe Lullaby II'] = {}
	

	
	

	
------------------- SONG SETS --------------------

	sets.brd = {} --Leave Empty!

	
	--[[Buff set + gear item--
	Minne - 	Mousai seraweels +1 (only)
	Threnody -	Mousai Manteel/+1
	Scherzo - 	Fili Cothurnes/+1/+2/+3
	Carol - 	Mousai Gages/+1
	Mambo - 	Mousai Crackows/+1
	Etude - 	Mousai Turban/+1
	Paeon - 	Brioso Roundlet/+1/+2/+3	
]]



	--buffs
	sets.brd.buff = set_combine(sets.ma['Singing'], { '@???'})	

	sets.brd.minne = set_combine(sets.brd.buff, {'@???'})
	
	sets.brd.scherzo = set_combine(sets.brd.buff, {'@???'})
	
	sets.brd.carol = set_combine(sets.brd.buff, {'@???'})
	
	sets.brd.mambo = set_combine(sets.brd.buff, {'@???'})
	
	sets.brd.etude = set_combine(sets.brd.buff, {'@???'})
	
	sets.brd.paeon = set_combine(sets.brd.buff, {'@???'})	
	
	--debuffs
	sets.brd.debuff = set_combine(sets.ma['Singing'], { '@???'})	
	
	sets.brd.threnody = set_combine(sets.brd.debuff, {'@???'})
		
	--dummy
	sets.brd.dummy = set_combine(sets.ma['Singing'], { range = '@??? relic'})	




	
end



--[[
-------------------------
--   BRD Song List   --
-------------------------
Ballad -	Mage's ballad, Mage's ballad II, Mage's ballad III
Minne - 	Knight's minne, Knight's minne II, Knight's minne III, Knight's minne IV, Knight's minne V
Minuet - 	Valor Minuet, Valor Minuet II, Valor Minuet III, Valor Minuet IV, Valor Minuet V
Madrigal - 	Sword madrigal, Blade madrigal
Prelude - 	hunter's prelude, Archer's prelude
March - 	Victory march, Advancing march, Honor march
Lullaby - 	Foe lullaby, Foe lullaby II, Horde lullaby, Horde lullaby II
Threnody - 	fire threnody, ice threnody, wind threnody, earth threnody, lightning threnody, water threnody, light threnody, dark threnody, 
			fire threnody II, ice threnody II, wind threnody II, earth threnody II, lightning threnody II, water threnody II, light threnody II, dark threnody II
Scherzo - 	Sentinel's scherzo
Carol - 	fire carol, ice carol, wind carol, earth carol, lightning carol, water carol, light carol, dark carol II
Carol - 	fire carol II, ice carol II, wind carol II, earth carol II, lightning carol II, water carol II, light carol II, dark carol II
Mambo - 	Sheepfoe, Dragonfoe
Etude - 	Sinewy, dextrous, vivacious, quick, learned, spirited, enchanting, herculean, uncanny, vital, swift, sage, logical, bewitching
Paeon - 	Army's Paeon I-VI
Dummy - 	probablly use Paeon
]]

-- @????  You gotta stick these songs from above into the spots below please!

-------------------------
--   BRD Spells List   --
-------------------------

--Do NOT include lullabys or honor march in any of these lists below!  Each song should only be in a single list!
brd_buff = S {"song 1", "song 2", "@???"} 

brd_debuff = S {"song 1", "song 2", "@???"} 

brd_minne = S {"song 1", "song 2", "@???"} 

brd_threnody = S {"song 1", "song 2", "@???"} 

brd_scherzo = S {"song 1", "song 2", "@???"} 

brd_carol = S {"song 1", "song 2", "@???"} 

brd_mambo = S {"song 1", "song 2", "@???"} 

brd_etude = S {"song 1", "song 2", "@???"} 

brd_paeon = S {"song 1", "song 2", "@???"} 

--Do not include your dummy songs in any of the above lists!
brd_dummy = S {"song 1", "song 2", "@???", "@???"}



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
	elseif brd_minne:contains(spell.english) then
		equip(sets.brd.minne)	
	elseif brd_threnody:contains(spell.english) then
		equip(sets.brd.threnody)	
	elseif brd_scherzo:contains(spell.english) then
		equip(sets.brd.scherzo)	
	elseif brd_carol:contains(spell.english) then
		equip(sets.brd.carol)	
	elseif brd_mambo:contains(spell.english) then
		equip(sets.brd.mambo)	
	elseif brd_etude:contains(spell.english) then
		equip(sets.brd.etude)	
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
