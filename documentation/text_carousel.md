# Text Carousel
This creates a carousel of text with a title on the bottom.

  

## Fields

  

You can edit the following fields:

- buttonType **(required)** - This defines the type of button to build this need to be **"textCarousel"** in order to build this button.
- buttonItems **(required)** - This list contains the individual buttons use the following fields to build it:
	- label - label to display 
	- navPath **(required)** - navigation path


  

## Json Format

  

    {
       "buttonType":"textCarousel",
       "buttonItems":[
          {
             "label":"label_example",
             "navPath":"/pathToScreen"
          }
          //Add item here
       ]
    }

  

