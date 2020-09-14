effect_create_above(ef_explosion, x, y, 1, c_orange);
global.game_state = STATES.LOST;
audio_play_sound(snd_gameover, 1, false);