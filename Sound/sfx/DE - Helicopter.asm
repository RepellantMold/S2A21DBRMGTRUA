SoundDE_WingFortress_Header:
	smpsHeaderStartSong 2
	smpsHeaderVoice     SoundDE_WingFortress_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM5, SoundDE_WingFortress_FM5,	$14, $05

; FM5 Data
SoundDE_WingFortress_FM5:
	smpsSetvoice        $00

SoundDE_WingFortress_Loop00:
	dc.b	nAb1, $02, nAb1, $01
	smpsLoop            $00, $13, SoundDE_WingFortress_Loop00

SoundDE_WingFortress_Loop01:
	dc.b	nAb1, $02, nAb1, $01
	smpsAlterVol        $01
	smpsLoop            $00, $1B, SoundDE_WingFortress_Loop01
	smpsStop        

SoundDE_WingFortress_Voices:
;	Voice $00
;	$35
;	$30, $40, $44, $51, 	$1F, $1F, $1F, $1F, 	$10, $13, $00, $15
;	$1F, $1F, $00, $1A, 	$7F, $7F, $0F, $5F, 	$02, $80, $A8, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $04, $04, $03
	smpsVcCoarseFreq    $01, $04, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $15, $00, $13, $10
	smpsVcDecayRate2    $1A, $00, $1F, $1F
	smpsVcDecayLevel    $05, $00, $07, $07
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $28, $00, $02

