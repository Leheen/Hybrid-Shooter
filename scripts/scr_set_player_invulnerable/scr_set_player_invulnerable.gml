function set_player_invulnerable(_player) {
	_player.invulnerable = true;
	_player.alarm[1] = _player.invulnerability_timer;
}