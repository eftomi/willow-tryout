Class {
	#name : #PendingTask,
	#superclass : #WAPainter,
	#category : #'Poskusi-Willow'
}

{ #category : #rendering }
PendingTask >> renderContentOn: html [
	"This is the main rendering method of WAPainter. It will be called with an instance of
	the Renderer class returned by #rendererClass whenever this Painter is asked to render
	itself. By convention, implementations of this method that expect a Canvas renderer
	use 'html' as the parameter name."
	
	html strong: 'Do it'.
	html paragraph: 'To je neki za nardit'.
]
