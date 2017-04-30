/// @description Lifebar

draw_self();

if (hp < maxHp) {
	draw_sprite(spr_hbar_back,-1,x-18,-40);
	draw_sprite_stretched(spr_hbar,-1,x-17,y-39,hp/maxHp*48,8);
}