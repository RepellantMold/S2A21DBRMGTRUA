SoundA8_SS_Goal_Header:
	smpsHeaderStartSong 2
	smpsHeaderVoice     SoundA6_A8_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM5, SoundA8_SS_Goal_FM5,	$F2, $04

; FM5 Data
SoundA8_SS_Goal_FM5:
	smpsSetvoice        $00
	dc.b	nCs3

SoundA8_SS_Goal_Loop00:
	dc.b	$02, smpsNoAttack, nB2, $01, smpsNoAttack
	smpsAlterPitch      $02
	smpsLoop            $00, $26, SoundA8_SS_Goal_Loop00
	smpsStop

