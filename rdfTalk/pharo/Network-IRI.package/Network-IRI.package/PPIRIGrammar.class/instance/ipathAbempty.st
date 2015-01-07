grammar
ipathAbempty
	" ipath-abempty  = *( '/' isegment ) "
	^ (isegmentSeparator, isegment) star