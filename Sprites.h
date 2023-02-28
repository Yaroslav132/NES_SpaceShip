////////////////////////////////////////////////////////////////////LUFFY/////////////////////////////////
const unsigned char lrs0[]={
	  0,  0,0x0A,0,
	  8,  0,0x0B,0,
	  0,  8,0x10,0,
	  8,  8,0x11,0,
	128
};
const unsigned char lrs1[]={
	  0,  1,0x0A,0,
	  8,  1,0x0B,0,
	  0,  8,0x10,0,
	  8,  8,0x11,0,
	128
};
//////////////////////////////////////////////////run
const unsigned char lrr0[]={
	  0,  0,0x0C,0,
	  8,  0,0x0D,0,
	  0,  8,0x12,0,
	  8,  8,0x13,0,
	128
};
const unsigned char lrr1[]={
	  0,  0,0x0C,0,
	  8,  0,0x0D,0,
	  0,  8,0x14,0,
	  8,  8,0x15,0,
	128
};
const unsigned char lrr2[]={
	  0,  0,0x0C,0,
	  8,  0,0x0D,0,
	  0,  8,0x16,0,
	  8,  8,0x17,0,
	128
};
const unsigned char lrr3[]={
	  0,  0,0x0C,0,
	  8,  0,0x0D,0,
	  0,  8,0x18,0,
	  8,  8,0x19,0,
	128
};
const unsigned char lrj0[]={
	  0,  0,0x0E,0,
	  8,  0,0x0D,0,
	  0,  8,0x1A,0,
	  8,  8,0x1B,0,
	128
};
const unsigned char lrj1[]={
	  0,  1,0x0E,0,
	  8,  1,0x0D,0,
	  0,  8,0x1C,0,
	  8,  8,0x1B,0,
	128
};
////////////////////////////////////////////////
const unsigned char lrp11[]={
	  0,  0,0x0C,0,
	  8,  0,0x0D,0,
	  0,  8,0x1D,0,
	  8,  8,0x1E,0,
	128
};
const unsigned char lrp12[]={
	  0,  0,0x0C,0,
	  8,  0,0x0D,0,
	  0,  8,0x1F,0,
	  8,  8,0x20,0,
	  16, 8,0x0F,0,
	128
};
const unsigned char lrp13[]={
	  0,  0,0x0C,0,
	  8,  0,0x0D,0,
	  0,  8,0x21,0,
	  8,  8,0x22,0,
	128
};
/////////////////////////////////////////////////////////
const unsigned char lrp21[]={
	  0,  0,0x0C,0,
	  8,  0,0x0D,0,
	  0,  8,0x29,0,
	  8,  8,0x2A,0,
	128
};
const unsigned char lrp22[]={
	  0,  0,0x23,0,
	  8,  0,0x24,0,
	  0,  8,0x2B,0,
	  8,  8,0x2C,0,
	128
};
const unsigned char lrp23[]={
	  0,  0,0x23,0,
	  8,  0,0x25,0,
	  0,  8,0x2D,0,
	  8,  8,0x2E,0,
	128
};
const unsigned char lrp24[]={
	  0,  0,0x23,0,
	  8,  0,0x25,0,
	  0,  8,0x2D,0,
	  8,  8,0x2E,0,
	  16, 8,0x0F,0,
	128
};
const unsigned char lrp25[]={
	  1,  1,0x0A,0,
	  9,  1,0x0B,0,
	  0,  8,0x2F,0,
	  8,  8,0x2A,0,
	128
};

///////////////////////////////////////////////
const unsigned char lrp31[]={
	  0,  0,0x23,0,
	  8,  0,0x24,0,
	  0,  8,0x29,0,
	  8,  8,0x2a,0,
	128
};
const unsigned char lrp32[]={
	  0,  0,0x23,0,
	  8,  0,0x25,0,
	  0,  8,0x2b,0,
	  8,  8,0x2c,0,
	128
};
const unsigned char lrp33[]={
	  0,  0,0x26,0,
	  8,  0,0x27,0,
	  0,  8,0x2d,0,
	  8,  8,0x2e,0,
	128
};

const unsigned char lrp34[]={
	  6,  3,0x28,0,
	//  8,  0,0x0D,0,
	  0,  8,0x2f,0,
	  8,  8,0x2e,0,
	  16, 8,0x37,0,
	  24, 8,0x0F,0,
	128
};
const unsigned char lrp35[]={
	  6,  3,0x28,0,
	//  8,  0,0x0D,0,
	  0,  8,0x2f,0,
	  8,  8,0x2e,0,
	  16, 8,0x0F,0,
	128
};
const unsigned char lrp36[]={
	  6,  3,0x28,0,
	//  8,  0,0x0D,0,
	  0,  8,0x2f,0,
	  8,  8,0x2e,0,
	128
};
/////////////////////////////////////////
const unsigned char lrh1[]={
	  0,  0,0x3C,0,
	  8,  0,0x3D,0,
	  5,  8,0x3E,0,
	  //8,  8,0x2e,0,
	128
};
const unsigned char lrh2[]={
	  0,  0,0x3F,0,
	  //8,  0,0x3D,0,
	  0,  8,0x40,0,
	  8,  8,0x41,0,
	128
};

////////////////////////////////////////////////

const unsigned char* luf_r_spr[]={lrs0,lrs1,
lrr0,lrr1,lrr2,lrr3,
lrj0,lrj1,
lrp11,lrp12,lrp13,

lrp21,lrp22,lrp23,lrp24,lrp25,
lrp31,lrp32,lrp33,lrp34,lrp35,lrp36,
lrh1,lrh2
};
////////////////////////////////////////////////////////////////














const unsigned char lls0[]={
	  8,  0,0x0A,80,
	  0,  0,0x0B,80,
	  8,  8,0x10,80,
	  0,  8,0x11,80,
	128
};
const unsigned char lls1[]={
	  8,  1,0x0A,80,
	  0,  1,0x0B,80,
	  8,  8,0x10,80,
	  0,  8,0x11,80,
	128
};
//////////////////////////////////////////////////run
const unsigned char llr0[]={
	  8,  0,0x0C,80,
	  0,  0,0x0D,80,
	  8,  8,0x12,80,
	  0,  8,0x13,80,
	128
};
const unsigned char llr1[]={
	  8,  0,0x0C,80,
	  0,  0,0x0D,80,
	  8,  8,0x14,80,
	  0,  8,0x15,80,
	128
};
const unsigned char llr2[]={
	  8,  0,0x0C,80,
	  0,  0,0x0D,80,
	  8,  8,0x16,80,
	  0,  8,0x17,80,
	128
};
const unsigned char llr3[]={
	  8,  0,0x0C,80,
	  0,  0,0x0D,80,
	  8,  8,0x18,80,
	  0,  8,0x19,80,
	128
};

const unsigned char llj0[]={
	  8,  0,0x0E,80,
	  0,  0,0x0D,80,
	  8,  8,0x1A,80,
	  0,  8,0x1B,80,
	128
};
const unsigned char llj1[]={
	  8,  1,0x0E,80,
	  0,  1,0x0D,80,
	  8,  8,0x1C,80,
	  0,  8,0x1B,80,
	128
};

const unsigned char* luf_l_spr[]={lls0,lls1,llr0,llr1,llr2,llr3,llj0,llj1};





////////////////////////////////////////////////////////ZORO////////////////////////////////////
const unsigned char zrs0[]={
	  5,  0,0x60,1,
	  //8,  0,0x0B,0,
	  0,  8,0x61,1,
	  8,  8,0x62,1,
	128
};
const unsigned char zrs1[]={
	  5,  1,0x60,1,
	  //8,  1,0x0B,0,
	  0,  8,0x61,1,
	  8,  8,0x62,1,
	128
};

const unsigned char zrr0[]={
	  //0,  0,0x0C,0,
	  8,  0,0x63,1,
	  0,  8,0x64,1,
	  8,  8,0x65,1,
	128
};
const unsigned char zrr1[]={
	  //0,  0,0x0C,0,
	  8,  0,0x63,1,
	  0,  8,0x66,1,
	  8,  8,0x65,1,
	128
};
const unsigned char zrr2[]={
	  //0,  0,0x0C,0,
	  8,  0,0x63,1,
	  0,  8,0x67,1,
	  8,  8,0x68,1,
	128
};
const unsigned char zrr3[]={
	  //0,  0,0x0C,0,
	  8,  0,0x63,1,
	  0,  8,0x69,1,
	  8,  8,0x6A,1,
	128
};


const unsigned char zrj0[]={
	  0,  0,0x6B,1,
	  8,  0,0x6C,1,
	  0,  8,0x6D,1,
	  8,  8,0x6E,1,
	128
};
const unsigned char zrj1[]={
	  0,  2,0x6B,1,
	  8,  2,0x6C,1,
	  0,  8,0x6F,1,
	  8,  8,0x6F,81,
	128
};
const unsigned char* zor_r_spr[]={zrs0,zrs1,zrr0,zrr1,zrr2,zrr3,zrj0,zrj1};


///////////////////////////////////////////////////////////////////////////

const unsigned char zls0[]={
	  3,  0,0x60,81,
	  //8,  0,0x0B,0,
	  8,  8,0x61,81,
	  0,  8,0x62,81,
	128
};
const unsigned char zls1[]={
	  3,  1,0x60,81,
	  //8,  1,0x0B,0,
	  8,  8,0x61,81,
	  0,  8,0x62,81,
	128
};

const unsigned char zlr0[]={
	  //0,  0,0x0C,0,
	  0,  0,0x63,81,
	  8,  8,0x64,81,
	  0,  8,0x65,81,
	128
};
const unsigned char zlr1[]={
	  //0,  0,0x0C,0,
	  0,  0,0x63,81,
	  8,  8,0x66,81,
	  0,  8,0x65,81,
	128
};
const unsigned char zlr2[]={
	  //0,  0,0x0C,0,
	  0,  0,0x63,81,
	  8,  8,0x67,81,
	  0,  8,0x68,81,
	128
};
const unsigned char zlr3[]={
	  //0,  0,0x0C,0,
	  0,  0,0x63,81,
	  8,  8,0x69,81,
	  0,  8,0x6A,81,
	128
};


const unsigned char zlj0[]={
	  8,  0,0x6B,81,
	  0,  0,0x6C,81,
	  8,  8,0x6D,81,
	  0,  8,0x6E,81,
	128
};
const unsigned char zlj1[]={
	  8,  2,0x6B,81,
	  0,  2,0x6C,81,
	  0,  8,0x6F,1,
	  8,  8,0x6F,81,
	128
};




const unsigned char* zor_l_spr[]={zls0,zls1,zlr0,zlr1,zlr2,zlr3,zlj0,zlj1};