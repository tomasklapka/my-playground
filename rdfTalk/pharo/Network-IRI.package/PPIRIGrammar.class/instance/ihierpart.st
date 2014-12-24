grammar
ihierpart
	" ihier-part = '//' iauthority ipath-abempty / ipath-absolute / ipath-rootless / ipath-empty "
	^ (doubleSlashes, iauthority, ipathAbempty) / ipathAbsolute / ipathRootless / ipathEmpty