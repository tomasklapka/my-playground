as yet unclassified
testRootParent
	| root |
	root := IRIPath root.
	self assert: root parent == root