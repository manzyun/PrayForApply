extends CanvasLayer

signal generate_applyer_status
signal posting_start

# 求職者の面接結果
signal player_decide

enum DECISION_OPTIONS { APPLY , STAY, PRAY } 

func _ready():
    init_flame_progress(0)
    init_listed_progress(0)
    pass
    
func _calc_score(decision_result):

     
    match decision_result:
        DECISION_OPTIONS.APPLY:
            var applyer_parameter_dict = get_applyer_parameter();
            update_listed_progress(applyer_parameter_dict["good_point"] + 5)
            update_flame_progress(applyer_parameter_dict["bad_point"] * 10)
        DECISION_OPTIONS.PRAY:
            var rng = RandomNumberGenerator.new()
            rng.randomize()
            update_flame_progress(rng.randi_range(5, 20))
        DECISION_OPTIONS.STAY:
            if randi() % 2 == 0:
                 _calc_score(DECISION_OPTIONS.APPLY)
            else:
                _calc_score(DECISION_OPTIONS.PRAY)
    pass
    
func init_flame_progress(flame_point):
    $FlameProgress.value = flame_point
    
func init_listed_progress(listed_point):
    $ListedProgress.value = listed_point
    
func update_flame_progress(flame_point):
    $FlameProgress.value += flame_point
    
func update_listed_progress(listed_point):
    $ListedProgress.value += listed_point

func _on_apply_pressed():
    emit_signal("player_decide", DECISION_OPTIONS.APPLY)
    emit_signal("generate_applyer_status")
    emit_signal("posting_start")
    pass

func _on_stay_pressed():
    emit_signal("player_decide", DECISION_OPTIONS.STAY)
    emit_signal("generate_applyer_status")
    emit_signal("posting_start")
    pass

func _on_pray_pressed():
    emit_signal("player_decide", DECISION_OPTIONS.PRAY)
    emit_signal("generate_applyer_status")
    emit_signal("posting_start")
    pass

func construct_applyer_parameter():
    var applyer_parameter_dict = {
        "good_point": 0,
        "bad_point": 0,
        }
    return applyer_parameter_dict

func get_applyer_parameter():
    var applyer_parameter = construct_applyer_parameter()
    applyer_parameter["good_point"] = $SecretPersonnelMemoDialog/WhiteList/LastEducationList.text \
                                      .count($Resume/ApplyerLastEducation.text)
    applyer_parameter["good_point"] += $SecretPersonnelMemoDialog/WhiteList/WorkHistoryList.text \
                                      .count($Resume/ApplyerWorkHistory.text)
    applyer_parameter["good_point"] += $SecretPersonnelMemoDialog/WhiteList/LicenseList.text \
                                      .count($Resume/ApplyerLicense.text)
    applyer_parameter["bad_point"] = $SecretPersonnelMemoDialog/BlackList/LastEducationList.text \
                                      .count($Resume/ApplyerLastEducation.text)
    applyer_parameter["bad_point"] += $SecretPersonnelMemoDialog/BlackList/WorkHistoryList.text \
                                      .count($Resume/ApplyerWorkHistory.text)
    applyer_parameter["bad_point"] += $SecretPersonnelMemoDialog/BlackList/LicenseList.text \
                                      .count($Resume/ApplyerLicense.text)
    return applyer_parameter
