return {
    ['testburger'] = {
        label = 'Test Burger',
        weight = 220,
        degrade = 60,
        client = {
            image = 'burger_chicken.png',
            status = { hunger = 200000 },
            anim = 'eating',
            prop = 'burger',
            usetime = 2500,
            export = 'ox_inventory_examples.testburger'
        },
        server = {
            export = 'ox_inventory_examples.testburger',
            test = 'what an amazingly delicious burger, amirite?'
        },
        buttons = {
            {
                label = 'Lick it',
                action = function(slot)
                    print('You licked the burger')
                end
            },
            {
                label = 'Squeeze it',
                action = function(slot)
                    print('You squeezed the burger :(')
                end
            },
            {
                label = 'What do you call a vegan burger?',
                group = 'Hamburger Puns',
                action = function(slot)
                    print('A misteak.')
                end
            },
            {
                label = 'What do frogs like to eat with their hamburgers?',
                group = 'Hamburger Puns',
                action = function(slot)
                    print('French flies.')
                end
            },
            {
                label = 'Why were the burger and fries running?',
                group = 'Hamburger Puns',
                action = function(slot)
                    print('Because they\'re fast food.')
                end
            }
        },
        consume = 0.3
    },


    ['burger'] = {
        label = 'Burger',
        weight = 220,
        client = {
            status = { hunger = 200000 },
            anim = 'eating',
            prop = 'burger',
            usetime = 2500,
            notification = 'You ate a delicious burger'
        },
    },

    ['sprunk'] = {
        label = 'Sprunk',
        weight = 350,
        client = {
            status = { thirst = 200000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
            usetime = 2500,
            notification = 'You quenched your thirst with a sprunk'
        }
    },

    ['parachute'] = {
        label = 'Parachute',
        weight = 8000,
        stack = false,
        client = {
            anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
            usetime = 1500
        }
    },

    ['garbage'] = {
        label = 'Garbage',
    },

    ['paperbag'] = {
        label = 'Paper Bag',
        weight = 1,
        stack = false,
        close = false,
        consume = 0
    },

    ['panties'] = {
        label = 'Knickers',
        weight = 10,
        consume = 0,
        client = {
            status = { thirst = -100000, stress = -25000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
            usetime = 2500,
        }
    },

    ['lockpick'] = {
        label = 'Lockpick',
        weight = 160,
    },

    ['phone'] = {
        label = 'Phone',
        weight = 190,
        stack = false,
        consume = 0,
        client = {
            add = function(total)
                if total > 0 then
                    pcall(function() return exports.npwd:setPhoneDisabled(false) end)
                end
            end,

            remove = function(total)
                if total < 1 then
                    pcall(function() return exports.npwd:setPhoneDisabled(true) end)
                end
            end
        }
    },

    ['mustard'] = {
        label = 'Mustard',
        weight = 500,
        client = {
            status = { hunger = 25000, thirst = 25000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
            usetime = 2500,
            notification = 'You... drank mustard'
        }
    },

    ['water'] = {
        label = 'Water',
        weight = 500,
        client = {
            status = { thirst = 200000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
            usetime = 2500,
            cancel = true,
            notification = 'You drank some refreshing water'
        }
    },

    ['armour'] = {
        label = 'Bulletproof Vest',
        weight = 3000,
        stack = false,
        client = {
            anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
            usetime = 3500
        }
    },

    ['clothing'] = {
        label = 'Clothing',
        consume = 0,
    },

    ['money'] = {
        label = 'Money',
    },

    ['black_money'] = {
        label = 'Dirty Money',
    },

    ['id_card'] = {
        label = 'Identification Card',
    },

    ['driver_license'] = {
        label = 'Drivers License',
    },

    ['boat_license'] = {
        label = 'Boat License',
    },

    ['helicopter_license'] = {
        label = 'Helicopter License',
    },

    ['pilot_license'] = {
        label = 'Pilot License',
    },

    ['weapon_license'] = {
        label = 'Weapon License',
    },

    ['lawyerpass'] = {
        label = 'Lawyer License',
    },

    ['radio'] = {
        label = 'Radio',
        weight = 1000,
        stack = false,
        allowArmed = true
    },

    ['advancedlockpick'] = {
        label = 'Advanced Lockpick',
        weight = 500,
    },

    ['screwdriverset'] = {
        label = 'Screwdriver Set',
        weight = 500,
    },

    ['electronickit'] = {
        label = 'Electronic Kit',
        weight = 500,
    },

    ['cleaningkit'] = {
        label = 'Cleaning Kit',
        weight = 500,
    },

    ['repairkit'] = {
        label = 'Repair Kit',
        weight = 2500,
    },

    ['advancedrepairkit'] = {
        label = 'Advanced Repair Kit',
        weight = 4000,
    },

    ['diamond_ring'] = {
        label = 'Diamond',
        weight = 1500,
    },

    ['rolex'] = {
        label = 'Golden Watch',
        weight = 1500,
    },

    ['goldbar'] = {
        label = 'Gold Bar',
        weight = 1500,
    },

    ['goldchain'] = {
        label = 'Golden Chain',
        weight = 1500,
    },

    ['crack_baggy'] = {
        label = 'Crack Baggy',
        weight = 100,
    },

    ['cokebaggy'] = {
        label = 'Bag of Coke',
        weight = 100,
    },

    ['coke_small_brick'] = {
        label = 'Coke Package',
        weight = 1000,
    },

    ['xtcbaggy'] = {
        label = 'Bag of Ecstasy',
        weight = 100,
    },

    ['meth'] = {
        label = 'Methamphetamine',
        weight = 100,
    },

    ['oxy'] = {
        label = 'Oxycodone',
        weight = 100,
    },

    ['weed_ak47'] = {
        label = 'AK47 2g',
        weight = 200,
    },

    ['weed_ak47_seed'] = {
        label = 'AK47 Seed',
        weight = 1,
    },

    ['weed_skunk'] = {
        label = 'Skunk 2g',
        weight = 200,
    },

    ['weed_amnesia'] = {
        label = 'Amnesia 2g',
        weight = 200,
    },

    ['weed_og-kush'] = {
        label = 'OGKush 2g',
        weight = 200,
    },

    ['weed_og-kush_seed'] = {
        label = 'OGKush Seed',
        weight = 1,
    },

    ['weed_white-widow'] = {
        label = 'OGKush 2g',
        weight = 200,
    },

    ['weed_white-widow_seed'] = {
        label = 'White Widow Seed',
        weight = 1,
    },

    ['weed_purple-haze'] = {
        label = 'Purple Haze 2g',
        weight = 200,
    },

    ['weed_purple-haze_seed'] = {
        label = 'Purple Haze Seed',
        weight = 1,
    },

    ['weed_brick'] = {
        label = 'Weed Brick',
        weight = 2000,
    },

    ['weed_nutrition'] = {
        label = 'Plant Fertilizer',
        weight = 2000,
    },

    ['joint'] = {
        label = 'Joint',
        weight = 200,
    },

    ['rolling_paper'] = {
        label = 'Rolling Paper',
        weight = 0,
    },

    ['empty_weed_bag'] = {
        label = 'Empty Weed Bag',
        weight = 0,
    },

    ['firstaid'] = {
        label = 'First Aid',
        weight = 2500,
    },

    ['ifaks'] = {
        label = 'Individual First Aid Kit',
        weight = 2500,
    },

    ['firework1'] = {
        label = '2Brothers',
        weight = 1000,
    },

    ['firework2'] = {
        label = 'Poppelers',
        weight = 1000,
    },

    ['firework3'] = {
        label = 'WipeOut',
        weight = 1000,
    },

    ['firework4'] = {
        label = 'Weeping Willow',
        weight = 1000,
    },

    ['steel'] = {
        label = 'Steel',
        weight = 100,
    },

    ['rubber'] = {
        label = 'Rubber',
        weight = 100,
    },

    ['metalscrap'] = {
        label = 'Metal Scrap',
        weight = 100,
    },

    ['iron'] = {
        label = 'Iron',
        weight = 100,
    },

    ['copper'] = {
        label = 'Copper',
        weight = 100,
    },

    ['aluminium'] = {
        label = 'Aluminium',
        weight = 100,
    },

    ['plastic'] = {
        label = 'Plastic',
        weight = 100,
    },

    ['glass'] = {
        label = 'Glass',
        weight = 100,
    },

    ['gatecrack'] = {
        label = 'Gatecrack',
        weight = 1000,
    },

    ['cryptostick'] = {
        label = 'Crypto Stick',
        weight = 100,
    },

    ['trojan_usb'] = {
        label = 'Trojan USB',
        weight = 100,
    },

    ['toaster'] = {
        label = 'Toaster',
        weight = 5000,
    },

    ['small_tv'] = {
        label = 'Small TV',
        weight = 100,
    },

    ['security_card_01'] = {
        label = 'Security Card A',
        weight = 100,
    },

    ['security_card_02'] = {
        label = 'Security Card B',
        weight = 100,
    },

    ['drill'] = {
        label = 'Drill',
        weight = 5000,
    },

    ['thermite'] = {
        label = 'Thermite',
        weight = 1000,
    },

    ['diving_gear'] = {
        label = 'Diving Gear',
        weight = 30000,
    },

    ['diving_fill'] = {
        label = 'Diving Tube',
        weight = 3000,
    },

    ['antipatharia_coral'] = {
        label = 'Antipatharia',
        weight = 1000,
    },

    ['dendrogyra_coral'] = {
        label = 'Dendrogyra',
        weight = 1000,
    },

    ['jerry_can'] = {
        label = 'Jerrycan',
        weight = 3000,
    },

    ['nitrous'] = {
        label = 'Nitrous',
        weight = 1000,
    },

    ['wine'] = {
        label = 'Wine',
        weight = 500,
    },

    ['grape'] = {
        label = 'Grape',
        weight = 10,
    },

    ['grapejuice'] = {
        label = 'Grape Juice',
        weight = 200,
    },

    ['coffee'] = {
        label = 'Coffee',
        weight = 200,
    },

    ["alcoholmeter"] = {
		label = "Alcoholmeter",
		weight = 1,
		stack = true,
		close = true,
		consume = 0,
		server = {
			export = 'BS-Breathalyzer.openBreathalyzer'
		}
	},

	["beer"] = {
		label = "Beer",
		weight = 1,
		stack = true,
		close = true,
		server = {
			export = 'BS-Breathalyzer.usedAlcohol'
		}
	},

	["vodka"] = {
		label = "Vodka",
		weight = 1,
		stack = true,
		close = true,
		server = {
			export = 'BS-Breathalyzer.usedAlcohol'
		}
	},

	["whiskey"] = {
		label = "Whiskey",
		weight = 1,
		stack = true,
		close = true,
		server = {
			export = 'BS-Breathalyzer.usedAlcohol'
		}
	},

    ['sandwich'] = {
        label = 'Hamburger',
        weight = 200,
    },

    ['cigs'] = {
        label = 'Cigs',
        weight = 200,
    },

    ['walking_stick'] = {
        label = 'Walking Stick',
        weight = 1000,
    },

    ['lighter'] = {
        label = 'Lighter',
        weight = 200,
    },

    ['binoculars'] = {
        label = 'Binoculars',
        weight = 800,
    },

    ['stickynote'] = {
        label = 'Sticky Note',
        weight = 0,
    },

    ['empty_evidence_bag'] = {
        label = 'Empty Evidence Bag',
        weight = 200,
    },

    ['filled_evidence_bag'] = {
        label = 'Filled Evidence Bag',
        weight = 200,
    },

    ['harness'] = {
        label = 'Harness',
        weight = 200,
    },

	['handcuffs'] = {
        label = 'Hand Cuffs',
        weight = 2,
        stack = true,
        close = true,
    },

    ['bobby_pin'] = {
        label = 'Bobby Pin',
        weight = 2,
        stack = true,
        close = true,
    },

	['bandage'] = {
        label = 'Bandage',
        weight = 0,
        description = 'Can be directly used in the inventory, stops bleeding from wounds and increases health',
		stack = true,
    },
    ['ifak'] = {
        label = 'IFAK',
        weight = 200,
        description = 'Can be directly used in the inventory, contains first aid kit',
		stack = true,
		close = true,
    },
    ['painkillers'] = {
        label = 'Painkillers',
        weight = 0,
        description = 'Can be directly used in the inventory to reduce pain and stress',
		stack = true,
		close = true,
    },
    ['temporary_tourniquet'] = {
        label = 'Temporary Tourniquet',
        weight = 10,
        description = 'A temporary tourniquet that can directly be used in the inventory to stop bleeding',
		stack = true,
		close = true,
    },
	['pager'] = {
        label = 'Pager',
        weight = 10,
        description = 'Used to inform medical staff at the hospital of an incoming patient',
		stack = false,
		close = true,
    },
    ['tourniquet'] = {
        label = 'Tourniquet',
        weight = 10,
		stack = true,
    },
    ['field_dressing'] = {
        label = 'Field Dressing',
        weight = 10,
		stack = true,
    },
    ['elastic_bandage'] = {
        label = 'Elastic Bandage',
        weight = 10,
		stack = true,
    },
    ['quick_clot'] = {
        label = 'Quick Clot',
        weight = 10,
		stack = true,
    },
    ['packing_bandage'] = {
        label = 'Packing Bandage',
        weight = 10,
		stack = true,
    },
    ['sewing_kit'] = {
        label = 'Sewing Kit',
        weight = 10,
		stack = true,
    },
    ['epinephrine'] = {
        label = 'Epinephrine',
        weight = 10,
        description = 'Epinephrine, also known as adrenaline, increases the body\'s pulse as well as suppress pain.',
		stack = true,
    },
    ['morphine'] = {
        label = 'Morphine',
        weight = 10,
        description = 'Morphine decreases the body\'s pulse as well as suppress pain.',
		stack = true,
    },
    ['propofol'] = {
        label = 'Propofol',
        weight = 10,
        description = 'Propofol, is a powerful sedation medication.',
		stack = true,
    },
    ['blood250ml'] = {
        label = 'Blood Pack 250ml',
        weight = 10,
		stack = true,
    },
    ['blood500ml'] = {
        label = 'Blood Pack 500ml',
        weight = 10,
		stack = true,
    },
    ['saline250ml'] = {
        label = 'Saline 250ml',
        weight = 10,
		stack = true,
    },
    ['saline500ml'] = {
        label = 'Saline 500ml',
        weight = 10,
		stack = true,
    },
    ['revivekit'] = {
        label = 'Emergency Revive Kit',
        weight = 10,
		stack = true,
    },
    ['stretcher'] = {
        label = 'Stretcher',
        weight = 1000,
        description = 'A medical stretcher to carry wounded patients',
		stack = true,
    },
    ['wheelchair'] = {
        label = 'Wheelchair',
        weight = 1000,
		stack = true,
    },
    ['crutch'] = {
        label = 'Crutch',
        weight = 1000,
		stack = true,
    },
    ['bodybag'] = {
        label = 'Bodybag',
        weight = 1000,
        description = 'A bag to put dead bodies in',
		stack = true,
    },
    ['ecg'] = {
        label = 'ECG',
        weight = 200,
		stack = false,
		close = true,
        description = 'Electrocardiography is an electrophysiological examination method of the heart where the heart\'s electrical activity is recorded by electrodes connected to an ECG device.',
    },
   ['neckbrace'] = {
        label = 'Neck Brace',
        weight = 1000,
        description = '',
		stack = true,
    },
   ['neckcast'] = {
        label = 'Neck Cast',
        weight = 1000,
        description = '',
		stack = true,
    },
   ['legsplint'] = {
        label = 'Leg Splint',
        weight = 1000,
        description = '',
		stack = true,
    },
   ['legcast'] = {
        label = 'Leg Cast',
        weight = 1000,
        description = '',
		stack = true,
    },
   ['armsplint'] = {
        label = 'Arm Splint',
        weight = 1000,
        description = '',
		stack = true,
    },
   ['armcast'] = {
        label = 'Arm Cast',
        weight = 1000,
        description = '',
		stack = true,
    },
    ["taser_cartridge"] = {
		label = "Taser Cartridge",
		description = "To reload the taser",
	},
    ["uvlight"] = {
		label = "UV Light",
        weight = 25,
		description = "To scan for fingerprints",
        close = true,
	},
    ["bleachwipes"] = {
		label = "Bleach Wipes",
        weight = 25,
		description = "To clean and sanatize",
        close = true,
	},
    ["engine_oil"] = {
        label = "Engine Oil",
        weight = 1000,
      },
      ["tyre_replacement"] = {
        label = "Tyre Replacement",
        weight = 1000,
      },
      ["clutch_replacement"] = {
        label = "Clutch Replacement",
        weight = 1000,
      },
      ["air_filter"] = {
        label = "Air Filter",
        weight = 100,
      },
      ["spark_plug"] = {
        label = "Spark Plug",
        weight = 1000,
      },
      ["brakepad_replacement"] = {
        label = "Brakepad Replacement",
        weight = 1000,
      },
      ["suspension_parts"] = {
        label = "Suspension Parts",
        weight = 1000,
      },
      -- Engine Items
      ["i4_engine"] = {
        label = "I4 Engine",
        weight = 1000,
      },
      ["v6_engine"] = {
        label = "V6 Engine",
        weight = 1000,
      },
      ["v8_engine"] = {
        label = "V8 Engine",
        weight = 1000,
      },
      ["v12_engine"] = {
        label = "V12 Engine",
        weight = 1000,
      },
      ["turbocharger"] = {
        label = "Turbocharger",
        weight = 1000,
      },
      -- Electric Engines
      ["ev_motor"] = {
        label = "EV Motor",
        weight = 1000,
      },
      ["ev_battery"] = {
        label = "EV Battery",
        weight = 1000,
      },
      ["ev_coolant"] = {
        label = "EV Coolant",
        weight = 1000,
      },
      -- Drivetrain Items
      ["awd_drivetrain"] = {
        label = "AWD Drivetrain",
        weight = 1000,
      },
      ["rwd_drivetrain"] = {
        label = "RWD Drivetrain",
        weight = 1000,
      },
      ["fwd_drivetrain"] = {
        label = "FWD Drivetrain",
        weight = 1000,
      },
      -- Tuning Items
      ["slick_tyres"] = {
        label = "Slick Tyres",
        weight = 1000,
      },
      ["semi_slick_tyres"] = {
        label = "Semi Slick Tyres",
        weight = 1000,
      },
      ["offroad_tyres"] = {
        label = "Offroad Tyres",
        weight = 1000,
      },
      ["drift_tuning_kit"] = {
        label = "Drift Tuning Kit",
        weight = 1000,
      },
      ["ceramic_brakes"] = {
        label = "Ceramic Brakes",
        weight = 1000,
      },
      -- Cosmetic Items
      ["lighting_controller"] = {
        label = "Lighting Controller",
        weight = 100,
        client = {
          event = "jg-mechanic:client:show-lighting-controller",
        }
      },
      ["stancing_kit"] = {
        label = "Stancer Kit",
        weight = 100,
        client = {
          event = "jg-mechanic:client:show-stancer-kit",
        }
      },
      ["cosmetic_part"] = {
        label = "Cosmetic Parts",
        weight = 100,
      },
      ["respray_kit"] = {
        label = "Respray Kit",
        weight = 1000,
      },
      ["vehicle_wheels"] = {
        label = "Vehicle Wheels Set",
        weight = 1000,
      },
      ["tyre_smoke_kit"] = {
        label = "Tyre Smoke Kit",
        weight = 1000,
      },
      ["bulletproof_tyres"] = {
        label = "Bulletproof Tyres",
        weight = 1000,
      },
      ["extras_kit"] = {
        label = "Extras Kit",
        weight = 1000,
      },
      -- Nitrous & Cleaning Items
      ["nitrous_bottle"] = {
        label = "Nitrous Bottle",
        weight = 1000,
        client = {
          event = "jg-mechanic:client:use-nitrous-bottle",
        }
      },
      ["empty_nitrous_bottle"] = {
        label = "Empty Nitrous Bottle",
        weight = 1000,
      },
      ["nitrous_install_kit"] = {
        label = "Nitrous Install Kit",
        weight = 1000,
      },
      ["cleaning_kit"] = {
        label = "Cleaning Kit",
        weight = 1000,
        client = {
          event = "jg-mechanic:client:clean-vehicle",
        }
      },
      ["repair_kit"] = {
        label = "Repair Kit",
        weight = 1000,
        client = {
          event = "jg-mechanic:client:repair-vehicle",
        }
      },
      ["duct_tape"] = {
        label = "Duct Tape",
        weight = 1000,
        client = {
          event = "jg-mechanic:client:use-duct-tape",
        }
      },
      -- Performance Item
      ["performance_part"] = {
        label = "Performance Parts",
        weight = 1000,
      },
      -- Mechanic Tablet Item
      ["mechanic_tablet"] = {
        label = "Mechanic Tablet",
        weight = 1000,
        client = {
          event = "jg-mechanic:client:use-tablet",
        }
      },

      ----- DRUGS -----
      ["drug_phone"] = {
        label = "Dokia Phone",
        weight = 0,
        stack = true,
        close = true,
    },
    ["pseudoephedrine"] = {
        label = "Pseudoephedrine",
        weight = 0,
        stack = true,
        close = true,
    },
    ["red_phosphorus"] = {
        label = "Red Phosphorus", 
        weight = 0,
        stack = true,
        close = true,
    },
    ["hydrochloric_acid"] = {
        label = "Hydrochloric Acid",
        weight = 0,
        stack = true,
        close = true,
    },
    ["lithium"] = {
        label = "Lithium",
        weight = 0,
        stack = true,
        close = true,
    },
    ["anhydrous_ammonia"] = {
        label = "Anhydrous Ammonia",
        weight = 0,
        stack = true,
        close = true,
    },
    ["meth_oil"] = {
        label = "Methamphetamine oil",
        weight = 0,
        stack = true,
        close = true,
    },
    ["methamphetamine_base"] = {
        label = "Methamphetamine base",
        weight = 0,
        stack = true,
        close = true,
    },
    ["methamphetamine_hydrochloride"] = {
        label = "Methamphetamine hydrochloride",
        weight = 0,
        stack = true,
        close = true,
    },
    ["methamphetamine_crystal"] = {
        label = "Methamphetamine Crystal",
        weight = 0,
        stack = true,
        close = true,
    },
    ["microwave"] = {
        label = "Microwave",
        weight = 0,
        stack = true,
        close = true,
    },
    ["coca_leaves"] = {
        label = "Coca leaves",
        weight = 0,
        stack = true,
        close = true,
    },
    ["coke_filter"] = {
        label = "Coke Filter",
        weight = 0,
        stack = true,
        close = true,
    },
    ["coca_leaf_powder"] = {
        label = "Coca leaf powder",
        weight = 0,
        stack = true,
        close = true,
    },
    ["water_lab_bottle"] = {
        label = "Big water bottle",
        weight = 0,
        stack = true,
        close = true,
    },
    ["coca_gaso_infused"] = {
        label = "Cocaine-infused gasoline",
        weight = 0,
        stack = true,
        close = true,
    },
    ["coca_infused_liquid"] = {
        label = "Cocaine liquid",
        weight = 0,
        stack = true,
        close = true,
    },
    ["coca_powder"] = {
        label = "Cocaine powder",
        weight = 0,
        stack = true,
        close = true,
    },
    ["coke_brick"] = {
        label = "Cocaine brick",
        weight = 0,
        stack = true,
        close = true,
    },
    ["coke_baggy"] = {
        label = "Cocaine baggy",
        weight = 0,
        stack = true,
        close = true,
    },
    ["meth_baggy"] = {
        label = "Methamphetamine baggy",
        weight = 0,
        stack = true,
        close = true,
    },
    ["unpackaged_meth"] = {
        label = "Unpackaged meth",
        weight = 0,
        stack = true,
        close = true,
    },
    ["empty_pot"] = {
        label = "Empty pot",
        weight = 0,
        stack = true,
        close = true,
    },
    ["dirt_bag"] = {
        label = "Dirt bag",
        weight = 0,
        stack = true,
        close = true,
    },
    ["standing_fan"] = {
        label = "Standing fan",
        weight = 0,
        stack = true,
        close = true,
    },
    ["weed_spray_bottle"] = {
        label = "Spray bottle",
        weight = 0,
        stack = true,
        close = true,
    },
    ["weed_fertilizer"] = {
        label = "Weed fertilizer",
        weight = 0,
        stack = true,
        close = true,
    },
    ["weed_leaf_whitewidow"] = {
        label = "Weed leaf whitewidow",
        weight = 0,
        stack = true,
        close = true,
    },
    ["weed_leaf_skunk"] = {
        label = "Weed leaf skunk",
        weight = 0,
        stack = true,
        close = true,
    },
    ["weed_leaf_purplehaze"] = {
        label = "Weed leaf purplehaze",
        weight = 0,
        stack = true,
        close = true,
    },
    ["weed_leaf_ogkush"] = {
        label = "Weed leaf ogkush",
        weight = 0,
        stack = true,
        close = true,
    },
    ["weed_leaf_amnesia"] = {
        label = "Weed leaf amnesia",
        weight = 0,
        stack = true,
        close = true,
    },
    ["weed_dried_leaf_whitewidow"] = {
        label = "Weed dried leaf whitewidow",
        weight = 0,
        stack = true,
        close = true,
    },
    ["weed_dried_leaf_skunk"] = {
        label = "Weed dried leaf skunk",
        weight = 0,
        stack = true,
        close = true,
    },
    ["weed_dried_leaf_purplehaze"] = {
        label = "Weed dried leaf purplehaze",
        weight = 0,
        stack = true,
        close = true,
    },
    ["weed_dried_leaf_ogkush"] = {
        label = "Weed dried leaf ogkush",
        weight = 0,
        stack = true,
        close = true,
    },
    ["weed_dried_leaf_amnesia"] = {
        label = "Weed dried leaf amnesia",
        weight = 0,
        stack = true,
        close = true,
    },
    ["small_fan"] = {
        label = "Small fan",
        weight = 0,
        stack = true,
        close = true,
    },
    ["weed_light"] = {
        label = "Weed light",
        weight = 0,
        stack = true,
        close = true,
    },
    ["weed_baggy"] = {
        label = "Weed baggy",
        weight = 0,
        stack = true,
        close = true,
    },
    ["lab_coat"] = {
        label = "Lab coat",
        weight = 0,
        stack = true,
        close = true,
    },
    ["hammer"] = {
        label = "Hammer",
        weight = 0,
        stack = true,
        close = true,
    },
    ["empty_m_bag"] = {
        label = "Empty meth bag",
        weight = 0,
        stack = true,
        close = true,
    },
    ["weed_whitewidow_seed"] = {
        label = "White Widow Seed",
        weight = 0,
        stack = true,
        close = true,
    },
    ["weed_skunk_seed"] = {
        label = "Skunk Seed",
        weight = 0,
        stack = true,
        close = true,
    },
    ["weed_purplehaze_seed"] = {
        label = "Purple Haze Seed",
        weight = 0,
        stack = true,
        close = true,
    },
    ["weed_ogkush_seed"] = {
        label = "OG Kush Seed",
        weight = 0,
        stack = true,
        close = true,
    },
    ["weed_amnesia_seed"] = {
        label = "Amnesia Seed",
        weight = 0,
        stack = true,
        close = true,
    },
}
