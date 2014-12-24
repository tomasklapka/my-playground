grammar
ucschar
"""
   ucschar        = %xA0-D7FF / %xF900-FDCF / %xFDF0-FFEF
                  / %x10000-1FFFD / %x20000-2FFFD / %x30000-3FFFD
                  / %x40000-4FFFD / %x50000-5FFFD / %x60000-6FFFD
                  / %x70000-7FFFD / %x80000-8FFFD / %x90000-9FFFD
                  / %xA0000-AFFFD / %xB0000-BFFFD / %xC0000-CFFFD
                  / %xD0000-DFFFD / %xE1000-EFFFD
"""
	^ ((self characterRange: 16rA0 -> 16rD7FF) / (self characterRange: 16rF900 -> 16rFDCF) / (self characterRange: 16rFDF0 -> 16rFFEF)
	/ (self characterRange: 16r10000 -> 16r1FFFD) / (self characterRange: 16r20000 -> 16r2FFFD) / (self characterRange: 16r30000 -> 16r3FFFD)
 	/ (self characterRange: 16r40000 -> 16r4FFFD) / (self characterRange: 16r50000 -> 16r5FFFD) / (self characterRange: 16r60000 -> 16r6FFFD)
	/ (self characterRange: 16r70000 -> 16r7FFFD) / (self characterRange: 16r80000 -> 16r8FFFD) / (self characterRange: 16r90000 -> 16r9FFFD)
	/ (self characterRange: 16rA0000 -> 16rAFFFD) / (self characterRange: 16rB0000 -> 16rBFFFD) / (self characterRange: 16rC0000 -> 16rCFFFD)
	/ (self characterRange: 16rD0000 -> 16rDFFFD) / (self characterRange: 16rE1000 -> 16rEFFFD)) memoized