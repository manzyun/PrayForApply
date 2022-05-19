extends Node2D

onready var animated_sprite_body = $Body
onready var animated_sprite_head = $Head

signal graphics_pare

func _ready():
    pass
    
func _generate_applyer_graphics(var dict):

    var rng = RandomNumberGenerator.new()
    rng.randomize() 
    
    var body
    var head
    var applyer_status = dict
    
    if applyer_status["gender"] == 0:
        body = rng.randi_range(0, 1)
        animated_sprite_body.frame = body
        head = rng.randi_range(0, 7)
        animated_sprite_head.frame = head
    else:
        body = rng.randi_range(2, 3)
        animated_sprite_body.frame = body
        head = rng.randi_range(8, 15)
        animated_sprite_head.frame = head

    emit_signal("graphics_pare", body, head)


