other.hp -= atk;
if(color == other.color) {
	score += 100;
}
instance_destroy(id, true);
audio_play_sound(snd_damage, 1, false);