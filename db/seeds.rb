# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

# create sample users
user_list = [
  [ "tankman", "kevin@foo.net", "password", true ],
  [ "george", "george@patton.net", "password", false ],
  [ "Dwight", "ike@foo.net", "password", false ]
]

user_list.each do |username, email, pw, superadmin|
  User.create!(username: username, email: email, password: pw, superadmin: superadmin)
end

u1 = User.find_by_email("kevin@foo.net")

# populate eras table
era_list = [
	['World War 2, 1939-45', 'Engage in desperate battles of breakthrough, exploitation and pursuit as you guide your nation to victory. Units include infantry, engineers, artillery, and tanks. Special powers include railroad guns, dreaded heavy tanks, and even carpet bombing!', 'division', 'battalion'],
	['Napoleonic Wars, 1799-1815', 'Will you conquer Europe, or turn back the Gallic Hordes?  Units include infantry (in line, column and square), field and siege artillery, light and heavy cavalry. Special powers include bayonnet charges, cannister fire, and forcing your opponent to surrender!', 'corps', 'division'],
	['US Civil War, 1861-65', 'Will you fight to preserve the Union, or to raise the Stars &amp; Bars? Units include infantry (in line, column and in breastworks), field artillery, and cavalry. Special powers include repeating rifles, cannister fire, gatling guns, and the Rebel Yell!', 'corps', 'brigade'],
	['Ancient Rome, 250BC-200AD', 'Will you fight for the glory of Rome, or to resist the spread of their Empire? Units include skirmishers, heavy infantry, cavalry, and siege weapons. Special powers include fire weapons, berserkers, war elephants, and the Roman tortoise formation!', 'legion', 'cohort'],
	['Arab-Israeli Wars, 1948-73', 'Will you fight to save the Jewish homeland, or to return Palestine to the Arabs? Units include infantry, engineers, artillery, and tanks. Special powers include anti-tank missiles, air-mobile assaults, and close-air support!', 'division', 'battalion'],
	['NATO-Soviet WW3, 1987', 'Will you fight to conquer the corrupt Western Democracies, or to throw back the Soviet hordes? Units include infantry, engineers, artillery, and tanks. Special powers include attack helicopters, close-air support, and even dreaded chemical weapons!', 'division', 'battalion']
]

era_list.each do |name, description, ech1, ech2|
  Era.create!(name: name, description: description, ech1_name: ech1, ech2_name: ech2)
end

era1 = Era.find_by_name('World War 2, 1939-45')

# populate Nation list
nation_list = [
	['United States', 'us45.png', 1],
	['Great Britain', 'uk45.png', 1],
	['Germany', 'ger45.png', 1],
	['Soviet Union', 'sov45.png', 1],
	['French Empire', 'fr17.png', 2],
	['Coalition Eng-Aus-Pru-Rus', 'coal17.png', 2],
	['United States (CW)', 'us63.png', 3],
	['Confederate States (CW)', 'cs63.png', 3],
	['Rome', 'rome.png', 4],
	['Carthage', 'carth.png', 4],
	['Gauls', 'gaul.png', 4],
	['Huns', 'huns.png', 4],
	['Israel', 'isr.png', 5],
	['Egypt-Syria', 'egsyr.png', 5],
	['NATO', 'nato.png', 6],
	['Soviet Bloc', 'sov45.png', 6]
]

nation_list.each do |name, flag_img, eranum|
  Nation.create!(name: name, flag_img: flag_img, era_id: eranum)
end

# populate UnitClass list
unitclass_list = [
	["Unassigned", "icon-blank.png", "New echelon2 unit"],
	["Infantry", "icon-inf.png", "Infantry attacks in lines to suppress or pin opposing troops. In the defense, they dig in to prevent enemy passage."],
	["Engineers", "icon-engr.png", "Engineers are specialized troops who clear obstacles (e.g., minefields) to facilitate movement in the attack, or prevent movement in the defense."],
	["Artillery", "icon-arty.png", "Artillery fires high explosive to suppress or destroy enemy troops or defenses. In the defense, it slows the enemy advance by making troops take cover."],
	["Cavalry/Tank", "icon-mobile.png", "Mobile troops on horse or in vehicles attack to break, pursue and surround the enemy. In the defense, they work to counter enemy mobile troops."],
	["Anti Mobile", "icon-at.png", "Anti-Mobile troops work only in the defense, and target enemy cavalry or tanks to slow or stop their advance."],
	["Recon", "icon-recon.png", "Reconnaisance troops expose the presence and movement of enemy troops, and reveal the layout of terrain to assist the commander in planning the battle."],
	["Special Unit1", "icon-spec1.png", "Units temporarily assigned for special effect on one turn"],
	["Special Unit2", "icon-spec2.png", "Units temporarily assigned for special effect on one turn"]
]

unitclass_list.each do |name, icon, description|
	UnitClass.create!(name: name, icon_img: icon, description: description)
end

# populate UnitType list
unittype_list = [
	["Unassigned", "1", "1","ww2_uns.png"],
	["US Infantry", "1", "2","usww2_inf.png"],
	["Combat engineers", "1", "3","usww2_eng.png"],
	["155mm Long Tom", "1", "4","usww2_arty.png"],
	["M18 Hellcat", "1", "5","usww2_atg.png"],
	["M4 Medium Tank", "1", "6","usww2_tank.png"],
	["M8 Armored Car", "1", "7","usww2_recon.png"],
	["Air Strike, P47 Fighters", "1", "8","usww2_spec1.png"],
	["Heavy Bombers, B17", "1", "9","usww2_spec2.png"],
	["Unassigned", "2", "1","ww2_uns.png"],
	["British Infantry", "2", "2","gbww2_inf.png"],
	["Sappers", "2", "3","gbww2_eng.png"],
	["25 Pounder OQF", "2", "4","gbww2_arty.png"],
	["17pdr AT gun", "2", "5","gbww2_atg.png"],
	["Cromwell Medium Tank", "2", "6","gbww2_tank.png"],
	["Humber Armored Car", "2", "7","gbww2_recon.png"],
	["Air Strike, RAF Typhoon", "2", "8","gbww2_spec1.png"],
	["Heavy Bombers, Lancaster", "2", "9","gbww2_spec2.png"],
	["Unassigned", "3", "1","ww2_uns.png"],
	["Panzer Grenadiers", "3", "2","gerww2_inf.png"],
	["Pioneers", "3", "3","gerww2_eng.png"],
	["15cm Howitzer", "3", "4","gerww2_arty.png"],
	["75mm PaK AT", "3", "5","gerww2_atg.png"],
	["PanzerIV Medium Tank", "3", "6","gerww2_tank.png"],
	["Sdk234 Puma", "3", "7","gerww2_recon.png"],
	["Nebelwerfers", "3", "8","gerww2_spec1.png"],
	["Heavy Tank, Tiger", "3", "9","gerww2_spec2.png"],
	["Unassigned", "4", "1","ww2_uns.png"],
	["Soviet Infantry", "4", "2","sovww2_inf.png"],
	["Sappers", "4", "3","sovww2_eng.png"],
	["152mm Howitzer", "4", "4","sovww2_arty.png"],
	["76.2mm Divisional Gun", "4", "5","sovww2_atg.png"],
	["T-34 Medium Tank", "4", "6","sovww2_tank.png"],
	["BA-10 Armored Car", "4", "7","sovww2_recon.png"],
	["Heavy Tank, IS-2", "4", "8","sovww2_spec1.png"],
	["BM-30 Katyusha", "4", "9","sovww2_spec2.png"],
	["Unassigned", "5", "1","frnnap_uns.png"],
	["Musket Infantry", "5", "2","frnnap_inf.png"],
	["Combat engineers", "5", "3","frnnap_eng.png"],
	["12pdr Hvy Arty", "5", "4","frnnap_arty.png"],
	["Battery Canister fire", "5", "5","frnnap_atg.png"],
	["Cuirassiers", "5", "6","frnnap_tank.png"],
	["Scouts", "5", "7","frnnap_recon.png"],
	["24pdr Howitzers", "5", "8","frnnap_spec1.png"],
	["TBA", "5", "9","frnnap_spec2.png"],
	["Unassigned", "6", "1","coalnap_uns.png"],
	["Musket Infantry", "6", "2","coalnap_inf.png"],
	["Combat engineers", "6", "3","coalnap_eng.png"],
	["12pdr Hvy Arty", "6", "4","coalnap_arty.png"],
	["Battery Canister fire", "6", "5","coalnap_atg.png"],
	["Lancers", "6", "6","coalnap_tank.png"],
	["Scouts", "6", "7","coalnap_recon.png"],
	["24pdr Howitzers", "6", "8","coalnap_spec1.png"],
	["TBA", "6", "9","coalnap_spec2.png"],
	["Unassigned", "7", "1","usauscw_uns.png"],
	["Union Volunteer Infantry", "7", "2","usauscw_inf.png"],
	["Unavailable", "7", "3","usauscw_eng.png"],
	["3in Ordnance Rifle", "7", "4","usauscw_arty.png"],
	["12pdr Napoleon (canister)", "7", "5","usauscw_atg.png"],
	["Unavailable", "7", "6","usauscw_tank.png"],
	["Sheridans Cavalry", "7", "7","usauscw_recon.png"],
	["20pdr Parrot Rifles", "7", "8","usauscw_spec1.png"],
	["Repeating Rifle Infantry", "7", "9","usauscw_spec2.png"],
	["Unassigned", "8", "1","csauscw_uns.png"],
	["Rebel Volunteer Infantry", "8", "2","csauscw_inf.png"],
	["Unavailable", "8", "3","csauscw_eng.png"],
	["3in Ordnance Rifle", "8", "4","csauscw_arty.png"],
	["12pdr Napoleon (canister)", "8", "5","csauscw_atg.png"],
	["Unavailable", "8", "6","csauscw_tank.png"],
	["Stuarts Cavalry", "8", "7","csauscw_recon.png"],
	["Whitworth Guns", "8", "8","csauscw_spec1.png"],
	["Bedford Forrests Cavalry", "8", "9","csauscw_spec2.png"],
	["Unassigned", "9", "1","romerrep_uns.png"],
	["Legionaries", "9", "2","romerrep_inf.png"],
	["Engineers", "9", "3","romerrep_eng.png"],
	["Onager (catapult)", "9", "4","romerrep_arty.png"],
	["Scorpio (ballista)", "9", "5","romerrep_atg.png"],
	["Equites Cavalry", "9", "6","romerrep_tank.png"],
	["Exploratores", "9", "7","romerrep_recon.png"],
	["Polybolos (repeating ballista)", "9", "8","romerrep_spec1.png"],
	["Trebuchet (fire)", "9", "9","romerrep_spec2.png"],
	["Unassigned", "10", "1","carthrrep_uns.png"],
	["Phalanx", "10", "2","carthrrep_inf.png"],
	["Unavailable", "10", "3","carthrrep_eng.png"],
	["Unavailable", "10", "4","carthrrep_arty.png"],
	["Numidian Light Cavalry", "10", "5","carthrrep_atg.png"],
	["Celtic Heavy Cavalry", "10", "6","carthrrep_tank.png"],
	["Mounted Scouts", "10", "7","carthrrep_recon.png"],
	["War Elephant", "10", "8","carthrrep_spec1.png"],
	["War Elephant (archers)", "10", "9","carthrrep_spec2.png"],
	["Unassigned", "11", "1","gaulrrep_uns.png"],
	["Broadswordsmen", "11", "2","gaulrrep_inf.png"],
	["Unavailable", "11", "3","gaulrrep_eng.png"],
	["Unavailable", "11", "4","gaulrrep_arty.png"],
	["Celtic Light Cavalry", "11", "5","gaulrrep_atg.png"],
	["Celtic Heavy Cavalry", "11", "6","gaulrrep_tank.png"],
	["Mounted Scouts", "11", "7","gaulrrep_recon.png"],
	["Berserkers", "11", "8","gaulrrep_spec1.png"],
	["TBA", "11", "9","gaulrrep_spec2.png"],
	["Unassigned", "12", "1","hunrrep_uns.png"],
	["Allied spearmen", "12", "2","hunrrep_inf.png"],
	["Unavailable", "12", "3","hunrrep_eng.png"],
	["Unavailable", "12", "4","hunrrep_arty.png"],
	["Horse Archers", "12", "5","hunrrep_atg.png"],
	["Hun Lancers", "12", "6","hunrrep_tank.png"],
	["Mounted Scouts", "12", "7","hunrrep_recon.png"],
	["Attilas Bodyguard", "12", "8","hunrrep_spec1.png"],
	["TBA", "12", "9","hunrrep_spec2.png"],
	["Unassigned", "13", "1","israiw_uns.png"],
	["Paratroops", "13", "2","israiw_inf.png"],
	["Combat engineers", "13", "3","israiw_eng.png"],
	["155mm Long Tom", "13", "4","israiw_arty.png"],
	["TOW AT Missile", "13", "5","israiw_atg.png"],
	["Centurion Main Battle Tank", "13", "6","israiw_tank.png"],
	["M3 Halftrack", "13", "7","israiw_recon.png"],
	["AH-1 Cobra Helicopter", "13", "8","israiw_spec1.png"],
	["Air Strike, Mirage III", "13", "9","israiw_spec2.png"],
	["Unassigned", "14", "1","egsyraiw_uns.png"],
	["Motor Rifle troops", "14", "2","egsyraiw_inf.png"],
	["Sappers", "14", "3","egsyraiw_eng.png"],
	["152mm Howitzer", "14", "4","egsyraiw_arty.png"],
	["BMP w/ Sagger", "14", "5","egsyraiw_atg.png"],
	["T-62 Main Battle Tank", "14", "6","egsyraiw_tank.png"],
	["BRDM-1", "14", "7","egsyraiw_recon.png"],
	["Heavy Tank, T-10M", "14", "8","egsyraiw_spec1.png"],
	["BM-30 Katyusha", "14", "9","egsyraiw_spec2.png"],
	["Unassigned", "15", "1","natoww3_uns.png"],
	["Armored Infantry", "15", "2","natoww3_inf.png"],
	["Combat engineers", "15", "3","natoww3_eng.png"],
	["M109 SP 155mm", "15", "4","natoww3_arty.png"],
	["MILAN/TOW AT", "15", "5","natoww3_atg.png"],
	["MBT, Abrams/Leo2/Chftn", "15", "6","natoww3_tank.png"],
	["Scimitar", "15", "7","natoww3_recon.png"],
	["AH-64 Apache Helicopter", "15", "8","natoww3_spec1.png"],
	["Airstrike, A-10 Warthog", "15", "9","natoww3_spec2.png"],
	["Unassigned", "16", "1","blocww3_uns.png"],
	["Motor Rifle troops", "16", "2","blocww3_inf.png"],
	["Sappers", "16", "3","blocww3_eng.png"],
	["D3S SP 152mm", "16", "4","blocww3_arty.png"],
	["BMP-2 w/ Sagger", "16", "5","blocww3_atg.png"],
	["MBT, T-72", "16", "6","blocww3_tank.png"],
	["BRDM-2", "16", "7","blocww3_recon.png"],
	["Hind Attack Helicopter", "16", "8","blocww3_spec1.png"],
	["SCUD (VX gas)", "16", "9","blocww3_spec2.png"]
]

unittype_list.each do |name, nation_id, unit_class_id, toe_img|
	UnitType.create!(name: name, nation_id: nation_id, unit_class_id: unit_class_id, toe_img: toe_img)
end

# create sample Armies
army_list = [
	['My 1st Army', 1, 1, 50000, 14, 19, 4, 8],
	['My Second Army', 1, 1, 30000, 11, 21, 3, 7],
	['Third Army', 1, 1, 20000, 8, 19, 2, 7],
	['Army of the Pecos', 3, 8, 121000, 28, 44, 5, 9]
]

army_list.each do |name, era, nat, xp, map_stage, battles_fought, ech1, ech2|
	u1.armies.create(name: name, era_id: era, nation_id: nat, total_xp: xp, map_stage: map_stage, battles_fought: battles_fought, ech1_allowed: ech1, ech2_allowed: ech2)
end

# populate WW2 army
army1 = Army.find_by_name("My 1st Army")

div1 = army1.echelon1s.create(name: '1st Armored Div')
div2 = army1.echelon1s.create(name: '4th Infantry Div')
div3 = army1.echelon1s.create(name: '2nd Armored Div')

bn_list = [
	['1/66th Armor', 5],
	['2/66th Armor', 5],
	['772 TD Bn', 6],
	['1/8 Infantry', 2],
	['2/8 Infantry', 2],
	['1/47 Artillery', 4],
	['2/47 Artillery', 4]
]

bn_list.each do |name, ucid|
	div1.echelon2s.create(name: name, unit_class_id: ucid)
end

bn_list = [	
	['1/35th Armor', 5],
	['1/28 Infantry', 2],
	['2/28 Infantry', 2],
	['3/35 Engineers', 3],
	['1/9 Artillery', 4]
]

bn_list.each do |name, ucid|
	div2.echelon2s.create(name: name, unit_class_id: ucid)
end

bn_list = [
	['1/40th Armor', 5],
	['706 TD Bn', 6],
	['1/10 Infantry', 2],
	['2/10 Infantry', 2],
	['1/5 Artillery', 4],
	['3/7 Scouts', 7]
]

bn_list.each do |name, ucid|
	div3.echelon2s.create(name: name, unit_class_id: ucid)
end

# populate CW army
army2 = Army.find_by_name("Army of the Pecos")

c1 = army2.echelon1s.create(name: '1st Corps')
c2 = army2.echelon1s.create(name: '3rd Corps')
c3 = army2.echelon1s.create(name: '2nd Corps')
c4 = army2.echelon1s.create(name: 'Reserve Corps')

corps_list = [
	['Braggs Bde', 2],
	['Cheathams Bde', 2],
	['Hoods Bde', 2],
	['Cavalry Bde', 5],
	['Altoona Artillery', 4],
	['Jackson Artillery', 4],
	['Wrights Artillery', 6]
]

corps_list.each do |name, ucid|
	c1.echelon2s.create(name: name, unit_class_id: ucid)
end

corps_list = [
	['Ransoms Bde', 2],
	['Bayards Bde', 2],
	['Ames Bde', 2],
	['Cavalry Bde', 7],
	['Asheville Artillery', 4],
	['Knox Artillery', 4],
	['Rebel Pioneers', 3]
]

corps_list.each do |name, ucid|
	c2.echelon2s.create(name: name, unit_class_id: ucid)
end