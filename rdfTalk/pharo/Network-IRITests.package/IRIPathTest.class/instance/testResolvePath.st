as yet unclassified
testResolvePath
	"self debug: #testResolvePath"
	
	| path |
	path := IRIPath / 'grandfather' / 'father' / 'child'.
	self 
		assert: (path resolvePath: IRIPath / 'grandfather') 
		equals: (IRIPath / 'grandfather').
	self 
		assert: (path resolvePath: IRIPath / 'child')
		equals: (IRIPath / 'child').
	self
		assert: (path resolvePath: IRIPath * 'grandfather')
		equals: (IRIPath / 'grandfather' / 'father' / 'child' / 'grandfather').
	self
		assert: (path resolvePath: IRIPath * 'child')
		equals: (IRIPath / 'grandfather' / 'father' / 'child' / 'child').
	self
		assert: (path resolvePath: IRIPath * 'grandfather')
		equals: (IRIPath / 'grandfather' / 'father' / 'child' / 'grandfather').
	self
		assert: (path resolvePath: IRIPath * 'child')
		equals: (IRIPath / 'grandfather' / 'father' / 'child' / 'child').
	self
		assert:  (path resolvePath: (IRIPath parent) / '..')
		equals: (IRIPath / 'grandfather')