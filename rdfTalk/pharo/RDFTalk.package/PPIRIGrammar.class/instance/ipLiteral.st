grammar
ipLiteral
	" IP-literal = '[' ( IPv6address / IPvFuture  ) ']' "
	^ $[ asParser, (ipv6Address / ipvFuture), $] asParser