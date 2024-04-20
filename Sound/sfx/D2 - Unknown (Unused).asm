SoundD2_Header:
	smpsHeaderStartSong 2
	smpsHeaderVoice     SoundD2_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM5, SoundD2_FM5,	$00, $02

; FM5 Data
SoundD2_FM5:
	smpsModSet          $01, $01, $2A, $07
	smpsSetvoice        $00

SoundD2_Loop00:
	dc.b	nC3, $03, smpsNoAttack
	smpsLoop            $00, $13, SoundD2_Loop00

SoundD2_Loop01:
	dc.b	nC3, $03, smpsNoAttack
	smpsAlterVol        $02
	smpsLoop            $00, $13, SoundD2_Loop01
	smpsStop

SoundD2_Voices:
;	Voice $00
;	$28
;	$21, $21, $21, $30, 	$1F, $1F, $1F, $1F, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$FF, $FF, $FF, $FF, 	$29, $29, $20, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $02, $02, $02
	smpsVcCoarseFreq    $00, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $20, $29, $29

