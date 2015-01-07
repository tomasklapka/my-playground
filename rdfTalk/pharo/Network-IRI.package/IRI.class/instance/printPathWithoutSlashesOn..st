printing
printPathWithoutSlashesOn: stream
 	segments do: [ :each | self encodePath: each on: stream ]