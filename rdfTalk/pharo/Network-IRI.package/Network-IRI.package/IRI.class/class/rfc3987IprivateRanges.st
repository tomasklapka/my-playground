as yet unclassified
rfc3987IprivateRanges
"""
iprivate       = %xE000-F8FF / %xF0000-FFFFD / %x100000-10FFFD
"""
	^ Dictionary newFrom: { 
		16rE000 -> 16rF8FF.
		16rF0000 -> 16rFFFFD.
		16r100000 -> 16r10FFFD }