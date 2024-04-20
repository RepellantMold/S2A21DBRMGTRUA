SoundDF_SuperTransform_Header:
	smpsHeaderStartSong 2
	smpsHeaderVoice     SoundDF_SuperTransform_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $03

	smpsHeaderSFXChannel cFM5, SoundDF_SuperTransform_FM5,	$00, $00
	smpsHeaderSFXChannel cPSG3, SoundDF_6C_PSG3,	$00, $00
	smpsHeaderSFXChannel cPSG2, SoundDF_6C_PSG2,	$00, $00

; FM5 Data
SoundDF_SuperTransform_FM5:
	smpsSetvoice        $00
	smpsModSet          $01, $01, $C5, $1A
	dc.b	nE6, $07
	smpsAlterVol        $0A
	dc.b	nRst, $06
	smpsSetvoice        $01
	smpsModSet          $01, $01, $11, $FF
	dc.b	nA2, $28

SoundDF_SuperTransform_Loop00:
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $03
	smpsLoop            $00, $05, SoundDF_SuperTransform_Loop00
	smpsStop

; PSG3 Data
SoundDF_6C_PSG3:
	dc.b	nRst, $07
	smpsModSet          $01, $02, $05, $FF
	smpsPSGform         $E7
	dc.b	nBb4, $1D

SoundDF_SuperTransform_Loop03:
	dc.b	smpsNoAttack, $07
	smpsPSGAlterVol     $01
	smpsLoop            $00, $10, SoundDF_SuperTransform_Loop03
	smpsStop

; PSG2 Data
SoundDF_6C_PSG2:
	dc.b	nRst, $16
	smpsPSGvoice        fTone_03

SoundDF_SuperTransform_Loop01:
	dc.b	nD5, $04, nE5, nFs5
	smpsPSGAlterVol     $01
	smpsAlterPitch      $FF
	smpsLoop            $00, $05, SoundDF_SuperTransform_Loop01

SoundDF_SuperTransform_Loop02:
	dc.b	nD5, $04, nE5, nFs5
	smpsPSGAlterVol     $01
	smpsAlterPitch      $01
	smpsLoop            $00, $07, SoundDF_SuperTransform_Loop02
	smpsStop

SoundDF_SuperTransform_Voices:
;	Voice $00
;	$FD
;	$09, $03, $00, $00, 	$1F, $1F, $1F, $1F, 	$10, $0C, $0C, $0C
;	$0B, $1F, $10, $05, 	$1F, $2F, $4F, $2F, 	$09, $84, $92, $8E
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $03
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $03, $09
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $0C, $0C, $10
	smpsVcDecayRate2    $05, $10, $1F, $0B
	smpsVcDecayLevel    $02, $04, $02, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $0E, $12, $04, $09

;	Voice $01
;	$3A
;	$70, $04, $30, $01, 	$0F, $19, $14, $16, 	$08, $0B, $0A, $05
;	$03, $03, $03, $05, 	$1F, $8F, $6F, $5F, 	$1F, $1F, $22, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $00, $07
	smpsVcCoarseFreq    $01, $00, $04, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $16, $14, $19, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $0A, $0B, $08
	smpsVcDecayRate2    $05, $03, $03, $03
	smpsVcDecayLevel    $05, $06, $08, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $22, $1F, $1F

