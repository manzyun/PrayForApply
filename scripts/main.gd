extends Node2D

func _ready():
    pass
    
func construct_prayer():
    var result = 0
    
func construct_applyer():
    var applyer_dict = {
        "name": "nanashi",
        "age": 0,
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
    applyer_status_dict["edu"] = edu
    applyer_status_dict["workhis"] = workhis
    applyer_status_dict["license"] = license
    applyer_status_dict["occupation"] = occupation
    applyer_status_dict["employment"] = employment
    print_debug(applyer_status_dict)
    return applyer_status_dict
    
# ここでプレイヤー操作の評価を行う
# 状態 -> 0:採用, 1:保留, 2:お祈り
func _game_controller(var status):   
    print_debug(status)
    pass
    
