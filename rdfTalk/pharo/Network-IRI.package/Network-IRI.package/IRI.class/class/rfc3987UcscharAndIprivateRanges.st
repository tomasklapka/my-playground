as yet unclassified
rfc3987UcscharAndIprivateRanges
	^ (Dictionary newFrom: self rfc3987UcscharRanges)
		addAll: self rfc3987IprivateRanges;
		yourself