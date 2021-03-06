/// @description add lines of dialog to the dialog array
/// @param dialog
/// @param continue
/// @param avatar
/// @param leftAlign
/// @param obj

//set up defaults
var dialogText = "";
var dialogContinue = false;
var dialogAvatar = "";
var dialogLeftAlign = true;
var dialogObj = "";

//capture user input
if (argument_count >= 1) dialogText = argument[0];
if (argument_count >= 2) dialogContinue = argument[1];
if (argument_count >= 3) dialogAvatar = argument[2];
if (argument_count >= 4) dialogLeftAlign = argument[3];
if (argument_count >= 5) dialogObj = argument[4];

//save values to the array
var dialogPart = [];
dialogPart[0] = dialogText;			//text to display
dialogPart[1] = dialogContinue;		//continue to next item true/false
dialogPart[2] = dialogAvatar;		//image to display
dialogPart[3] = dialogLeftAlign;	//left align true/false
dialogPart[4] = dialogObj;			//npcObj

dialog[dialogLine] = dialogPart;
dialogLine++;

return dialogLine - 1;