extends Node2D

onready var animated_sprite_body = $Body
onready var animated_sprite_head = $Head

func _ready():
    pass
    
func _generate_applyer_graphics():
    var rng = RandomNumberGenerator.new()
    rng.randomize() 

    animated_sprite_body.frame = rng.randi()
    animated_sprite_head.frame = rng.randi()
    
