as yet unclassified
testIRIAbsolutePath

	| path |

	self assert: (IRIAbsolutePath new isAbsolute).
	self assert: (IRIPath root isAbsolute).
	
	path := IRIAbsolutePath from: 'parent/child/grandChild' delimiter: $/.
	self assert: path size equals: 3.
	self assert: (path at: 1) equals: 'parent'.
	self assert: (path at: 2) equals: 'child'.
	self assert: (path at: 3) equals: 'grandChild'.
	
	path := IRIAbsolutePath from: '/' delimiter: $/.
	self assert: path equals: IRIPath root.
	
