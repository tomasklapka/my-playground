as yet unclassified
testIprivate
	#(
		16rE000 16rEF00 16rF8FF
		16rF0000 16rF0AD 16rFFFFD
		16r100000 16r10A78D 16r10FFFD
	) do: [ :test | self parse: test asCharacter asString rule: #iprivate ]