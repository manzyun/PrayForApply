extends CanvasLayer

signal generate_job_seeker
signal posting_start

func _ready():
    pass

func _on_GenerateButton_pressed():
    emit_signal("generate_job_seeker")
    emit_signal("posting_start")
    pass
