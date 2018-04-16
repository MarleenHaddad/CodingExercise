# Hotel Booking Coding Exercise
It is a simple site that prsenets hotel deals by consuming them from JSON API .

# Getting Started
These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See Deployment section to see hoe you can deploy it on somee.com .

# Prerequisites
- Visual studio 2010 . 
- NugetManeger . 
- Newtonsoft.Json 6.0.3 , prerequisite NugetManeger. 
- Jquery prerequisite NugetManeger. 

# Installing 
You can follow these links to download them :
 - https://www.visualstudio.com/vs/older-downloads/
 - https://marketplace.visualstudio.com/items?itemName=NuGetTeam.NuGetPackageManager
 - https://www.nuget.org/packages/newtonsoft.json/
 - https://www.nuget.org/packages/jQuery/

# Running the tests
In my project there is another two projects one called UnitTesting for testing the classes on Travis CI and the other called LocalUnitTesting for local testing to run local testing just go to test menu --> Run --> All tests in solution. 

# Coding style 
 - For testing I used Arrange-Act-Assert pattern . 
 - For the main project I used : 
    - Singleton pattern.
    - Composite pattern.

# Deployment
- In Visual studio on the project click right click publish and locate the main file to publish the necessary files on it. 
- Select the file and compress it as .ZIP
- Open somee.com and select free asp hosting .
- Create account on somee.com web site. 
- Open your account on somee and create a new web site then form manage add the .ZIP file then unzip it . 
- Your website should be ready now.

For more clarification you can see this video https://www.youtube.com/watch?v=8mCKvy6XL-o

 Note : Because it is ASP.Net web site I used freeasphosting.net web site to host it not Heroku. You can check the site on  http://hotelbooking.somee.com/
 
# Assumptions about the API 
 I assumed that the structure of the API is like this :
 - Root object have three vairables  : 
    - Offer Info  
    - UserInfo
    - Offers 
 
# Authors
Marleen Haddad.


