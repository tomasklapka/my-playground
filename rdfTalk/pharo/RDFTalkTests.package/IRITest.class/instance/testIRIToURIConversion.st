tests
testIRIToURIConversion
	"IRI to URI conversion"
	self
		assert: ((IRI fromString: 'http://www.example.org/red%09rosé#red') asURIString)
		equals: 'http://www.example.org/red%09ros%C3%A9#red'.
	"IRI to URI conversion with surrogate pairs"
	self
		assert: ((IRI fromString: 'http://example.com/', (Array withAll: { 16r10300 asCharacter. 16r10301 asCharacter. 16r10302 asCharacter })) asURIString)
		equals: 'http://example.com/%F0%90%8C%80%F0%90%8C%81%F0%90%8C%82'.
	"IRI<->URI conversion"
	(Dictionary newFrom: {
		'http://www.example.org/red%09rosé#red'
			-> 'http://www.example.org/red%09ros%C3%A9#red'.
		'http://example.com/', (Array withAll: { 16r10300 asCharacter. 16r10301 asCharacter. 16r10302 asCharacter })
			-> 'http://example.com/%F0%90%8C%80%F0%90%8C%81%F0%90%8C%82'.
		'http://www.example.org/résumé.html'
			-> 'http://www.example.org/r%C3%A9sum%C3%A9.html'.
		'http://www.example.org/%2F'
			-> 'http://www.example.org/%2F'
	}) keysAndValuesDo: [ :iri :uri |
		"IRI->URI"
		self assert: ((IRI fromString: iri) asURIString) equals: uri.
		"URI->IRI"
		self assert: ((IRI fromString: uri) asIRIString) equals: iri ]