grammar
iri
	" IRI = scheme ':' ihier-part [ '?' iquery ] [ '#' ifragment ] "
	^ absoluteIRI, ($# asParser, ifragment) optional