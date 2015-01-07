as yet unclassified
testConsumeIRI
	| parser subject |
	parser := self parser.
	parser base: 'http://example.com/'.
	subject := Triple new.
	self assert: (parser consumeIRI: '<#me>; data' subject: subject) equals: '; data'.
	self assert: (subject object value asString) equals: 'http://example.com/#me'