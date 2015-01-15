parsing
parseFrom: aString defaultScheme: defaultScheme
	parser parse: aString to: self.
	(defaultScheme isNotNil and: self hasScheme not)
		ifTrue: [
			self clear.
			parser parse: defaultScheme, '://', aString to: self ]