extends Node2D

signal generate_applyer_graphics
signal play_or_apply_rating

var g_applyer_graphics_pare = []

func _ready():
    pass
    
func construct_prayer():
    var result = 0
    
func construct_applyer():
    var applyer_dict = {
        "name": "nanashi",
        "age": 0,
        "gender": 0,
        "edu": "hoisotsu",
        "workhis": "neet",
        "license": "nashi",
        "occupation": 0,
        "employment": 0,
        }
    return applyer_dict

func _applyer_status_generator():
    var rng = RandomNumberGenerator.new()
    rng.randomize()    
    var applyer_status_dict = construct_applyer()

    var surname = [
        "Satou",
        "Saitou",
        "Sasaki",
        "Sagawa",
        "Sayama",
       ]
    var firstname = [
        "Ritsu",
        "Akira",
        "Pikachu",
       ]
    var fullname = surname[rng.randi() % surname.size()]\
                    + " "\
                    + firstname[rng.randi() % firstname.size()]                           
    var age = rng.randi_range(0, 100)
    var gender = rng.randi_range(0,1)
    var edu_list = [
        "Chu",
        "Kou",
        "Dai",
        "Kosen",
       ] 
    var edu = edu_list[rng.randi() % edu_list.size()]
    var workhis_list = [
        "killer",
        "prof.",
        "singer",
       ]
    var workhis = workhis_list[rng.randi() % workhis_list.size()]
    var license_list = [
        "nashi",
        "ITpass",
        "eikenpre2",
       ]
    var license = license_list[rng.randi() % license_list.size()]
    var occupation = rng.randi_range(0, 3)
    var employment = rng.randi_range(0, 3)
    applyer_status_dict["name"] = fullname
    applyer_status_dict["age"] = age
    applyer_status_dict["gender"] = gender
    applyer_status_dict["edu"] = edu
    applyer_status_dict["workhis"] = workhis
    applyer_status_dict["license"] = license
    applyer_status_dict["occupation"] = occupation
    applyer_status_dict["employment"] = employment
    emit_signal("generate_applyer_graphics", applyer_status_dict)
    pass
    
func _on_Applyer_graphics_pare(var body, var head):
    var applyer_graphics = []
    applyer_graphics.append(body)
    applyer_graphics.append(head)
    # Sorry.
    g_applyer_graphics_pare = applyer_graphics
    pass
    
# ここでプレイヤー操作の評価を行う
# 状態 -> 0:採用, 1:お祈り, 2:保留
func _game_controller(var status):  
    var correct = 2
    var applyer_graphics = g_applyer_graphics_pare
    if applyer_graphics[0] == 1:
        correct = 1
    if applyer_graphics[1] == 2:
        correct = 1
    if applyer_graphics[1] == 5:
        correct = 1
    if applyer_graphics[1] == 13:
        correct = 1
        
    if status == correct:
        # 上場ゲージを伸ばす
        #print("上場")
        emit_signal("play_or_apply_rating", 0)
    else:
        # 炎上ゲージを伸ばす
        #print("炎上")
        emit_signal("play_or_apply_rating", 1)
        
    print_debug(correct)
    pass
