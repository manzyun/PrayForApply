extends TextureRect

const TYPE_LIST = ["新卒", "派遣", "中途"]

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
var update_flag = 0;
func _process(delta):
	if update_flag < 1:
		set_applyer_type("派遣")
		set_applyer_age(33)
		set_applyer_name("田中", "テスト")
		set_applyer_last_education("MIT")
		set_applyer_work_history("t社勤続8年")
		set_applyer_apeal("テスト完璧です")
		set_applyer_preferred_department("テスト本部")
		set_applyer_photo("res://images/applyer_body02.png","res://images/applyer_head02.png")
		update_flag += 1
	pass

func set_applyer_type(type):
	if type in TYPE_LIST:
		$ApplyerType.text = type
		
func set_applyer_name(last_name, first_Name):
	$ApplyerName.text = last_name + first_Name

func set_applyer_age(age):
	$ApplyerAge.text = str(age) + "歳"

func set_applyer_last_education(last_education):
	$ApplyerLastEducation.text = last_education

func set_applyer_work_history(work_history):
	$ApplyerWorkHistory.text = work_history

func set_applyer_license(license):
	$ApplyerLicense.text = license

func set_applyer_apeal(appeal):
	$ApplyerAppeal.text = appeal

func set_applyer_preferred_department(preferred_department):
	$ApplyerPreferredDepartment.text = preferred_department

func set_applyer_photo(body_image_path, head_image_path):
	$ApplyerPhoto/ApplyerBody.texture = load(body_image_path)
	$ApplyerPhoto/ApplyerHead.texture = load(head_image_path)