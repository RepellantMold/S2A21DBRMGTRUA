SoundD6_CNZElevator_Header:
	smpsHeaderStartSong 2
	smpsHeaderVoice     SoundD6_CNZElevator_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM5, SoundD6_CNZElevator_FM5,	$10, $0E

; FM5 Data
SoundD6_CNZElevator_FM5:
	smpsSetvoice        $00
	smpsModSet          $01, $01, $1E, $FF
	dc.b	nD1, $1C
	smpsModOff

SoundD6_CNZElevator_Loop00:
	dc.b	smpsNoAttack, nCs2, $05
	smpsLoop            $00, $09, SoundD6_CNZElevator_Loop00

SoundD6_CNZElevator_Loop01:
	dc.b	smpsNoAttack, nCs2, $04
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nCs2, $04
	smpsAlterVol        $02
	smpsLoop            $00, $08, SoundD6_CNZElevator_Loop01
	smpsStop

SoundD6_CNZElevator_Voices:
;	Voice $00
;	$0D
;	$06, $00, $00, $E5, 	$1F, $1F, $1F, $1F, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$0F, $0F, $0F, $0F, 	$27, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $0E, $00, $00, $00
	smpsVcCoarseFreq    $05, $00, $00, $06
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $00, $27

