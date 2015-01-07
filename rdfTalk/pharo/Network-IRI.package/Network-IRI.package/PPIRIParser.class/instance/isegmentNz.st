grammar
isegmentNz
	^ super isegmentNz ==> [ :nodes | PPIRIComponent name: 'segment' value: nodes asString ]