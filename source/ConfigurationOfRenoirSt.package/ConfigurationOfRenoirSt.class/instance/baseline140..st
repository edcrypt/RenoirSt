baselines
baseline140: spec
	<version: '1.4.0-baseline'>
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec repository: 'http://smalltalkhub.com/mc/gcotelli/RenoirSt/main/'.
			spec
				package: #RenoirSt;
				package: #'RenoirSt-HTML' with: [ spec requires: 'RenoirSt' ];
				package: #'RenoirSt-Tests' with: [ spec requires: 'RenoirSt' ];
				package: #'RenoirSt-HTML-Tests' with: [ spec requires: #('RenoirSt-HTML' 'RenoirSt-Tests')].
			self baseline110ForUnitsCompatibility: spec ]