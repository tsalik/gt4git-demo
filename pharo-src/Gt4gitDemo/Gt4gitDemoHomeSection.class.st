Class {
	#name : 'Gt4gitDemoHomeSection',
	#superclass : 'GtHomeMultiCardSection',
	#category : 'Gt4gitDemo',
	#package : 'Gt4gitDemo'
}

{ #category : 'as yet unclassified' }
Gt4gitDemoHomeSection >> defaultPriority [
	^ 1000
]

{ #category : 'accessing' }
Gt4gitDemoHomeSection >> gtBookCard [
	<gtSectionCard>
	<gtExample>
	<noTest>
	^ GtHomeCard lepiterBaseWithTableOfContents
		title: 'My Book';
		description: 'Read the extensive book';
		priority: 10;
		pageName: 'My Book';
		databaseName: self gtBookName;
		readMoreToolbar;
		details: [ :db | 
			| snippets somePages |
			somePages := db pages select: #shouldAppearInIndexOrDailyNotes.
			snippets := somePages flatCollect: #allChildrenDepthFirst.
			'The book is expressed as a knowledge base. It documents the environment in '
				, somePages size asString , ' lovely pages containing '
				, snippets size asString , ' snippets of '
				, (snippets groupedBy: #class) size asString , ' different kinds.' ]
				yourself
]

{ #category : 'accessing' }
Gt4gitDemoHomeSection >> gtBookName [
	^ 'Gt4gitDemo'
]

{ #category : 'accessing' }
Gt4gitDemoHomeSection >> sectionTitle [
 ^ 'My Section'
]
