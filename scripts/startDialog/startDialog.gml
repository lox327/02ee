/// @description Start dialog
/// @param object
/// @param dialogLine

//create the obj dialog ctrl
if (!instance_exists(objDialogController)) {
	instance_create_depth(0, 0, 0, objDialogController);
	objDialogController.dialogLines = argument[0].dialog;
	objDialogController.dialogLine = argument[1];
	objDialogController.fetch = true;
}