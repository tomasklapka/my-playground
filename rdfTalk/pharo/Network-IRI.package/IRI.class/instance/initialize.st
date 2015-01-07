initialization
initialize
	isUsingSegmentSeparator := true.
	parser ifNil: [ parser := PPIRIParser new ]