
# Tekio Forms Documentation!

Welcome to the Tekio Forms Documentation.

## Documentations

- [Base Menu Builder](/documentation/base_menu_builder.md)

- [Icon Carousel](/documentation/icon_carousel.md)

- [Image Carousel](/documentation/image_carousel.md)

- [Text Carousel](/documentation/text_carousel.md)

- [Image Button](/documentation/image_button.md)

## Example

This is a simple example for rapid testing.

{
   "homeListItems":[
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
      },
      {
         "buttonType":"textCarousel",
         "buttonItems":[
            {
                "label":"label_example",
                "navPath":"/pathToScreen"
            }
            // Add items here
         ]
      },
      {
         "buttonType":"imageCarousel",
         "buttonItems":[
            
            {
              
               "imageUrl":"imagePath",
               "label":"label_example",
               "navPath":"/pathToScreen"
            }
            // Add items here
         ]
      },
      {
         "buttonType":"imageButton",
         "buttonItems":[
            {
               "iconCode":null,
               "imageUrl":"https://flutter.github.io/assets-for-api-docs/assets/material/content_based_color_scheme_1.png",
               "label":"The Flow",
               "navPath":"/notFound"
            }
         ]
      },
      {
         "buttonType":"imageButton",
         "buttonItems":[
            {
               "iconCode":null,
               "imageUrl":"https://flutter.github.io/assets-for-api-docs/assets/material/content_based_color_scheme_1.png",
               "label":"The Flow",
               "navPath":"/notFound"
            },
            {
               "iconCode":null,
               "imageUrl":"https://flutter.github.io/assets-for-api-docs/assets/material/content_based_color_scheme_2.png",
               "label":"Through the Pane",
               "navPath":"/notFound"
            }
         ]
      },
      {
         "buttonType":"imageButton",
         "buttonItems":[
            {
               "iconCode":null,
               "imageUrl":"https://flutter.github.io/assets-for-api-docs/assets/material/content_based_color_scheme_1.png",
               "label":"The Flow",
               "navPath":"/notFound"
            },
            {
               "iconCode":null,
               "imageUrl":"https://flutter.github.io/assets-for-api-docs/assets/material/content_based_color_scheme_2.png",
               "label":"Through the Pane",
               "navPath":"/notFound"
            },
            {
               "iconCode":null,
               "imageUrl":"https://flutter.github.io/assets-for-api-docs/assets/material/content_based_color_scheme_3.png",
               "label":"Iridescence",
               "navPath":"/notFound"
            }
         ]
      }
   ]
}
