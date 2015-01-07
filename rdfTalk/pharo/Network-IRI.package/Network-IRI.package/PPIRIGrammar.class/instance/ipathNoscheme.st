grammar
ipathNoscheme
	" ipath-noscheme = isegment-nz-nc *( '/' isegment ) "
	^ isegmentNzNc, (isegmentSeparator, isegment) star