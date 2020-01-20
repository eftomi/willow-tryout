Class {
	#name : #ToDoApplication,
	#superclass : #WillowApplication,
	#category : #'Poskusi-Willow'
}

{ #category : #accessing }
ToDoApplication class >> applicationTitle [
	
	^ 'Mišetov ToDo!' 
]

{ #category : #accessing }
ToDoApplication class >> handlerName [

	^ 'todo'
]

{ #category : #accessing }
ToDoApplication >> componentSupplierForApplication [

	^ Bootstrap4ComponentSupplier online
]

{ #category : #accessing }
ToDoApplication >> contentView [
	^ [ :canvas | self renderButtonOn: canvas ]
]

{ #category : #accessing }
ToDoApplication >> jQueryLibrary [

	^ JQuery3OnlineLibrary default
]

{ #category : #rendering }
ToDoApplication >> renderButtonOn: aCanvas [
	| button |
"	button := AsynchronicButtonWebView labeled: 'krnek' applying: [ :aButton | aButton addClass bootstrap4 buttonPrimary ]."
	button := AsynchronicButtonWebView labeled: 'krnek'.
	button onTrigger executeOnClient: [ :canvas | canvas javascript alert: 'hej' ].
"	button onTrigger evaluate: [ 'Some text' inspect ]."
	aCanvas render: button
]

{ #category : #rendering }
ToDoApplication >> renderInputOn: aCanvas [
	| field |
	field := self componentSupplier 
		singleLineTextFieldApplying: [ :aField | ].
	aCanvas render: field.
]

{ #category : #rendering }
ToDoApplication >> renderTasksOn: aCanvas [
	aCanvas unorderedList add: PendingTask new.
]
