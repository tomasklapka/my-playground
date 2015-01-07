grammar
h16
	" h16 = 1*4HEXDIG "
	^ (#hex asParser min: 1 max: 4) flatten ==> [ :nodes | nodes asString asUppercase ]