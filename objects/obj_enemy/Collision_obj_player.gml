if(!other.invulnerable) {
	other.hp -= atk;
	set_player_invulnerable(other);
}
instance_destroy();
audio_play_sound(snd_damage, 1, false);