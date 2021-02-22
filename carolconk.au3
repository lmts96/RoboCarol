#include <AutoItConstants.au3>
#include <Misc.au3>

While 1
	MouseWheel($MOUSE_WHEEL_DOWN, 10)
	MouseMove(500, 450)
	MouseClick($MOUSE_CLICK_LEFT)
	MouseMove(505, 585)
	MouseClick($MOUSE_CLICK_LEFT)
	Sleep(2000)
	MouseWheel($MOUSE_WHEEL_UP, 100)
	MouseMove(505, 415)
	MouseClick($MOUSE_CLICK_LEFT)
    $key=_IsAnyKeyPressed()
    If $key then MsgBox(0,"","You pressed a key!")
WEnd
Func _IsAnyKeyPressed()
    $number = StringSplit("01|02|04|05|06" & _
    "|08|09|0C|0D|10|11|12|13|14|1B|20|21|22" & _
    "|23|24|25|26|27|28|29|2A|2B|2C|2D|2E|30" & _
    "|31|32|33|34|35|36|37|38|39|41|42|43|44" & _
    "|45|46|47|48|49|4A|4B|4C|4D|4E|4F|50|51" & _
    "|52|53|54|55|56|57|58|59|5A|5B|5C|60|61" & _
    "|62|63|64|65|66|67|68|69|6A|6B|6C|6D|6E" & _
    "|6F|70|71|72|73|74|75|76|77|78|79|7A|7B" & _
    "|90|91|A0|A1|A2|A3|A4|A5", "|")
    For $i in $number
        If _IsPressed(String($i)) Then
            Return 1
        EndIf
    Next
    Return 0
EndFunc


