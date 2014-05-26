#ui-tooltip
This is a self resizing and positioning tooltip. To use it, just wrap it around
and element.

You can set content two ways `label="text"`, or with nested html like:

```html
<ui-tooltip>
  <span>wrapped element</span>
  <span tip>tooltip content</span>
  </ui-tooltip>
```

Tooltips are hover driven, so aren't all the great for mobiles.


    Polymer 'ui-tooltip',

##Events

##Attributes and Change Handlers

##Methods
###position
This will place the tooltip in an optimal viewing position based on the client
screen size.

      position: ->
        tip = @getBoundingClientRect()
        body = document.querySelector('body').getBoundingClientRect()
        xStep = document.documentElement.clientWidth / 3
        yStep = document.documentElement.clientHeight / 3
        offsetX = 'left'
        if tip.left < xStep*2
          offsetX = 'right'
        offsetY = 'up'
        if tip.top < yStep*2
          offsetY = 'down'
        @display= "#{offsetX} #{offsetY}"


##Event Handlers
Mouse motion is handled to automatically show and position the element so that
it can be seen easily.

      mouseenter: ->
        @position()

      mouseleave: ->
        @position()

##Polymer Lifecycle

      created: ->

      ready: ->

      attached: ->
        @position()

      domReady: ->

      detached: ->
