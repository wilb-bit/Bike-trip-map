# Map of bikepacking trip
My mum completed a 6 month solo bikepacking trip from Guatemala to the bottom of South America in 2019.
She raised money and awareness for the 'Fight Cancer Foundation'.  
https://www.instagram.com/ride2fightcancer/  
https://www.instagram.com/fightcancerau/  
This involved cycling a total of 12,000km.  After this she wrote a book about her expereince.

I created a map of the route that is both in the book and on the website.  
The map was created using Rstudio and images from Stamen Maps (access with its API).  
Details on the book can be found at the following website (map is on the front page of the website).  
https://www.leoniekatekar.com/


## Code
'Antigua to Argentina Revised Route2.xlsx' contains location data of the trip (long and lat).   
route_mum2.R loads the data and creates an image using Stamen Maps (access with its API).  
Image is exported to 'mumtrip.png'.  
Labels of signficant places were then added manually to create the final image 'mumtripfinal.png'
