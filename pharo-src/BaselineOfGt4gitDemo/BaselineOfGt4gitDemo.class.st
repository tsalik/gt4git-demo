Class {
	#name : 'BaselineOfGt4gitDemo',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfGt4gitDemo',
	#package : 'BaselineOfGt4gitDemo'
}

{ #category : 'loading' }
BaselineOfGt4gitDemo class >> loadLepiter [
	IceRepository registry  
		detect: [ :aRepository |
			aRepository name = 'gt4git-demo' ]
		ifFound: [ :aRepository | 
			| defaultDatabase currentProperties |
			defaultDatabase := LeDatabasesRegistry defaultLogicalDatabase.
			currentProperties := defaultDatabase properties.
			currentProperties addRegisteredDirectory: aRepository repositoryDirectory / 'lepiter'.
			defaultDatabase reload ]
		ifNone: [
			self inform: 'Repository not found.' ]
]

{ #category : 'baseline' }
BaselineOfGt4gitDemo >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'Gt4gitDemo';
			postLoadDoIt: #loadLepiter.
		]
]
