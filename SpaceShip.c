#include "LIB/neslib.h"
#include "LIB/nesdoug.h"
#include "Sprites.h"
//#include "GR.h"

#pragma bss-name(push, "ZEROPAGE")

unsigned char sprid;
unsigned char pad1;
unsigned char collision;


////////////////////////////////////////////////////////////
//void draw_bg(void);


const unsigned char * p_maps;
#include "Backgrounds/c1.c"
// #include "Backgrounds/c2.c"
// #include "Backgrounds/c3.c"
// #include "Backgrounds/c4.c"
// #include "Backgrounds/c5.c"
const unsigned char * const All_Collision_Maps[] ={c1};//,c2,c3,c4,c5};
unsigned char map;
unsigned char temp_x;
unsigned char temp_y;
unsigned char temp1;

#pragma bss-name(push, "BSS")
unsigned char c_map[240];
///////////////////////////////////////////////////////////


unsigned char corner1;
unsigned char corner2;
unsigned char alarm=0;
unsigned char frame_max=0;
unsigned char frame_min=0;
unsigned char pause=0;



/////////////////////////////////////////////////////////////



struct Char {
	unsigned char x;
	unsigned char y;
	unsigned char width;
	unsigned char height;
	unsigned char dir;
	signed char speed_x;
	signed char speed_y;
	signed char speed;
	unsigned char sprite;
	unsigned char shoot;
};
struct Char player = {0x68,0x90,8,8,0,0,0,0x00,0,0};
struct Char bullet = {0,0,2,2,0,0,0,0x00,0x0A};


	unsigned char comet_x[]={0x68,0x68,0x68,0x68,0x68,0x68,0x68,0x68};
	unsigned char comet_y[]={0x90,0x90,0x90,0x90,0x90,0x90,0x90,0x90};
	unsigned char comet_width[]={8,8,8,8,8,8,8,8};
	unsigned char comet_height[]={8,8,8,8,8,8,8,8};
	unsigned char comet_dir[8]={};
	signed char comet_speed_x[8]={};
	signed char comet_speed_y[8]={};
	signed char comet_speed[8]={};
	unsigned char comet_sprite[8]={};
	unsigned char comet_shoot[8]={};
	unsigned char b



unsigned char bg_rand;
unsigned char bgp=0x00;
unsigned char i;
////////////////////////////////////////////////////////////// at first


signed char sin_table[] ={
	 0,4,7,9,11,12,13,14,15,14,13,12,11,9,7,4,
	0,-4,-7,-9,-11,-12,-13,-14,-15,-14,-13,-12,-11,-9,-7,-4
	};
signed char cos_table[] ={
	15,14,13,12,11,9,7,4,0,-4,-7,-9,-11,-12,-13,-14,-15,
	-14,-13,-12,-11,-9,-7,-4,0,4,7,9,11,12,13,14,15
};


///////////////////////////////////////////////////////////



const unsigned char palette_bg[]={
0x0D, 0x06, 0x17, 0x30,
0,0x17,0x27,0x0F,
0,0x0D,0x00,0x20,
0,0x11,0x21,0x31
}; 

const unsigned char palette_sp[]={
0x00, 0x1c, 0x14, 0x31,
0x00, 0x09, 0x36, 0x10,
0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00
}; 


void draw_bg (void){
	ppu_off();
	memcpy (c_map, p_maps, 240);
	vram_adr(NAMETABLE_A); //x=0;y=0
	for(temp_y = 0; temp_y < 15; ++temp_y){
		for(temp_x = 0; temp_x < 16; ++temp_x){
			temp1 = (temp_y << 4) + temp_x;
		

		bg_rand=rand8() & 0x5f;
		if (bg_rand >= 0x0A && bg_rand <= 0x0E ){
			vram_put(bg_rand);
		}
		else vram_put(0x00);
		bg_rand=rand8() & 0x5f;
		if (bg_rand >= 0x0A && bg_rand <= 0x0D ){
			vram_put(bg_rand);
		}
		else vram_put(0x00);
		}
		// do twice
		for(temp_x = 0; temp_x < 16; ++temp_x){
			temp1 = (temp_y << 4) + temp_x;
		bg_rand=rand8() & 0x5f;
		if (bg_rand >= 0x0A && bg_rand <= 0x0E ){
			vram_put(bg_rand);
		}
		else vram_put(0x00);
		bg_rand=rand8() & 0x5f;
		if (bg_rand >= 0x0A && bg_rand <= 0x0D ){
			vram_put(bg_rand);
		}
		else vram_put(0x00);
	}
	}

	ppu_on_all(); // turn on screen
}



void main (void) {
	
	
	
	set_vram_buffer(); // do at least once, sets a pointer to a buffer
	clear_vram_buffer();

	//draw_bg();
	pal_bg(palette_bg);
	pal_spr(palette_sp);
	bank_spr(1);
	ppu_on_all(); 
	draw_bg();
	
	
	for (i=0; i<8;i++){
		
		comet_speed[i]=0x01;
		comet_dir[i]=i*32;
		
	}
	//oam_size(1); //8x16

	while (1){		
		pad1 = pad_poll(0);
		ppu_wait_nmi();
		oam_clear();
		sprid = 0;
		

		player.sprite = (player.dir>>4) +0x10;
		
		sprid = oam_spr(player.x,player.y,player.sprite,0,sprid);
		if (player.shoot==1) sprid = oam_spr(bullet.x,bullet.y,bullet.sprite,0,sprid);

		for (i=0; i<8;i++){
			sprid = oam_spr(comet_x[i],comet_y[i],comet_sprite[i],0,sprid);

			comet_speed_x[i] = (cos_table[comet_dir[i]>>3]*comet_speed[i]);
			comet_speed_y[i] = (sin_table[comet_dir[i]>>3]*comet_speed[i]);
			
		}
		


		if (pad1 & PAD_UP){
			if (player.speed<8) player.speed++;
		}
		else if (pad1 & PAD_DOWN){
			if (player.speed>-8) player.speed--;
		}
		else{
			if (player.speed>0)	player.speed--;
			else if (player.speed<0) player.speed++;
		}
		if (pad1 & PAD_RIGHT) player.dir+=4;

		else if (pad1 & PAD_LEFT) player.dir-=4;
		if (pad1 & PAD_A){
			if (player.shoot!=1){
				bullet.x=player.x;
				bullet.y=player.y;
				bullet.dir=player.dir;
				bullet.speed_x = (cos_table[bullet.dir>>3])>>1;
				bullet.speed_y = (sin_table[bullet.dir>>3])>>1;
				player.shoot=1;
			}
				
		}
		bullet.x+=bullet.speed_x;
		bullet.y+=bullet.speed_y;

		if (bullet.x>=0xf8 || bullet.y>=0xf8) player.shoot=0;
		
		

		player.speed_x = (cos_table[player.dir>>3]*player.speed);
		player.speed_y = (sin_table[player.dir>>3]*player.speed);


		// player.x+=player.speed_x;
		// player.y+=player.speed_y;
		
		if (player.speed_x<0){
			player.speed_x=-player.speed_x;
			player.x-=player.speed_x>>5; 
			}
		else{
			player.x+=player.speed_x>>5;
		}
		if (player.speed_y<0){
			player.speed_y=-player.speed_y;
			player.y-=player.speed_y>>5; 
			}
		else{
			player.y+=player.speed_y>>5;
		}

	for (i=0; i<8;i++){

		if (comet_x[i]< bullet.x+bullet.width && comet_x[i]+comet_width[i]>bullet.x &&
			comet_y[i]< bullet.y+bullet.height && comet_y[i]+comet_height[i]>bullet.y && player.shoot==1){
				//comet_speed[i]=rand8()&0x03;
				comet_dir[i]=rand8();
				comet_speed_x[i] = (cos_table[comet_dir[i]>>3]*comet_speed[i]);
				comet_speed_y[i] = (sin_table[comet_dir[i]>>3]*comet_speed[i]);
				comet_sprite[i] = (comet_dir[i]>>4) +0x10;
				player.shoot=0;
			}
		

		if (comet_speed_x[i]<0){
			comet_speed_x[i]=-comet_speed_x[i];
			comet_x[i]-=comet_speed_x[i]>>3; 
			}
		else{
			comet_x[i]+=comet_speed_x[i]>>3;
		}
		if (comet_speed_y[i]<0){
			comet_speed_y[i]=-comet_speed_y[i];
			comet_y[i]-=comet_speed_y[i]>>3; 
			}
		else{
			comet_y[i]+=comet_speed_y[i]>>3;
		}
	}
		
		//set_scroll_x(bgp);
		set_scroll_y(bgp);
		if (bgp==0xef) bgp=0;
		else ++bgp;

		
	}
}
