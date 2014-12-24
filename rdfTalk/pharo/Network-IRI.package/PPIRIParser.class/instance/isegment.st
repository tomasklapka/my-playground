grammar
isegment
	^ super isegment ==> [ :nodes | nodes ifNotEmpty: [ PPIRIComponent name: 'segment' value: nodes asString ] ]