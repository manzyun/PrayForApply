extends Node2D

onready var animated_sprite_body = $Body
onready var animated_sprite_head = $Head

func _ready():
    pass
    
func _generate_applyer_graphics(var dict):
    var rng = RandomNumberGenerator.new()
    rng.randomize() 

    var applyer_status = dict
    
    if applyer_status["gender"] == 0:
        animated_sprite_body.frame = rng.randi_range(0, 1)
        animated_sprite_head.frame = rng.randi_range(0, 7)
    else:
        animated_sprite_body.frame = rng.randi_range(2, 3)
        animated_sprite_head.frame = rng.randi_range(8, 15)
