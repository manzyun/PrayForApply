extends CanvasLayer

signal generate_applyer_status
signal generate_applyer_graphics
signal posting_start

# 求職者の面接結果
signal apply    # 状態0
signal stay     # 状態1
signal pray     # 状態2

func _ready():
    pass

func _on_apply_pressed():
    emit_signal("generate_applyer_status")
    emit_signal("generate_applyer_graphics")
    emit_signal("posting_start")
    emit_signal("apply", 0)
    pass

func _on_stay_pressed():
    emit_signal("generate_applyer_status")
    emit_signal("generate_applyer_graphics")
    emit_signal("posting_start")
    emit_signal("stay", 1)
    pass

func _on_pray_pressed():
    emit_signal("generate_applyer_status")
    emit_signal("generate_applyer_graphics")
    emit_signal("posting_start")
    emit_signal("pray", 2)
    pass
