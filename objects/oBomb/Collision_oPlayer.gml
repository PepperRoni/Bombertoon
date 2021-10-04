/// @description Insert description here
// You can write your code in this editor
if place_meeting(x, y, oBomb)
{
	with(oBomb){instance_destroy()}
	show_debug_message("B " + string(current_time));
}