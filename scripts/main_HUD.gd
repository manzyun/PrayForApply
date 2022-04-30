extends CanvasLayer

signal generate_job_seeker

func _ready():
    pass

func _on_GenerateButton_pressed():
    emit_signal("generate_job_seeker")
    pass
