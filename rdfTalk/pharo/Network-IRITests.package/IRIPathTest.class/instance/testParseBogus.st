as yet unclassified
testParseBogus
	"self run: #testParseBogus"
	
	| path |
	path := IRIPath from: 'parent?<>~ \child/grandChild' delimiter: $/.
	self assert: path size equals: 2.
	self assert: (path at: 1) equals: 'parent?<>~ \child'.
	self assert: (path at: 2) equals: 'grandChild'.
	
