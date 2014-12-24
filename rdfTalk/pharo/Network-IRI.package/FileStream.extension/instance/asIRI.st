*Network-IRI
asIRI
	"Convert the receiver in a file:// IRI"

	| fileUrl |
	fileUrl := IRI new.
	fileUrl scheme: #file.
	self directory pathSegments do: [ :each | fileUrl addPathSegment: each ].
	fileUrl addPathSegment: self localName.
	^ fileUrl