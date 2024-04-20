SoundA4_Skidding_Header:
	smpsHeaderStartSong 2
	smpsHeaderVoiceNull
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02

	smpsHeaderSFXChannel cPSG2, SoundA4_Skidding_PSG2,	$F4, $00
	smpsHeaderSFXChannel cPSG3, SoundA4_Skidding_PSG3,	$F4, $00

; PSG2 Data
SoundA4_Skidding_PSG2:
	smpsPSGvoice        $00
	dc.b	nBb3, $01, nRst, nBb3, nRst, $03

SoundA4_Skidding_Loop01:
	dc.b	nBb3, $01, nRst, $01
	smpsLoop            $00, $0B, SoundA4_Skidding_Loop01
	smpsStop

; PSG3 Data
SoundA4_Skidding_PSG3:
	smpsPSGvoice        $00
	dc.b	nRst, $01, nAb3, nRst, nAb3, nRst, $03

SoundA4_Skidding_Loop00:
	dc.b	nAb3, $01, nRst, $01
	smpsLoop            $00, $0B, SoundA4_Skidding_Loop00
	smpsStop
