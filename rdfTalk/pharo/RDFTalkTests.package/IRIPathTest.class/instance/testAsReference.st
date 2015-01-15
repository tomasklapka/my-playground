as yet unclassified
testAsReference
	| path reference |
	path := IRIPath * 'plonk'.
	reference := path asFileReference.
	self assert: reference class equals: FileReference.
	self assert: reference path equals: path