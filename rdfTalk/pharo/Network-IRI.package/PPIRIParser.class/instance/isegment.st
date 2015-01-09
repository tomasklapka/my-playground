grammar
isegment
	^ super isegment flatten ==> [ :nodes | nodes ifNotEmpty: [ PPIRIComponent name: 'segment' value: nodes ] ]