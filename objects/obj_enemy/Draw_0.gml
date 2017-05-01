/// @description Lifebar

draw_self();

if (hp < maxHp) {
	draw_sprite_stretched(spr_hbar,-1,x-25,y-40,hp/maxHp*48,8);
}