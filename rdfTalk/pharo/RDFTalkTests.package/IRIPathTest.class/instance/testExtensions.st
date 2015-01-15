as yet unclassified
testExtensions
	self 
		assertCollection: (IRIPath from: 'foo') extensions asArray
		equals: #().
	self
		assertCollection: (IRIPath from: 'foo.tar') extensions asArray
		equals: #( 'tar' ).
	self
		assertCollection: (IRIPath from: 'foo.tar.gz') extensions asArray
		equals: #( 'tar' 'gz').
	self
		assertCollection: (IRIPath from: 'foo.1.tar.gz') extensions asArray
		equals: #( '1' 'tar' 'gz').