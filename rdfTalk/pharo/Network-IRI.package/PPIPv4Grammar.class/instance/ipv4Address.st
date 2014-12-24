as yet unclassified
ipv4Address
	" IPv4address = dec-octet '.' dec-octet '.' dec-octet '.' dec-octet "
	^ decOctet, $. asParser, decOctet, $. asParser, decOctet, $. asParser, decOctet