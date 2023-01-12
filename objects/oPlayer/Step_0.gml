/// @description Insert description here

//keyLeft = keyboard_check(vk_left);
//keyRight = keyboard_check(vk_right);
keyAttack = keyboard_check_pressed(ord("H"));

switch (state) {
	case PLAYERSTATE.FREE: PlayerState_free(); break;
	case PLAYERSTATE.ATTACK_SLASH: PlayerState_Attack_Slash(); break;
	case PLAYERSTATE.ATTACK_COMBO: PlayerState_Attack_Combo(); break;
}
