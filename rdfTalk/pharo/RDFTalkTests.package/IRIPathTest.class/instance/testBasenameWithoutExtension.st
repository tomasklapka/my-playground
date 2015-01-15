as yet unclassified
testBasenameWithoutExtension
	"self debug: #testBasenameWithoutExtension"
	| path |
	path := IRIPath * 'plonk' / 'griffle'.
	self assert: path basenameWithoutExtension equals: 'griffle'.
	
	path := IRIPath * 'plonk' / 'griffle.taz'.
	self assert: path basenameWithoutExtension equals: 'griffle'.
	
	path := IRIPath * 'plonk' / 'griffle.taz.zork'.
	self assert: path basenameWithoutExtension equals: 'griffle.taz'.