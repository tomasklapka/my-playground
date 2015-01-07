testing
testParsingWrongEscape
	self should: [ IRI fromString: 'http://foo:8080/foo%%bar' ] raise: PPIRIParserError 