;this file for FamiTone2 library generated by text2data tool

Newmus_music_data:
	.byte 1
	.word @instruments
	.word @samples-3
	.word @song0ch0,@song0ch1,@song0ch2,@song0ch3,@song0ch4,307,256 ; New song

@instruments:
	.byte $30 ;instrument $00
	.word @env1,@env0,@env0
	.byte $00
	.byte $30 ;instrument $01
	.word @env2,@env0,@env0
	.byte $00

@samples:
@env0:
	.byte $c0,$00,$00
@env1:
	.byte $c5,$c7,$c9,$c7,$c5,$c3,$c0,$00,$06
@env2:
	.byte $c4,$c7,$c6,$c5,$00,$03


; New song
@song0ch0:
	.byte $fb,$07
@song0ch0loop:
@ref0:
	.byte $82,$32,$36,$3a,$3c,$40,$3c,$3a,$36,$32,$8d,$36,$85,$32,$89,$5d
	.byte $59,$54,$81
@ref1:
	.byte $53,$4f,$4a,$85,$4a,$4e,$52,$54,$58,$54,$52,$4e,$4a,$85,$32,$95
@ref2:
	.byte $32,$36,$3a,$3c,$40,$3c,$3a,$36,$32,$8d,$36,$85,$32,$89,$5d,$59
	.byte $54,$81
	.byte $ff,$10
	.word @ref1
	.byte $fd
	.word @song0ch0loop

; New song
@song0ch1:
@song0ch1loop:
@ref4:
	.byte $bf
@ref5:
	.byte $a7,$82,$3a,$95
@ref6:
	.byte $9f,$3c,$91,$40,$89
@ref7:
	.byte $8f,$3c,$95,$3a,$95
	.byte $fd
	.word @song0ch1loop

; New song
@song0ch2:
@song0ch2loop:
@ref8:
	.byte $80,$32,$85,$3a,$85,$36,$85,$32,$85,$36,$85,$3a,$85,$36,$85,$32
	.byte $85
@ref9:
	.byte $36,$85,$3a,$85,$36,$85,$32,$85,$36,$85,$3a,$85,$36,$85,$32,$85
@ref10:
	.byte $32,$85,$3a,$85,$36,$85,$32,$85,$36,$85,$3a,$85,$36,$85,$32,$85
	.byte $ff,$10
	.word @ref9
	.byte $fd
	.word @song0ch2loop

; New song
@song0ch3:
@song0ch3loop:
@ref12:
	.byte $bf
@ref13:
	.byte $bf
@ref14:
	.byte $bf
@ref15:
	.byte $bf
	.byte $fd
	.word @song0ch3loop

; New song
@song0ch4:
@song0ch4loop:
@ref16:
	.byte $bf
@ref17:
	.byte $bf
@ref18:
	.byte $bf
@ref19:
	.byte $bf
	.byte $fd
	.word @song0ch4loop
