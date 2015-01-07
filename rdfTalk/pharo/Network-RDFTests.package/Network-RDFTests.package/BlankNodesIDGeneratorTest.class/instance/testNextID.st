as yet unclassified
testNextID
        BlankNodesIDGenerator reset.
        self assert: (BlankNodesIDGenerator nextID) equals: 'b1'.
        self assert: (BlankNodesIDGenerator nextID) equals: 'b2'.
        self assert: (BlankNodesIDGenerator nextID) equals: 'b3'
