as yet unclassified
testAsString
	self assert: graph asString equals:
'<http://example.com/#me> <http://xmlns.com/foaf/0.1/name> "John Doe" .
<http://example.com/#me> <http://xmlns.com/foaf/0.1/knows> <http://example.com/#jack> .
<http://example.com/#me> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <http://xmlns.com/foaf/0.1/Person> .
'.