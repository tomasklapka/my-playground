as yet unclassified
fixtureCard1
	^ '
@prefix cert: <http://www.w3.org/ns/auth/cert#>.
@prefix foaf: <http://xmlns.com/foaf/0.1/>.

<#me> a foaf:Person;
               foaf:name "John Smith"@en;
               cert:key [ a cert:RSAPublicKey;
                          cert:exponent 65537;
                          cert:modulus "abcdef"^^<http://www.w3.org/2001/XMLSchema#hexBinary>
               ] .
'