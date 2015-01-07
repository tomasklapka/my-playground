grammar
irelativePart
	" irelative-part = '//' iauthority ipath-abempty / ipath-absolute / ipath-noscheme / ipath-empty "
	^ (doubleSlashes, iauthority) optional, ipathAbsolute / ipathNoscheme / ipathAbempty / ipathEmpty