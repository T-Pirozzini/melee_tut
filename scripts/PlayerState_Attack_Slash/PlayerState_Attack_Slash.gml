hSpeed = 0;
vSpeed = 0;

// Start of the attack
if (sprite_index != sAttack_Slash) {
	sprite_index = sAttack_Slash;
	image_index = 4;
	ds_list_clear(hitByAttack);
}

// use attack hitbox & check for hits
mask_index = sAttack_SlashHB;
var hitByAttackNow = ds_list_create();
var hits = instance_place_list(x,y,oEnemy, hitByAttackNow, false);
if (hits > 0) {
 for (var i=0; i < hits; i++) {
	// if this instance has not yet been hit by this attack
	var hitID = ds_list_find_value(hitByAttackNow, i);
	if (ds_list_find_index(hitByAttackNow,hitID) == -1) {
		ds_list_add(hitByAttack, hitID);
		with (hitID) {
			EnemyHit(2);
		}
	}
 }
}
ds_list_destroy(hitByAttackNow);
mask_index = sIdle;

if (animation_end()) {
	sprite_index = sIdle;
	state = PLAYERSTATE.FREE;
}