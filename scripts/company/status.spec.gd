extends Object

const Company = preload("Company.gd")
const Staff = preload("../seeker/Staff.gd")
const JobSeeker = preload("../seeker/Seeker.gd")


func _ready():
	# 『Company』クラスのインスタンスはもちろん『Company』を継承してますわよね？
	var the_company: Company = Company.new()
	assert(the_company is Company)

func _is_spot_state_line():
	# 現場の平均と中央値は線(？)で返ってくるかい？
	assert(the_company.spot_state_line == TYPE_VECTOR2_ARRAY)
	assert(len(the_company.spot_state_line) == 1)

func _is_apply_judge_degree_90():
	# 採用者の判定は、平均と中央値の直角で測ってるかい？
	var applyings: Array # `=` 以降をどう生成するかね。ジェネレーターを借りる？
	for apply in applyings:
		var distance: int = the_company.judge(apply)
		assert(distance <= 20) # -10..10のグラフ上であれば、傾けない限り20未満のはず。

func _is_burn_after_burner_joined():
	# 裏パラメーター縦軸がマイナスの人が入ったら、炎上ゲージ上がってる？
	pass

func _is_upped_after_inteligent_joined():
	# 裏パラメーター縦軸がプラスの人が入ったら、業績ゲージ上がってる？
	pass
