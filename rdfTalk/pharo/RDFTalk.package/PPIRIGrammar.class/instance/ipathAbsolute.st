grammar
ipathAbsolute
	" ipath-absolute = '/' [ isegment-nz *( '/' isegment ) ] "
	^ isegmentSeparator, (isegmentNz, (isegmentSeparator, isegment) star) optional