extends Control
const MAX_LOG = 28

onready var label = $ScrollContainer/VBoxContainer/Label

func _ready():
    label.text = "本日の始業時間です"

# データベース(仮)
var normal_chat = [
    "新人です!!よろしくですmm",
    "大規模案件やりたいっす",
    "コンプライアンスを守りましょう",
   ]
var why_chat = [
    "パワハラじゃないですか？",
    "上場ってレベルじゃねーぞ!!",
    "うわーうわー(脳死)",
   ]
var Oh_no_chat = [
    "開発チームの半分が夜逃げしました...!!",
    "公式Twitterが炎上してます...",
    "社員の倫理観と一般常識が崩壊しています",
   ]

func construct_rng():
    var rng = RandomNumberGenerator.new()
    rng.randomize()
    return rng

func _posting():
    var logs = []
    var rng = construct_rng()
    logs.append(normal_chat[rng.randi() % normal_chat.size()])
    if logs.size() > MAX_LOG:
        logs.pop_front()
    for s in logs:
        label.text += "\n\n\n"
        label.text += s
    pass
