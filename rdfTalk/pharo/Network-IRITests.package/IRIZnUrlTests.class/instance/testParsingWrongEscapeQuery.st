testing
testParsingWrongEscapeQuery
	self should: [ IRI fromString: 'http://foo:8080/foo?%%bar=1' ] raise: PPIRIParserError 