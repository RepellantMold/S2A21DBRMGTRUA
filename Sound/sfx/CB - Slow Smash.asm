SoundCB_SlowSmash_Header:
	smpsHeaderStartSong 2
	smpsHeaderVoice     SoundAC_B9_CB_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02

	smpsHeaderSFXChannel cFM5, SoundCB_SlowSmash_FM5,	$00, $00
	smpsHeaderSFXChannel cPSG3, SoundCB_SlowSmash_PSG3,	$00, $00

; FM5 Data
SoundCB_SlowSmash_FM5:
	smpsSetvoice        $00
	smpsModSet          $03, $01, $20, $04

SoundCB_SlowSmash_Loop00:
	dc.b	nC0, $18
	smpsAlterVol        $0A
	smpsLoop            $00, $06, SoundCB_SlowSmash_Loop00
	smpsStop

; PSG3 Data
SoundCB_SlowSmash_PSG3:
	smpsModSet          $01, $01, $0F, $05
	smpsPSGform         $E7

SoundCB_SlowSmash_Loop01:
	dc.b	nB3, $18, smpsNoAttack
	smpsPSGAlterVol     $03
	smpsLoop            $00, $05, SoundCB_SlowSmash_Loop01
	smpsStop
