*RDFTalk
addedToIRI: anIRI
	| segments |
	segments := self findTokens: '/'.
	^ anIRI withPathSegments: segments