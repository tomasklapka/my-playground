grammar
isegmentNz
	^ super isegmentNz flatten ==> [ :nodes | PPIRIComponent name: 'segment' value: nodes ]