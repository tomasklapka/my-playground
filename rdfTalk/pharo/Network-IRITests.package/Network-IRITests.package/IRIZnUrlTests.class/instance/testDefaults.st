testing
testDefaults
	| url |
	url := '' asIRI asIRIWithDefaults.
	self assert: url hasScheme.
	self assert: url hasPort.
	self assert: url scheme = #http.
	self assert: url port = 80
	