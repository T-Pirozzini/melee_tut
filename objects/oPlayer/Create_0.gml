/// @description Insert description here

h_speed = 0;
v_speed = 0;
walk_speed = 5;
grav_speed = .2;

state = PLAYERSTATE.FREE;
hitByAttack = ds_list_create();



enum PLAYERSTATE {
	FREE,
	ATTACK_SLASH,
	ATTACK_COMBO
}