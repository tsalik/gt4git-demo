Class {
	#name : #BaselineOfGt4gitDemo,
	#superclass : #BaselineOf,
	#category : #BaselineOfGt4gitDemo
}

{ #category : #baseline }
BaselineOfGt4gitDemo >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'Gt4gitDemo'
		]
]
