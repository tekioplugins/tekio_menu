
# Icon Carousel
This creates a carousel of icons with a title on the bottom.

  

## Fields

  

You can edit the following fields:

- buttonType **(required)** - This defines the type of button to build this need to be **"iconCarousel"** in order to build this button.
- buttonItems **(required)** - This list contains the individual buttons use the following fields to build it:
	- iconCode **(required)** - code to display the icon. Use [this](https://api.flutter.dev/flutter/material/Icons-class.html) to find the code. *(Only supports default material icons)*
	- label - label to display bellow the icon 
	- navPath **(required)** - navigation path


  

## Json Format

  

    {
       "buttonType":"iconCarousel",
       "buttonItems":[
          {
             "iconCode":"0xe047",
             "label":"label_example",
             "navPath":"/pathToScreen"
          }
          // Add items here
       ]
    }

  

