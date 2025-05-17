
# Image Carousel
This creates a carousel of images with a title on the bottom.

## Fields

You can edit the following fields:

- order - Order of menu button.
- buttonType **(required)** - This defines the type of button to build this need to be **"imageCarousel"** in order to build this button.
- buttonListKey - Button list key.
- menuButtonSpacing - Spacing between buttons.
- menuButtonHeight - Hight of the buttons.
- menuButtonWidth - Width of the button.
- buttonItems **(required)** - This list contains the individual buttons use the following fields to build it:
   - order - Order of button.
   - buttonKey - Button key.
   - imageUrl **(required)**  - image url to be displayed
	- label - label to display bellow the icon 
	- navPath **(required)** - navigation path

## Json Format

    {
       "order":"menuButtonKeyExample"
       "buttonType":"imageCarousel",
       "menuButtonKey":"example_key",
       "menuButtonSpacing":100,      
       "menuButtonHeight":100,
       "menuButtonWidth":100,
       "buttonItems":[
          {
             "order": order,
             "buttonKey": "buttonKeyExample",
             "imageUrl":"imageUrl:
             "label":"label_example",
             "navPath":"/pathToScreen"
          }
          // Add items here
       ]
    }

  

