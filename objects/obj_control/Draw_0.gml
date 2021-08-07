/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);

draw_set_font(fnt_main);
	
draw_set_halign(1);
draw_set_valign(1);

if (game_over) {
	var game_over_text = "";
	
	game_over_text += "GAME OVER"
	game_over_text += "\n";
	game_over_text += "\n";
	game_over_text += "Highscore";
	game_over_text += "\n";
	game_over_text += string(highscore);
	game_over_text += "\n";
	game_over_text += "\n";
	game_over_text += "Score";
	game_over_text += "\n";
	game_over_text += string(points);
	game_over_text += "\n";
	game_over_text += "\n";
	game_over_text += "Press R to restart";
	
	draw_text(room_width / 2, room_height / 2, game_over_text);
}
else {
	if (instance_exists(obj_player1)) {
		draw_text(32, 16, "HP: " + string(obj_player1.hp));
	}
	
	draw_text(room_width / 2, 16, string(highscore));
	draw_text(room_width / 2, 32, string(points));
}