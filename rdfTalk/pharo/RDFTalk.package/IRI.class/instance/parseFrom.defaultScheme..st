parsing
parseFrom: aString defaultScheme: defaultScheme
	parser parse: aString to: self.
	(defaultScheme isNotNil and: self hasScheme not)
		ifFalse: [ ^ self ].
	self clear.
	parser parse: defaultScheme , '://' , aString to: self