SoundC2_WaterWarning_Header:
	smpsHeaderStartSong 2
	smpsHeaderVoice     SoundBF_C2_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cFM5, SoundC2_WaterWarning_FM5,	$0C, $08

; FM5 Data
SoundC2_WaterWarning_FM5:
	smpsSetvoice        $00
	dc.b	nA4, $08, nA4, $25
	smpsStop
