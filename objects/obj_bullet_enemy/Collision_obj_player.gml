if(room == rm_level_1) {
	if(!other.invulnerable) {
		other.hp -= atk;
		set_player_invulnerable(other);
	}
}
else {
	if(color != other.color) {
		if(!other.invulnerable) {
			other.hp -= atk;
			set_player_invulnerable(other);
		}
	}
	else {
		if(other.super_attack < 100-10) {
			other.super_attack += 10;
		}
		else {
			other.super_attack = 100;
		}
	}
}

instance_destroy(id, true);
audio_play_sound(snd_damage, 1, false);