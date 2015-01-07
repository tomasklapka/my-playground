as yet unclassified
testResolve
	self assert: (environment resolve: 'rdf:type') asString equals: 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'.
	self assert: (environment resolve: 'foaf:Person') asString equals: 'http://xmlns.com/foaf/0.1/Person'.