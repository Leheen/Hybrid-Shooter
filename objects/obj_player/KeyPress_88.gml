/// @description Change ship color
switch(color) {
	case COLORS.RED:
		color = COLORS.BLUE;
		image_blend = COLOR_BLUE;
		break;
	case COLORS.BLUE:
		color = COLORS.RED;
		image_blend = COLOR_RED;
}
audio_play_sound(snd_color_switch, 1, false);