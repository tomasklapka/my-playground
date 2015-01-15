grammar
absoluteIRI
	" absolute-IRI   = scheme ':' ihier-part [ '?' iquery ] "
	^ scheme, $: asParser, ihierpart,  ($? asParser, iquery) optional