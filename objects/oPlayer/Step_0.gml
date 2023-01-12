/// @description Insert description here

keyLeft = keyboard_check(vk_left);
keyRight = keyboard_check(vk_right);
keyAttack = keyboard_check_pressed(ord("H"));

h_speed = (keyRight - keyLeft) * walk_speed;
v_speed = v_speed + grav_speed;

if (place_meeting(x+h_speed,y,oWall)) {
	var onePixel = sign(h_speed);
	while (!place_meeting(x+onePixel,y,oWall)) x += onePixel;
	h_speed = 0;
}
x+= h_speed;

if (place_meeting(x,y+v_speed,oWall)) {
	var onePixel=sign(v_speed);
	while ( !place_meeting(x,y+onePixel,oWall)) y+= onePixel;
	v_speed = 0;
}
y+= v_speed;

if (h_speed != 0) {
	image_xscale = sign(h_speed)
	if (sprite_index != sRun) image_index = 2;
	sprite_index = sRun;
} else {
	sprite_index = sIdle;	
}
