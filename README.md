# Bike trip map
My mum completed a 6 month solo bikepacking trip from Guatemala to the bottom of South America. Cycling a total of 12,000km.  
I created a map showing the route of the trip using Rstudio.  
This used images from Stamen Maps (access with its API).  
Details on the book can be found at the following website (map is on the front page).  
https://www.leoniekatekar.com/


## Code
'Antigua to Argentina Revised Route2.xlsx' contains location data of the trip (long and lat).   
route_mum2.R loads the data and creates an image using Stamen Maps (access with its API).  
Image is exported to 'mumtrip.png'.  
Labels of signficant places were then added manually to create the final image 'mumtripfinal.png'
