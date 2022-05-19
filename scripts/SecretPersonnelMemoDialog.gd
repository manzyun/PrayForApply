extends ColorRect

var GOOD_LAST_EDUCATTE_LIST = [
    "芸術大学 芸術学部",
    "情報大学 情報学部",
    "一流大学 理工学部",
    "一流大学 文学部",
    ]

var GOOD_WORK_HISTORY_LIST =[
    "ゲーム会社勤務(PG)",
    "ゲーム会社勤務(2D)",
    "ゲーム会社勤務(3D)",
    "ゲーム会社勤務(サウンド)",
    ]

var GOOD_LICENSE_LIST = [
    "パソコン検定一級",
    "blender検定一級",
    "CoderScore800以上",
   ]

var BAD_LAST_EDUCATTE_LIST = [
    "中卒",
    "高卒",
    "デジタル専門学校",
    "三流大学 総合人文学部",
    "三流大学 経済学部", 
    ]

var BAD_WORK_HISTORY_LIST =[
    "未経験",
    "広告代理店勤務",
    "プログラマー 経験年数3年以上",
    "2Dデザイン 経験年数3年以上",
    "3Dデザイン 経験年数3年以上",
    "サウンド 経験年数3年以上",
   ]

var BAD_LICENSE_LIST = [
    "秘書検定一級",
    "普通自動車免許",
    "カラーコーディネイター2級",
   ]
       
# Called when the node enters the scene tree for the first time.
func _ready():
    set_white_list()
    set_black_list()
    pass # Replace with function body.

func set_white_list():
    $WhiteList.set_text_colar(Color(0.0, 0.0 ,0.0))
    GOOD_LAST_EDUCATTE_LIST.shuffle() 
    GOOD_WORK_HISTORY_LIST.shuffle() 
    GOOD_LICENSE_LIST.shuffle() 
    $WhiteList/LastEducationList.text = GOOD_LAST_EDUCATTE_LIST[0] + "\n" \
                                      + GOOD_LAST_EDUCATTE_LIST[1] + "\n"  \
                                      + GOOD_LAST_EDUCATTE_LIST[2] 
    $WhiteList/WorkHistoryList.text = GOOD_WORK_HISTORY_LIST[0] + "\n"  \
                                    + GOOD_WORK_HISTORY_LIST[1] + "\n"  \
                                    + GOOD_WORK_HISTORY_LIST[2] 
    $WhiteList/LicenseList.text = GOOD_LICENSE_LIST[0] + "\n" \
                                + GOOD_LICENSE_LIST[1] + "\n" \
                                + GOOD_LICENSE_LIST[2]

func set_black_list():
    $BlackList.set_text_colar(Color(1.0, 1.0 ,1.0))
    BAD_LAST_EDUCATTE_LIST.shuffle() 
    BAD_WORK_HISTORY_LIST.shuffle() 
    BAD_LICENSE_LIST.shuffle() 
    $BlackList/LastEducationLabel.text = "底辺学歴(評価対象外)"
    $BlackList/LastEducationList.text = BAD_LAST_EDUCATTE_LIST[0] + "\n" \
                                      + BAD_LAST_EDUCATTE_LIST[1] + "\n"  \
                                      + BAD_LAST_EDUCATTE_LIST[2] 
    $BlackList/WorkHistoryLabel.text = "体育会系会社(評価対象外)"
    $BlackList/WorkHistoryList.text = BAD_WORK_HISTORY_LIST[0] + "\n"  \
                                    + BAD_WORK_HISTORY_LIST[1] + "\n"  \
                                    + BAD_WORK_HISTORY_LIST[2] 
    $BlackList/LicenseLabel.text = "無意味資格(評価対象外)"
    $BlackList/LicenseList.text = BAD_LICENSE_LIST[0] + "\n" \
                                + BAD_LICENSE_LIST[1] + "\n" \
                                + BAD_LICENSE_LIST[2]

func _on_SecretPersonnelMemoButton_pressed():
    visible = true

func _on_ExitButton_pressed():
    visible = false
