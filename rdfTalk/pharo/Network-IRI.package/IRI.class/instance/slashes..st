accessing
slashes: aSlashes
	aSlashes ifNil: [ slashes := false ] ifNotNil:[ slashes := aSlashes ]
	