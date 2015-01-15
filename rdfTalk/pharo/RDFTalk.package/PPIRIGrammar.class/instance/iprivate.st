grammar
iprivate
	" iprivate = %xE000-F8FF / %xF0000-FFFFD / %x100000-10FFFD "
	^ ((self characterRange: 16rE000 -> 16rF8FF) / (self characterRange: 16rF0000 -> 16rFFFFD) / (self characterRange: 16r100000 -> 16r10FFFD))