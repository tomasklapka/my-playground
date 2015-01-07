testing
testParsingEmpty
	| url |
	url := IRI fromString: ''.
	self assert: url isEmpty.
	url := IRI fromString: '/'.
	self assert: url isEmpty not.
	url := IRI fromString: '//./foo/../'.
	self assert: url isEmpty not.