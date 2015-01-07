testing
testDefaultSchemeAndPort
	| url |
	url := '' asIRI.
	self assert: url hasScheme not.
	self assert: url hasPort not.
	self assert: url port isNil.
	self assert: url scheme isNil.
	self assert: url schemeOrDefault = #http.
	self assert: url portOrDefault = 80
	