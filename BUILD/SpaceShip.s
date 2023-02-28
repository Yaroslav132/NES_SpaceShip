;
; File generated by cc65 v 2.19 - Git d0f17ba
;
	.fopt		compiler,"cc65 v 2.19 - Git d0f17ba"
	.setcpu		"6502"
	.smart		on
	.autoimport	on
	.case		on
	.debuginfo	off
	.importzp	sp, sreg, regsave, regbank
	.importzp	tmp1, tmp2, tmp3, tmp4, ptr1, ptr2, ptr3, ptr4
	.macpack	longbranch
	.forceimport	__STARTUP__
	.import		_pal_bg
	.import		_pal_spr
	.import		_ppu_wait_nmi
	.import		_ppu_off
	.import		_ppu_on_all
	.import		_oam_clear
	.import		_oam_spr
	.import		_pad_poll
	.import		_bank_spr
	.import		_rand8
	.import		_vram_adr
	.import		_vram_put
	.import		_memcpy
	.import		_set_vram_buffer
	.import		_clear_vram_buffer
	.import		_set_scroll_y
	.export		_lrs0
	.export		_lrs1
	.export		_lrr0
	.export		_lrr1
	.export		_lrr2
	.export		_lrr3
	.export		_lrj0
	.export		_lrj1
	.export		_lrp11
	.export		_lrp12
	.export		_lrp13
	.export		_lrp21
	.export		_lrp22
	.export		_lrp23
	.export		_lrp24
	.export		_lrp25
	.export		_lrp31
	.export		_lrp32
	.export		_lrp33
	.export		_lrp34
	.export		_lrp35
	.export		_lrp36
	.export		_lrh1
	.export		_lrh2
	.export		_luf_r_spr
	.export		_lls0
	.export		_lls1
	.export		_llr0
	.export		_llr1
	.export		_llr2
	.export		_llr3
	.export		_llj0
	.export		_llj1
	.export		_luf_l_spr
	.export		_zrs0
	.export		_zrs1
	.export		_zrr0
	.export		_zrr1
	.export		_zrr2
	.export		_zrr3
	.export		_zrj0
	.export		_zrj1
	.export		_zor_r_spr
	.export		_zls0
	.export		_zls1
	.export		_zlr0
	.export		_zlr1
	.export		_zlr2
	.export		_zlr3
	.export		_zlj0
	.export		_zlj1
	.export		_zor_l_spr
	.export		_sprid
	.export		_pad1
	.export		_collision
	.export		_p_maps
	.export		_c1
	.export		_All_Collision_Maps
	.export		_map
	.export		_temp_x
	.export		_temp_y
	.export		_temp1
	.export		_c_map
	.export		_corner1
	.export		_corner2
	.export		_alarm
	.export		_frame_max
	.export		_frame_min
	.export		_pause
	.export		_player
	.export		_bullet
	.export		_comet_x
	.export		_comet_y
	.export		_comet_width
	.export		_comet_height
	.export		_comet_dir
	.export		_comet_speed_x
	.export		_comet_speed_y
	.export		_comet_speed
	.export		_comet_sprite
	.export		_comet_shoot
	.export		_bg_rand
	.export		_bgp
	.export		_i
	.export		_sin_table
	.export		_cos_table
	.export		_palette_bg
	.export		_palette_sp
	.export		_draw_bg
	.export		_main

.segment	"DATA"

_luf_r_spr:
	.addr	_lrs0
	.addr	_lrs1
	.addr	_lrr0
	.addr	_lrr1
	.addr	_lrr2
	.addr	_lrr3
	.addr	_lrj0
	.addr	_lrj1
	.addr	_lrp11
	.addr	_lrp12
	.addr	_lrp13
	.addr	_lrp21
	.addr	_lrp22
	.addr	_lrp23
	.addr	_lrp24
	.addr	_lrp25
	.addr	_lrp31
	.addr	_lrp32
	.addr	_lrp33
	.addr	_lrp34
	.addr	_lrp35
	.addr	_lrp36
	.addr	_lrh1
	.addr	_lrh2
_luf_l_spr:
	.addr	_lls0
	.addr	_lls1
	.addr	_llr0
	.addr	_llr1
	.addr	_llr2
	.addr	_llr3
	.addr	_llj0
	.addr	_llj1
_zor_r_spr:
	.addr	_zrs0
	.addr	_zrs1
	.addr	_zrr0
	.addr	_zrr1
	.addr	_zrr2
	.addr	_zrr3
	.addr	_zrj0
	.addr	_zrj1
_zor_l_spr:
	.addr	_zls0
	.addr	_zls1
	.addr	_zlr0
	.addr	_zlr1
	.addr	_zlr2
	.addr	_zlr3
	.addr	_zlj0
	.addr	_zlj1
_alarm:
	.byte	$00
_frame_max:
	.byte	$00
_frame_min:
	.byte	$00
_pause:
	.byte	$00
_player:
	.byte	$68
	.byte	$90
	.byte	$08
	.byte	$08
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
_bullet:
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$0A
	.res	1,$00
_comet_x:
	.byte	$68
	.byte	$68
	.byte	$68
	.byte	$68
	.byte	$68
	.byte	$68
	.byte	$68
	.byte	$68
_comet_y:
	.byte	$90
	.byte	$90
	.byte	$90
	.byte	$90
	.byte	$90
	.byte	$90
	.byte	$90
	.byte	$90
_comet_width:
	.byte	$08
	.byte	$08
	.byte	$08
	.byte	$08
	.byte	$08
	.byte	$08
	.byte	$08
	.byte	$08
_comet_height:
	.byte	$08
	.byte	$08
	.byte	$08
	.byte	$08
	.byte	$08
	.byte	$08
	.byte	$08
	.byte	$08
_comet_dir:
	.res	8,$00
_comet_speed_x:
	.res	8,$00
_comet_speed_y:
	.res	8,$00
_comet_speed:
	.res	8,$00
_comet_sprite:
	.res	8,$00
_comet_shoot:
	.res	8,$00
_bgp:
	.byte	$00
_sin_table:
	.byte	$00
	.byte	$04
	.byte	$07
	.byte	$09
	.byte	$0B
	.byte	$0C
	.byte	$0D
	.byte	$0E
	.byte	$0F
	.byte	$0E
	.byte	$0D
	.byte	$0C
	.byte	$0B
	.byte	$09
	.byte	$07
	.byte	$04
	.byte	$00
	.byte	$FC
	.byte	$F9
	.byte	$F7
	.byte	$F5
	.byte	$F4
	.byte	$F3
	.byte	$F2
	.byte	$F1
	.byte	$F2
	.byte	$F3
	.byte	$F4
	.byte	$F5
	.byte	$F7
	.byte	$F9
	.byte	$FC
_cos_table:
	.byte	$0F
	.byte	$0E
	.byte	$0D
	.byte	$0C
	.byte	$0B
	.byte	$09
	.byte	$07
	.byte	$04
	.byte	$00
	.byte	$FC
	.byte	$F9
	.byte	$F7
	.byte	$F5
	.byte	$F4
	.byte	$F3
	.byte	$F2
	.byte	$F1
	.byte	$F2
	.byte	$F3
	.byte	$F4
	.byte	$F5
	.byte	$F7
	.byte	$F9
	.byte	$FC
	.byte	$00
	.byte	$04
	.byte	$07
	.byte	$09
	.byte	$0B
	.byte	$0C
	.byte	$0D
	.byte	$0E
	.byte	$0F

.segment	"RODATA"

_lrs0:
	.byte	$00
	.byte	$00
	.byte	$0A
	.byte	$00
	.byte	$08
	.byte	$00
	.byte	$0B
	.byte	$00
	.byte	$00
	.byte	$08
	.byte	$10
	.byte	$00
	.byte	$08
	.byte	$08
	.byte	$11
	.byte	$00
	.byte	$80
_lrs1:
	.byte	$00
	.byte	$01
	.byte	$0A
	.byte	$00
	.byte	$08
	.byte	$01
	.byte	$0B
	.byte	$00
	.byte	$00
	.byte	$08
	.byte	$10
	.byte	$00
	.byte	$08
	.byte	$08
	.byte	$11
	.byte	$00
	.byte	$80
_lrr0:
	.byte	$00
	.byte	$00
	.byte	$0C
	.byte	$00
	.byte	$08
	.byte	$00
	.byte	$0D
	.byte	$00
	.byte	$00
	.byte	$08
	.byte	$12
	.byte	$00
	.byte	$08
	.byte	$08
	.byte	$13
	.byte	$00
	.byte	$80
_lrr1:
	.byte	$00
	.byte	$00
	.byte	$0C
	.byte	$00
	.byte	$08
	.byte	$00
	.byte	$0D
	.byte	$00
	.byte	$00
	.byte	$08
	.byte	$14
	.byte	$00
	.byte	$08
	.byte	$08
	.byte	$15
	.byte	$00
	.byte	$80
_lrr2:
	.byte	$00
	.byte	$00
	.byte	$0C
	.byte	$00
	.byte	$08
	.byte	$00
	.byte	$0D
	.byte	$00
	.byte	$00
	.byte	$08
	.byte	$16
	.byte	$00
	.byte	$08
	.byte	$08
	.byte	$17
	.byte	$00
	.byte	$80
_lrr3:
	.byte	$00
	.byte	$00
	.byte	$0C
	.byte	$00
	.byte	$08
	.byte	$00
	.byte	$0D
	.byte	$00
	.byte	$00
	.byte	$08
	.byte	$18
	.byte	$00
	.byte	$08
	.byte	$08
	.byte	$19
	.byte	$00
	.byte	$80
_lrj0:
	.byte	$00
	.byte	$00
	.byte	$0E
	.byte	$00
	.byte	$08
	.byte	$00
	.byte	$0D
	.byte	$00
	.byte	$00
	.byte	$08
	.byte	$1A
	.byte	$00
	.byte	$08
	.byte	$08
	.byte	$1B
	.byte	$00
	.byte	$80
_lrj1:
	.byte	$00
	.byte	$01
	.byte	$0E
	.byte	$00
	.byte	$08
	.byte	$01
	.byte	$0D
	.byte	$00
	.byte	$00
	.byte	$08
	.byte	$1C
	.byte	$00
	.byte	$08
	.byte	$08
	.byte	$1B
	.byte	$00
	.byte	$80
_lrp11:
	.byte	$00
	.byte	$00
	.byte	$0C
	.byte	$00
	.byte	$08
	.byte	$00
	.byte	$0D
	.byte	$00
	.byte	$00
	.byte	$08
	.byte	$1D
	.byte	$00
	.byte	$08
	.byte	$08
	.byte	$1E
	.byte	$00
	.byte	$80
_lrp12:
	.byte	$00
	.byte	$00
	.byte	$0C
	.byte	$00
	.byte	$08
	.byte	$00
	.byte	$0D
	.byte	$00
	.byte	$00
	.byte	$08
	.byte	$1F
	.byte	$00
	.byte	$08
	.byte	$08
	.byte	$20
	.byte	$00
	.byte	$10
	.byte	$08
	.byte	$0F
	.byte	$00
	.byte	$80
_lrp13:
	.byte	$00
	.byte	$00
	.byte	$0C
	.byte	$00
	.byte	$08
	.byte	$00
	.byte	$0D
	.byte	$00
	.byte	$00
	.byte	$08
	.byte	$21
	.byte	$00
	.byte	$08
	.byte	$08
	.byte	$22
	.byte	$00
	.byte	$80
_lrp21:
	.byte	$00
	.byte	$00
	.byte	$0C
	.byte	$00
	.byte	$08
	.byte	$00
	.byte	$0D
	.byte	$00
	.byte	$00
	.byte	$08
	.byte	$29
	.byte	$00
	.byte	$08
	.byte	$08
	.byte	$2A
	.byte	$00
	.byte	$80
_lrp22:
	.byte	$00
	.byte	$00
	.byte	$23
	.byte	$00
	.byte	$08
	.byte	$00
	.byte	$24
	.byte	$00
	.byte	$00
	.byte	$08
	.byte	$2B
	.byte	$00
	.byte	$08
	.byte	$08
	.byte	$2C
	.byte	$00
	.byte	$80
_lrp23:
	.byte	$00
	.byte	$00
	.byte	$23
	.byte	$00
	.byte	$08
	.byte	$00
	.byte	$25
	.byte	$00
	.byte	$00
	.byte	$08
	.byte	$2D
	.byte	$00
	.byte	$08
	.byte	$08
	.byte	$2E
	.byte	$00
	.byte	$80
_lrp24:
	.byte	$00
	.byte	$00
	.byte	$23
	.byte	$00
	.byte	$08
	.byte	$00
	.byte	$25
	.byte	$00
	.byte	$00
	.byte	$08
	.byte	$2D
	.byte	$00
	.byte	$08
	.byte	$08
	.byte	$2E
	.byte	$00
	.byte	$10
	.byte	$08
	.byte	$0F
	.byte	$00
	.byte	$80
_lrp25:
	.byte	$01
	.byte	$01
	.byte	$0A
	.byte	$00
	.byte	$09
	.byte	$01
	.byte	$0B
	.byte	$00
	.byte	$00
	.byte	$08
	.byte	$2F
	.byte	$00
	.byte	$08
	.byte	$08
	.byte	$2A
	.byte	$00
	.byte	$80
_lrp31:
	.byte	$00
	.byte	$00
	.byte	$23
	.byte	$00
	.byte	$08
	.byte	$00
	.byte	$24
	.byte	$00
	.byte	$00
	.byte	$08
	.byte	$29
	.byte	$00
	.byte	$08
	.byte	$08
	.byte	$2A
	.byte	$00
	.byte	$80
_lrp32:
	.byte	$00
	.byte	$00
	.byte	$23
	.byte	$00
	.byte	$08
	.byte	$00
	.byte	$25
	.byte	$00
	.byte	$00
	.byte	$08
	.byte	$2B
	.byte	$00
	.byte	$08
	.byte	$08
	.byte	$2C
	.byte	$00
	.byte	$80
_lrp33:
	.byte	$00
	.byte	$00
	.byte	$26
	.byte	$00
	.byte	$08
	.byte	$00
	.byte	$27
	.byte	$00
	.byte	$00
	.byte	$08
	.byte	$2D
	.byte	$00
	.byte	$08
	.byte	$08
	.byte	$2E
	.byte	$00
	.byte	$80
_lrp34:
	.byte	$06
	.byte	$03
	.byte	$28
	.byte	$00
	.byte	$00
	.byte	$08
	.byte	$2F
	.byte	$00
	.byte	$08
	.byte	$08
	.byte	$2E
	.byte	$00
	.byte	$10
	.byte	$08
	.byte	$37
	.byte	$00
	.byte	$18
	.byte	$08
	.byte	$0F
	.byte	$00
	.byte	$80
_lrp35:
	.byte	$06
	.byte	$03
	.byte	$28
	.byte	$00
	.byte	$00
	.byte	$08
	.byte	$2F
	.byte	$00
	.byte	$08
	.byte	$08
	.byte	$2E
	.byte	$00
	.byte	$10
	.byte	$08
	.byte	$0F
	.byte	$00
	.byte	$80
_lrp36:
	.byte	$06
	.byte	$03
	.byte	$28
	.byte	$00
	.byte	$00
	.byte	$08
	.byte	$2F
	.byte	$00
	.byte	$08
	.byte	$08
	.byte	$2E
	.byte	$00
	.byte	$80
_lrh1:
	.byte	$00
	.byte	$00
	.byte	$3C
	.byte	$00
	.byte	$08
	.byte	$00
	.byte	$3D
	.byte	$00
	.byte	$05
	.byte	$08
	.byte	$3E
	.byte	$00
	.byte	$80
_lrh2:
	.byte	$00
	.byte	$00
	.byte	$3F
	.byte	$00
	.byte	$00
	.byte	$08
	.byte	$40
	.byte	$00
	.byte	$08
	.byte	$08
	.byte	$41
	.byte	$00
	.byte	$80
_lls0:
	.byte	$08
	.byte	$00
	.byte	$0A
	.byte	$50
	.byte	$00
	.byte	$00
	.byte	$0B
	.byte	$50
	.byte	$08
	.byte	$08
	.byte	$10
	.byte	$50
	.byte	$00
	.byte	$08
	.byte	$11
	.byte	$50
	.byte	$80
_lls1:
	.byte	$08
	.byte	$01
	.byte	$0A
	.byte	$50
	.byte	$00
	.byte	$01
	.byte	$0B
	.byte	$50
	.byte	$08
	.byte	$08
	.byte	$10
	.byte	$50
	.byte	$00
	.byte	$08
	.byte	$11
	.byte	$50
	.byte	$80
_llr0:
	.byte	$08
	.byte	$00
	.byte	$0C
	.byte	$50
	.byte	$00
	.byte	$00
	.byte	$0D
	.byte	$50
	.byte	$08
	.byte	$08
	.byte	$12
	.byte	$50
	.byte	$00
	.byte	$08
	.byte	$13
	.byte	$50
	.byte	$80
_llr1:
	.byte	$08
	.byte	$00
	.byte	$0C
	.byte	$50
	.byte	$00
	.byte	$00
	.byte	$0D
	.byte	$50
	.byte	$08
	.byte	$08
	.byte	$14
	.byte	$50
	.byte	$00
	.byte	$08
	.byte	$15
	.byte	$50
	.byte	$80
_llr2:
	.byte	$08
	.byte	$00
	.byte	$0C
	.byte	$50
	.byte	$00
	.byte	$00
	.byte	$0D
	.byte	$50
	.byte	$08
	.byte	$08
	.byte	$16
	.byte	$50
	.byte	$00
	.byte	$08
	.byte	$17
	.byte	$50
	.byte	$80
_llr3:
	.byte	$08
	.byte	$00
	.byte	$0C
	.byte	$50
	.byte	$00
	.byte	$00
	.byte	$0D
	.byte	$50
	.byte	$08
	.byte	$08
	.byte	$18
	.byte	$50
	.byte	$00
	.byte	$08
	.byte	$19
	.byte	$50
	.byte	$80
_llj0:
	.byte	$08
	.byte	$00
	.byte	$0E
	.byte	$50
	.byte	$00
	.byte	$00
	.byte	$0D
	.byte	$50
	.byte	$08
	.byte	$08
	.byte	$1A
	.byte	$50
	.byte	$00
	.byte	$08
	.byte	$1B
	.byte	$50
	.byte	$80
_llj1:
	.byte	$08
	.byte	$01
	.byte	$0E
	.byte	$50
	.byte	$00
	.byte	$01
	.byte	$0D
	.byte	$50
	.byte	$08
	.byte	$08
	.byte	$1C
	.byte	$50
	.byte	$00
	.byte	$08
	.byte	$1B
	.byte	$50
	.byte	$80
_zrs0:
	.byte	$05
	.byte	$00
	.byte	$60
	.byte	$01
	.byte	$00
	.byte	$08
	.byte	$61
	.byte	$01
	.byte	$08
	.byte	$08
	.byte	$62
	.byte	$01
	.byte	$80
_zrs1:
	.byte	$05
	.byte	$01
	.byte	$60
	.byte	$01
	.byte	$00
	.byte	$08
	.byte	$61
	.byte	$01
	.byte	$08
	.byte	$08
	.byte	$62
	.byte	$01
	.byte	$80
_zrr0:
	.byte	$08
	.byte	$00
	.byte	$63
	.byte	$01
	.byte	$00
	.byte	$08
	.byte	$64
	.byte	$01
	.byte	$08
	.byte	$08
	.byte	$65
	.byte	$01
	.byte	$80
_zrr1:
	.byte	$08
	.byte	$00
	.byte	$63
	.byte	$01
	.byte	$00
	.byte	$08
	.byte	$66
	.byte	$01
	.byte	$08
	.byte	$08
	.byte	$65
	.byte	$01
	.byte	$80
_zrr2:
	.byte	$08
	.byte	$00
	.byte	$63
	.byte	$01
	.byte	$00
	.byte	$08
	.byte	$67
	.byte	$01
	.byte	$08
	.byte	$08
	.byte	$68
	.byte	$01
	.byte	$80
_zrr3:
	.byte	$08
	.byte	$00
	.byte	$63
	.byte	$01
	.byte	$00
	.byte	$08
	.byte	$69
	.byte	$01
	.byte	$08
	.byte	$08
	.byte	$6A
	.byte	$01
	.byte	$80
_zrj0:
	.byte	$00
	.byte	$00
	.byte	$6B
	.byte	$01
	.byte	$08
	.byte	$00
	.byte	$6C
	.byte	$01
	.byte	$00
	.byte	$08
	.byte	$6D
	.byte	$01
	.byte	$08
	.byte	$08
	.byte	$6E
	.byte	$01
	.byte	$80
_zrj1:
	.byte	$00
	.byte	$02
	.byte	$6B
	.byte	$01
	.byte	$08
	.byte	$02
	.byte	$6C
	.byte	$01
	.byte	$00
	.byte	$08
	.byte	$6F
	.byte	$01
	.byte	$08
	.byte	$08
	.byte	$6F
	.byte	$51
	.byte	$80
_zls0:
	.byte	$03
	.byte	$00
	.byte	$60
	.byte	$51
	.byte	$08
	.byte	$08
	.byte	$61
	.byte	$51
	.byte	$00
	.byte	$08
	.byte	$62
	.byte	$51
	.byte	$80
_zls1:
	.byte	$03
	.byte	$01
	.byte	$60
	.byte	$51
	.byte	$08
	.byte	$08
	.byte	$61
	.byte	$51
	.byte	$00
	.byte	$08
	.byte	$62
	.byte	$51
	.byte	$80
_zlr0:
	.byte	$00
	.byte	$00
	.byte	$63
	.byte	$51
	.byte	$08
	.byte	$08
	.byte	$64
	.byte	$51
	.byte	$00
	.byte	$08
	.byte	$65
	.byte	$51
	.byte	$80
_zlr1:
	.byte	$00
	.byte	$00
	.byte	$63
	.byte	$51
	.byte	$08
	.byte	$08
	.byte	$66
	.byte	$51
	.byte	$00
	.byte	$08
	.byte	$65
	.byte	$51
	.byte	$80
_zlr2:
	.byte	$00
	.byte	$00
	.byte	$63
	.byte	$51
	.byte	$08
	.byte	$08
	.byte	$67
	.byte	$51
	.byte	$00
	.byte	$08
	.byte	$68
	.byte	$51
	.byte	$80
_zlr3:
	.byte	$00
	.byte	$00
	.byte	$63
	.byte	$51
	.byte	$08
	.byte	$08
	.byte	$69
	.byte	$51
	.byte	$00
	.byte	$08
	.byte	$6A
	.byte	$51
	.byte	$80
_zlj0:
	.byte	$08
	.byte	$00
	.byte	$6B
	.byte	$51
	.byte	$00
	.byte	$00
	.byte	$6C
	.byte	$51
	.byte	$08
	.byte	$08
	.byte	$6D
	.byte	$51
	.byte	$00
	.byte	$08
	.byte	$6E
	.byte	$51
	.byte	$80
_zlj1:
	.byte	$08
	.byte	$02
	.byte	$6B
	.byte	$51
	.byte	$00
	.byte	$02
	.byte	$6C
	.byte	$51
	.byte	$00
	.byte	$08
	.byte	$6F
	.byte	$01
	.byte	$08
	.byte	$08
	.byte	$6F
	.byte	$51
	.byte	$80
_c1:
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$06
	.byte	$00
	.byte	$00
	.byte	$05
	.byte	$00
	.byte	$00
	.byte	$09
	.byte	$05
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$07
	.byte	$07
	.byte	$07
	.byte	$07
	.byte	$07
	.byte	$07
	.byte	$07
	.byte	$07
	.byte	$07
	.byte	$07
	.byte	$07
	.byte	$07
	.byte	$07
	.byte	$07
	.byte	$07
	.byte	$07
	.byte	$07
	.byte	$07
	.byte	$07
	.byte	$07
	.byte	$07
	.byte	$07
	.byte	$07
	.byte	$07
	.byte	$07
	.byte	$07
	.byte	$07
	.byte	$07
	.byte	$07
	.byte	$07
	.byte	$07
	.byte	$07
_All_Collision_Maps:
	.addr	_c1
_palette_bg:
	.byte	$0D
	.byte	$06
	.byte	$17
	.byte	$30
	.byte	$00
	.byte	$17
	.byte	$27
	.byte	$0F
	.byte	$00
	.byte	$0D
	.byte	$00
	.byte	$20
	.byte	$00
	.byte	$11
	.byte	$21
	.byte	$31
_palette_sp:
	.byte	$00
	.byte	$1C
	.byte	$14
	.byte	$31
	.byte	$00
	.byte	$09
	.byte	$36
	.byte	$10
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00

.segment	"BSS"

.segment	"ZEROPAGE"
_sprid:
	.res	1,$00
_pad1:
	.res	1,$00
_collision:
	.res	1,$00
_p_maps:
	.res	2,$00
_map:
	.res	1,$00
_temp_x:
	.res	1,$00
_temp_y:
	.res	1,$00
_temp1:
	.res	1,$00
.segment	"BSS"
_c_map:
	.res	240,$00
_corner1:
	.res	1,$00
_corner2:
	.res	1,$00
_bg_rand:
	.res	1,$00
_i:
	.res	1,$00

; ---------------------------------------------------------------
; void __near__ draw_bg (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_draw_bg: near

.segment	"CODE"

;
; ppu_off();
;
	jsr     _ppu_off
;
; memcpy (c_map, p_maps, 240);
;
	lda     #<(_c_map)
	ldx     #>(_c_map)
	jsr     pushax
	lda     _p_maps
	ldx     _p_maps+1
	jsr     pushax
	ldx     #$00
	lda     #$F0
	jsr     _memcpy
;
; vram_adr(NAMETABLE_A); //x=0;y=0
;
	ldx     #$20
	lda     #$00
	jsr     _vram_adr
;
; for(temp_y = 0; temp_y < 15; ++temp_y){
;
	lda     #$00
	sta     _temp_y
L0028:	lda     _temp_y
	cmp     #$0F
	jcs     L0003
;
; for(temp_x = 0; temp_x < 16; ++temp_x){
;
	lda     #$00
	sta     _temp_x
L0029:	lda     _temp_x
	cmp     #$10
	bcs     L0032
;
; temp1 = (temp_y << 4) + temp_x;
;
	lda     _temp_y
	asl     a
	asl     a
	asl     a
	asl     a
	clc
	adc     _temp_x
	sta     _temp1
;
; bg_rand=rand8() & 0x5f;
;
	jsr     _rand8
	and     #$5F
	sta     _bg_rand
;
; if (bg_rand >= 0x0A && bg_rand <= 0x0E ){
;
	cmp     #$0A
	lda     #$00
	bcc     L0024
	lda     _bg_rand
	cmp     #$0F
	bcc     L002C
	lda     #$00
	jmp     L0024
;
; vram_put(bg_rand);
;
L002C:	lda     _bg_rand
;
; else vram_put(0x00);
;
L0024:	jsr     _vram_put
;
; bg_rand=rand8() & 0x5f;
;
	jsr     _rand8
	and     #$5F
	sta     _bg_rand
;
; if (bg_rand >= 0x0A && bg_rand <= 0x0D ){
;
	cmp     #$0A
	lda     #$00
	bcc     L0025
	lda     _bg_rand
	cmp     #$0E
	bcc     L0030
	lda     #$00
	jmp     L0025
;
; vram_put(bg_rand);
;
L0030:	lda     _bg_rand
;
; else vram_put(0x00);
;
L0025:	jsr     _vram_put
;
; for(temp_x = 0; temp_x < 16; ++temp_x){
;
	inc     _temp_x
	jmp     L0029
;
; for(temp_x = 0; temp_x < 16; ++temp_x){
;
L0032:	lda     #$00
	sta     _temp_x
L0033:	lda     _temp_x
	cmp     #$10
	bcs     L003C
;
; temp1 = (temp_y << 4) + temp_x;
;
	lda     _temp_y
	asl     a
	asl     a
	asl     a
	asl     a
	clc
	adc     _temp_x
	sta     _temp1
;
; bg_rand=rand8() & 0x5f;
;
	jsr     _rand8
	and     #$5F
	sta     _bg_rand
;
; if (bg_rand >= 0x0A && bg_rand <= 0x0E ){
;
	cmp     #$0A
	lda     #$00
	bcc     L0026
	lda     _bg_rand
	cmp     #$0F
	bcc     L0036
	lda     #$00
	jmp     L0026
;
; vram_put(bg_rand);
;
L0036:	lda     _bg_rand
;
; else vram_put(0x00);
;
L0026:	jsr     _vram_put
;
; bg_rand=rand8() & 0x5f;
;
	jsr     _rand8
	and     #$5F
	sta     _bg_rand
;
; if (bg_rand >= 0x0A && bg_rand <= 0x0D ){
;
	cmp     #$0A
	lda     #$00
	bcc     L0027
	lda     _bg_rand
	cmp     #$0E
	bcc     L003A
	lda     #$00
	jmp     L0027
;
; vram_put(bg_rand);
;
L003A:	lda     _bg_rand
;
; else vram_put(0x00);
;
L0027:	jsr     _vram_put
;
; for(temp_x = 0; temp_x < 16; ++temp_x){
;
	inc     _temp_x
	jmp     L0033
;
; for(temp_y = 0; temp_y < 15; ++temp_y){
;
L003C:	inc     _temp_y
	jmp     L0028
;
; ppu_on_all(); // turn on screen
;
L0003:	jmp     _ppu_on_all

.endproc

; ---------------------------------------------------------------
; void __near__ main (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_main: near

.segment	"CODE"

;
; set_vram_buffer(); // do at least once, sets a pointer to a buffer
;
	jsr     _set_vram_buffer
;
; clear_vram_buffer();
;
	jsr     _clear_vram_buffer
;
; pal_bg(palette_bg);
;
	lda     #<(_palette_bg)
	ldx     #>(_palette_bg)
	jsr     _pal_bg
;
; pal_spr(palette_sp);
;
	lda     #<(_palette_sp)
	ldx     #>(_palette_sp)
	jsr     _pal_spr
;
; bank_spr(1);
;
	lda     #$01
	jsr     _bank_spr
;
; ppu_on_all(); 
;
	jsr     _ppu_on_all
;
; draw_bg();
;
	jsr     _draw_bg
;
; for (i=0; i<8;i++){
;
	lda     #$00
	sta     _i
L0087:	lda     _i
	cmp     #$08
	bcs     L0088
;
; comet_speed[i]=0x01;
;
	ldy     _i
	lda     #$01
	sta     _comet_speed,y
;
; comet_dir[i]=i*32;
;
	lda     #<(_comet_dir)
	ldx     #>(_comet_dir)
	clc
	adc     _i
	bcc     L0007
	inx
L0007:	sta     ptr1
	stx     ptr1+1
	lda     _i
	asl     a
	asl     a
	asl     a
	asl     a
	asl     a
	ldy     #$00
	sta     (ptr1),y
;
; for (i=0; i<8;i++){
;
	inc     _i
	jmp     L0087
;
; pad1 = pad_poll(0);
;
L0088:	lda     #$00
L0089:	jsr     _pad_poll
	sta     _pad1
;
; ppu_wait_nmi();
;
	jsr     _ppu_wait_nmi
;
; oam_clear();
;
	jsr     _oam_clear
;
; sprid = 0;
;
	lda     #$00
	sta     _sprid
;
; player.sprite = (player.dir>>4) +0x10;
;
	lda     _player+4
	lsr     a
	lsr     a
	lsr     a
	lsr     a
	clc
	adc     #$10
	sta     _player+8
;
; sprid = oam_spr(player.x,player.y,player.sprite,0,sprid);
;
	jsr     decsp4
	lda     _player
	ldy     #$03
	sta     (sp),y
	lda     _player+1
	dey
	sta     (sp),y
	lda     _player+8
	dey
	sta     (sp),y
	lda     #$00
	dey
	sta     (sp),y
	lda     _sprid
	jsr     _oam_spr
	sta     _sprid
;
; if (player.shoot==1) sprid = oam_spr(bullet.x,bullet.y,bullet.sprite,0,sprid);
;
	lda     _player+9
	cmp     #$01
	bne     L008A
	jsr     decsp4
	lda     _bullet
	ldy     #$03
	sta     (sp),y
	lda     _bullet+1
	dey
	sta     (sp),y
	lda     _bullet+8
	dey
	sta     (sp),y
	lda     #$00
	dey
	sta     (sp),y
	lda     _sprid
	jsr     _oam_spr
	sta     _sprid
;
; for (i=0; i<8;i++){
;
L008A:	lda     #$00
	sta     _i
L008B:	lda     _i
	cmp     #$08
	jcs     L008C
;
; sprid = oam_spr(comet_x[i],comet_y[i],comet_sprite[i],0,sprid);
;
	jsr     decsp4
	ldy     _i
	lda     _comet_x,y
	ldy     #$03
	sta     (sp),y
	ldy     _i
	lda     _comet_y,y
	ldy     #$02
	sta     (sp),y
	ldy     _i
	lda     _comet_sprite,y
	ldy     #$01
	sta     (sp),y
	lda     #$00
	dey
	sta     (sp),y
	lda     _sprid
	jsr     _oam_spr
	sta     _sprid
;
; comet_speed_x[i] = (cos_table[comet_dir[i]>>3]*comet_speed[i]);
;
	lda     #<(_comet_speed_x)
	ldx     #>(_comet_speed_x)
	clc
	adc     _i
	bcc     L0014
	inx
L0014:	jsr     pushax
	ldy     _i
	lda     _comet_dir,y
	lsr     a
	lsr     a
	lsr     a
	clc
	adc     #<(_cos_table)
	tay
	lda     #$00
	adc     #>(_cos_table)
	tax
	tya
	ldy     #$00
	jsr     ldaidx
	jsr     pushax
	lda     #<(_comet_speed)
	ldx     #>(_comet_speed)
	clc
	adc     _i
	bcc     L0016
	inx
L0016:	ldy     #$00
	jsr     ldaidx
	jsr     tosmulax
	cmp     #$80
	ldy     #$00
	jsr     staspidx
;
; comet_speed_y[i] = (sin_table[comet_dir[i]>>3]*comet_speed[i]);
;
	lda     #<(_comet_speed_y)
	ldx     #>(_comet_speed_y)
	clc
	adc     _i
	bcc     L0018
	inx
L0018:	jsr     pushax
	ldy     _i
	lda     _comet_dir,y
	lsr     a
	lsr     a
	lsr     a
	clc
	adc     #<(_sin_table)
	tay
	lda     #$00
	adc     #>(_sin_table)
	tax
	tya
	ldy     #$00
	jsr     ldaidx
	jsr     pushax
	lda     #<(_comet_speed)
	ldx     #>(_comet_speed)
	clc
	adc     _i
	bcc     L001A
	inx
L001A:	ldy     #$00
	jsr     ldaidx
	jsr     tosmulax
	cmp     #$80
	ldy     #$00
	jsr     staspidx
;
; for (i=0; i<8;i++){
;
	inc     _i
	jmp     L008B
;
; if (pad1 & PAD_UP){
;
L008C:	lda     _pad1
	and     #$08
	beq     L008D
;
; if (player.speed<8) player.speed++;
;
	lda     _player+7
	sec
	sbc     #$08
	bvc     L001F
	eor     #$80
L001F:	bpl     L0090
	lda     _player+7
	bpl     L002F
;
; else if (pad1 & PAD_DOWN){
;
	jmp     L002F
L008D:	lda     _pad1
	and     #$04
	beq     L008E
;
; if (player.speed>-8) player.speed--;
;
	lda     _player+7
	sec
	sbc     #$F9
	bvs     L0025
	eor     #$80
L0025:	bpl     L0090
	dec     _player+7
;
; else{
;
	jmp     L0090
;
; if (player.speed>0) player.speed--;
;
L008E:	lda     _player+7
	sec
	sbc     #$01
	bvs     L002A
	eor     #$80
L002A:	bpl     L008F
	dec     _player+7
;
; else if (player.speed<0) player.speed++;
;
	jmp     L0090
L008F:	lda     _player+7
	asl     a
	bcc     L0090
L002F:	inc     _player+7
;
; if (pad1 & PAD_RIGHT) player.dir+=4;
;
L0090:	lda     _pad1
	and     #$01
	beq     L0091
	lda     #$04
	clc
	adc     _player+4
;
; else if (pad1 & PAD_LEFT) player.dir-=4;
;
	jmp     L0084
L0091:	lda     _pad1
	and     #$02
	beq     L0092
	lda     _player+4
	sec
	sbc     #$04
L0084:	sta     _player+4
;
; if (pad1 & PAD_A){
;
L0092:	lda     _pad1
	and     #$80
	beq     L0093
;
; if (player.shoot!=1){
;
	lda     _player+9
	cmp     #$01
	beq     L0093
;
; bullet.x=player.x;
;
	lda     _player
	sta     _bullet
;
; bullet.y=player.y;
;
	lda     _player+1
	sta     _bullet+1
;
; bullet.dir=player.dir;
;
	lda     _player+4
	sta     _bullet+4
;
; bullet.speed_x = (cos_table[bullet.dir>>3])>>1;
;
	lsr     a
	lsr     a
	lsr     a
	clc
	adc     #<(_cos_table)
	tay
	lda     #$00
	adc     #>(_cos_table)
	tax
	tya
	ldy     #$00
	jsr     ldaidx
	jsr     asrax1
	cmp     #$80
	sta     _bullet+5
;
; bullet.speed_y = (sin_table[bullet.dir>>3])>>1;
;
	lda     _bullet+4
	lsr     a
	lsr     a
	lsr     a
	clc
	adc     #<(_sin_table)
	tay
	lda     #$00
	adc     #>(_sin_table)
	tax
	tya
	ldy     #$00
	jsr     ldaidx
	jsr     asrax1
	cmp     #$80
	sta     _bullet+6
;
; player.shoot=1;
;
	lda     #$01
	sta     _player+9
;
; bullet.x+=bullet.speed_x;
;
L0093:	lda     _bullet+5
	clc
	adc     _bullet
	sta     _bullet
;
; bullet.y+=bullet.speed_y;
;
	lda     _bullet+6
	clc
	adc     _bullet+1
	sta     _bullet+1
;
; if (bullet.x>=0xf8 || bullet.y>=0xf8) player.shoot=0;
;
	lda     _bullet
	cmp     #$F8
	bcs     L0098
	lda     _bullet+1
	cmp     #$F8
	bcc     L0099
L0098:	lda     #$00
	sta     _player+9
;
; player.speed_x = (cos_table[player.dir>>3]*player.speed);
;
L0099:	lda     _player+4
	lsr     a
	lsr     a
	lsr     a
	clc
	adc     #<(_cos_table)
	tay
	lda     #$00
	adc     #>(_cos_table)
	tax
	tya
	ldy     #$00
	jsr     ldaidx
	jsr     pushax
	ldx     #$00
	lda     _player+7
	bpl     L003C
	dex
L003C:	jsr     tosmulax
	cmp     #$80
	sta     _player+5
;
; player.speed_y = (sin_table[player.dir>>3]*player.speed);
;
	lda     _player+4
	lsr     a
	lsr     a
	lsr     a
	clc
	adc     #<(_sin_table)
	tay
	lda     #$00
	adc     #>(_sin_table)
	tax
	tya
	ldy     #$00
	jsr     ldaidx
	jsr     pushax
	ldx     #$00
	lda     _player+7
	bpl     L003E
	dex
L003E:	jsr     tosmulax
	cmp     #$80
	sta     _player+6
;
; if (player.speed_x<0){
;
	lda     _player+5
	asl     a
	ldx     #$00
	bcc     L009A
;
; player.speed_x=-player.speed_x;
;
	lda     _player+5
	eor     #$FF
	clc
	adc     #$01
	cmp     #$80
	sta     _player+5
;
; player.x-=player.speed_x>>5; 
;
	lda     _player+5
	bpl     L0044
	dex
L0044:	jsr     asrax4
	jsr     asrax1
	eor     #$FF
	sec
;
; else{
;
	jmp     L00A7
;
; player.x+=player.speed_x>>5;
;
L009A:	lda     _player+5
	bpl     L0046
	dex
L0046:	jsr     asrax4
	jsr     asrax1
	clc
L00A7:	adc     _player
	sta     _player
;
; if (player.speed_y<0){
;
	lda     _player+6
	asl     a
	ldx     #$00
	bcc     L009B
;
; player.speed_y=-player.speed_y;
;
	lda     _player+6
	eor     #$FF
	clc
	adc     #$01
	cmp     #$80
	sta     _player+6
;
; player.y-=player.speed_y>>5; 
;
	lda     _player+6
	bpl     L004B
	dex
L004B:	jsr     asrax4
	jsr     asrax1
	eor     #$FF
	sec
;
; else{
;
	jmp     L00A8
;
; player.y+=player.speed_y>>5;
;
L009B:	lda     _player+6
	bpl     L004D
	dex
L004D:	jsr     asrax4
	jsr     asrax1
	clc
L00A8:	adc     _player+1
	sta     _player+1
;
; for (i=0; i<8;i++){
;
	lda     #$00
	sta     _i
	tax
L009C:	lda     _i
	cmp     #$08
	jcs     L00A5
;
; if (comet_x[i]< bullet.x+bullet.width && comet_x[i]+comet_width[i]>bullet.x &&
;
	ldy     _i
	lda     _comet_x,y
	jsr     pusha0
	lda     _bullet
	clc
	adc     _bullet+2
	bcc     L007E
	ldx     #$01
L007E:	jsr     tosicmp
	jpl     L0052
	ldy     _i
	ldx     #$00
	lda     _comet_width,y
	clc
	ldy     _i
	adc     _comet_x,y
	bcc     L0080
	inx
L0080:	jsr     pushax
	lda     _bullet
	jsr     tosicmp0
	jmi     L0052
	jeq     L0052
;
; comet_y[i]< bullet.y+bullet.height && comet_y[i]+comet_height[i]>bullet.y && player.shoot==1){
;
	ldy     _i
	lda     _comet_y,y
	jsr     pusha0
	lda     _bullet+1
	clc
	adc     _bullet+3
	bcc     L007F
	ldx     #$01
L007F:	jsr     tosicmp
	jpl     L0052
	ldy     _i
	ldx     #$00
	lda     _comet_height,y
	clc
	ldy     _i
	adc     _comet_y,y
	bcc     L0081
	inx
L0081:	jsr     pushax
	lda     _bullet+1
	jsr     tosicmp0
	jmi     L0052
	jeq     L0052
	lda     _player+9
	cmp     #$01
	jne     L0052
;
; comet_dir[i]=rand8();
;
	lda     #<(_comet_dir)
	ldx     #>(_comet_dir)
	clc
	adc     _i
	bcc     L005C
	inx
L005C:	jsr     pushax
	jsr     _rand8
	ldy     #$00
	jsr     staspidx
;
; comet_speed_x[i] = (cos_table[comet_dir[i]>>3]*comet_speed[i]);
;
	lda     #<(_comet_speed_x)
	ldx     #>(_comet_speed_x)
	clc
	adc     _i
	bcc     L005D
	inx
L005D:	jsr     pushax
	ldy     _i
	lda     _comet_dir,y
	lsr     a
	lsr     a
	lsr     a
	clc
	adc     #<(_cos_table)
	tay
	lda     #$00
	adc     #>(_cos_table)
	tax
	tya
	ldy     #$00
	jsr     ldaidx
	jsr     pushax
	lda     #<(_comet_speed)
	ldx     #>(_comet_speed)
	clc
	adc     _i
	bcc     L005F
	inx
L005F:	ldy     #$00
	jsr     ldaidx
	jsr     tosmulax
	cmp     #$80
	ldy     #$00
	jsr     staspidx
;
; comet_speed_y[i] = (sin_table[comet_dir[i]>>3]*comet_speed[i]);
;
	lda     #<(_comet_speed_y)
	ldx     #>(_comet_speed_y)
	clc
	adc     _i
	bcc     L0061
	inx
L0061:	jsr     pushax
	ldy     _i
	lda     _comet_dir,y
	lsr     a
	lsr     a
	lsr     a
	clc
	adc     #<(_sin_table)
	tay
	lda     #$00
	adc     #>(_sin_table)
	tax
	tya
	ldy     #$00
	jsr     ldaidx
	jsr     pushax
	lda     #<(_comet_speed)
	ldx     #>(_comet_speed)
	clc
	adc     _i
	bcc     L0063
	inx
L0063:	ldy     #$00
	jsr     ldaidx
	jsr     tosmulax
	cmp     #$80
	ldy     #$00
	jsr     staspidx
;
; comet_sprite[i] = (comet_dir[i]>>4) +0x10;
;
	lda     #<(_comet_sprite)
	ldx     #>(_comet_sprite)
	clc
	adc     _i
	bcc     L0065
	inx
L0065:	sta     ptr1
	stx     ptr1+1
	ldy     _i
	lda     _comet_dir,y
	lsr     a
	lsr     a
	lsr     a
	lsr     a
	clc
	adc     #$10
	ldy     #$00
	sta     (ptr1),y
;
; player.shoot=0;
;
	sty     _player+9
;
; if (comet_speed_x[i]<0){
;
L0052:	lda     #<(_comet_speed_x)
	ldx     #>(_comet_speed_x)
	clc
	adc     _i
	bcc     L0069
	inx
L0069:	ldy     #$00
	jsr     ldaidx
	asl     a
	bcc     L0068
;
; comet_speed_x[i]=-comet_speed_x[i];
;
	lda     #<(_comet_speed_x)
	ldx     #>(_comet_speed_x)
	clc
	adc     _i
	bcc     L006A
	inx
L006A:	sta     sreg
	stx     sreg+1
	lda     #<(_comet_speed_x)
	ldx     #>(_comet_speed_x)
	clc
	adc     _i
	bcc     L009F
	inx
L009F:	jsr     ldaidx
	eor     #$FF
	clc
	adc     #$01
	cmp     #$80
	sta     (sreg),y
;
; comet_x[i]-=comet_speed_x[i]>>3; 
;
	lda     #<(_comet_x)
	ldx     #>(_comet_x)
	clc
	adc     _i
	bcc     L006D
	inx
L006D:	jsr     pushax
	sta     ptr1
	stx     ptr1+1
	ldx     #$00
	lda     (ptr1,x)
	jsr     pusha0
	lda     #<(_comet_speed_x)
	ldx     #>(_comet_speed_x)
	clc
	adc     _i
	bcc     L006E
	inx
L006E:	ldy     #$00
	jsr     ldaidx
	jsr     asrax3
	jsr     tossubax
	ldy     #$00
	jsr     staspidx
;
; else{
;
	jmp     L006F
;
; comet_x[i]+=comet_speed_x[i]>>3;
;
L0068:	lda     #<(_comet_x)
	ldx     #>(_comet_x)
	clc
	adc     _i
	bcc     L0070
	inx
L0070:	sta     ptr2
	stx     ptr2+1
	sta     ptr1
	stx     ptr1+1
	lda     (ptr1),y
	sta     sreg
	lda     #<(_comet_speed_x)
	ldx     #>(_comet_speed_x)
	clc
	adc     _i
	bcc     L00A1
	inx
L00A1:	jsr     ldaidx
	jsr     asrax3
	clc
	adc     sreg
	sta     (ptr2),y
;
; if (comet_speed_y[i]<0){
;
L006F:	lda     #<(_comet_speed_y)
	ldx     #>(_comet_speed_y)
	clc
	adc     _i
	bcc     L0073
	inx
L0073:	ldy     #$00
	jsr     ldaidx
	asl     a
	bcc     L0072
;
; comet_speed_y[i]=-comet_speed_y[i];
;
	lda     #<(_comet_speed_y)
	ldx     #>(_comet_speed_y)
	clc
	adc     _i
	bcc     L0074
	inx
L0074:	sta     sreg
	stx     sreg+1
	lda     #<(_comet_speed_y)
	ldx     #>(_comet_speed_y)
	clc
	adc     _i
	bcc     L00A2
	inx
L00A2:	jsr     ldaidx
	eor     #$FF
	clc
	adc     #$01
	cmp     #$80
	sta     (sreg),y
;
; comet_y[i]-=comet_speed_y[i]>>3; 
;
	lda     #<(_comet_y)
	ldx     #>(_comet_y)
	clc
	adc     _i
	bcc     L0077
	inx
L0077:	jsr     pushax
	sta     ptr1
	stx     ptr1+1
	ldx     #$00
	lda     (ptr1,x)
	jsr     pusha0
	lda     #<(_comet_speed_y)
	ldx     #>(_comet_speed_y)
	clc
	adc     _i
	bcc     L0078
	inx
L0078:	ldy     #$00
	jsr     ldaidx
	jsr     asrax3
	jsr     tossubax
	ldy     #$00
	jsr     staspidx
;
; else{
;
	jmp     L0050
;
; comet_y[i]+=comet_speed_y[i]>>3;
;
L0072:	lda     #<(_comet_y)
	ldx     #>(_comet_y)
	clc
	adc     _i
	bcc     L007A
	inx
L007A:	sta     ptr2
	stx     ptr2+1
	sta     ptr1
	stx     ptr1+1
	lda     (ptr1),y
	sta     sreg
	lda     #<(_comet_speed_y)
	ldx     #>(_comet_speed_y)
	clc
	adc     _i
	bcc     L00A4
	inx
L00A4:	jsr     ldaidx
	jsr     asrax3
	clc
	adc     sreg
	sta     (ptr2),y
;
; for (i=0; i<8;i++){
;
L0050:	ldx     #$00
	inc     _i
	jmp     L009C
;
; set_scroll_y(bgp);
;
L00A5:	lda     _bgp
	jsr     _set_scroll_y
;
; if (bgp==0xef) bgp=0;
;
	lda     _bgp
	cmp     #$EF
	bne     L00A6
	lda     #$00
	sta     _bgp
;
; else ++bgp;
;
	jmp     L0089
L00A6:	inc     _bgp
;
; while (1){  
;
	jmp     L0088

.endproc
