grammar
transformSegment
	^ [ :token | PPIRIComponent name: 'segment' value: String << [ :stream | token do: [ :each | stream nextPut: each ] ] ]
