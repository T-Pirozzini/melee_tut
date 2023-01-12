// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//h_speed = (keyRight - keyLeft) * walk_speed;
v_speed = v_speed + grav_speed;

if (place_meeting(x+h_speed,y,oWall)) {
	var _one_pixel = sign(h_speed);
	while (!place_meeting(x+_one_pixel,y,oWall)) x += _one_pixel;
	h_speed = 0;
}
x+= h_speed;

if (place_meeting(x,y+v_speed,oWall)) {
	var _one_pixel=sign(v_speed);
	while ( !place_meeting(x,y+_one_pixel,oWall)) y+= _one_pixel;
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

if (keyAttack) state = PLAYERSTATE.ATTACK_SLASH;