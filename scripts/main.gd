extends Node2D

func _ready():
    pass

func _process(delta):
    pass
    
func construct_prayer():
    var result = 0
    
func construct_job_seeker():
    var job_seeker_dict = {
        "name": "nanashi",
        "age": 0,
        "edu": "hoisotsu",
        "workhis": "neet",
        "license": "nashi",
        "occupation": 0,
        "employment": 0,
        }
    print_debug(job_seeker_dict)
    return job_seeker_dict

func _job_seeker_generator():
    var rng = RandomNumberGenerator.new()
    rng.randomize()    
    var job_seeker_status_dict = construct_job_seeker()

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
    job_seeker_status_dict["name"] = fullname
    job_seeker_status_dict["age"] = age
    job_seeker_status_dict["edu"] = edu
    job_seeker_status_dict["workhis"] = workhis
    job_seeker_status_dict["license"] = license
    job_seeker_status_dict["occupation"] = occupation
    job_seeker_status_dict["employment"] = employment
    print_debug(job_seeker_status_dict)
    return job_seeker_status_dict
    
func game_controller():
    pass
