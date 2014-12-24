grammar
ipathRootless
	" ipath-rootless = isegment-nz *( '/' isegment ) "
	^ isegmentNz, (isegmentSeparator, isegment) star