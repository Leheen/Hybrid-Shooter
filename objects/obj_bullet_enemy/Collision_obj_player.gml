if(room == rm_level_1) {
	other.hp -= atk;
}
else {
	if(color != other.color) {
		other.hp -= atk;
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