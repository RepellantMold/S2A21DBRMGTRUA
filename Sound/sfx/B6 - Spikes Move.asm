SoundB6_SpikesMove_Header:
	smpsHeaderStartSong 2
	smpsHeaderVoiceNull
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $01

	smpsHeaderSFXChannel cPSG3, SoundB6_SpikesMove_PSG3,	$00, $00

; PSG3 Data
SoundB6_SpikesMove_PSG3:
	smpsModSet          $01, $01, $F0, $08
	smpsPSGform         $E7
	dc.b	nE5, $07

SoundB6_SpikesMove_Loop00:
	dc.b	nG6, $01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0C, SoundB6_SpikesMove_Loop00
	smpsStop
