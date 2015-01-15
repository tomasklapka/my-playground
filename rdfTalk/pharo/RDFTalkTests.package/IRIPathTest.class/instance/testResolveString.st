as yet unclassified
testResolveString
	"self debug: #testResolveString"

	| path result |
	path := IRIPath * 'plonk'.
	result := path resolve: 'griffle'.
	self assert: result class equals: path class.
	self assert: result size equals: 2.
	self assert: (result at: 1) equals: 'plonk'.
	self assert: (result at: 2) equals: 'griffle'.