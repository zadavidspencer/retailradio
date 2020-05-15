#Retail Radio provides various subscribers with songs and advertising to play during trading hours.
It requires that the audio files are uploaded and then distributed to various stores.
Once the store receives the new file it's added to the play next list queue.

###Example Use Case 
http://0.0.0.0:8088/retailradio/index.html

In this example a .mp3 file is placed in a specified folder.
This file is pushed into a JMS Topic where Store's can subscribe to.
Each of the subscribers receives a guaranteed delivery of the file.
Once the file is received at the subscriber it is placed on RetailRadio's web server to be played next on the playlist.
The Store playlist then request the latest playlist from the restful service and the new list is playable.





### Set up and run the example

## Requirements
ActiveMQ 5.13.2
MySQL Community Server 5.7.11
*HTTP was enabled for CORS support


1. Open the project provided in the Mule deployable archive

2. Start activeMQ server as well as the MySQL server and establish a connection to the database
Note:Depending on OS navigate to activeMQ extract and run ./activemq start for unix/linux
ActiveMQ main topic:RetailRadio.UpNext and three subscribers StoreOne, StoreTwo and StoreTree.

3. Create a Database in MySQL called "RetailRadio" and then run the **RetailRadio_2016-03-18.sql** script placed under scr/main/resources to create a MySQL tables and populate the Store Table

4. Locate scr/main/resources/retailradio.properties and modify connection setting and location of local UpNext folder. 

5. Run the Example project as a mule application

6. Specify a local folder for the UpNext, by modifying the property file located here

7. Locate a .mp3 song or add and copy and paste it in the UpNext folder, repeat until you have a couple of files

8. Navigate with your browser to http://0.0.0.0:8088/retailradio/index.html

9. Click on any of the buttons to load the playlist for the relevant store and start playing

TODO:
1. Update what file was played/Rest Service/JS, and fire twitter post
2. Exception Management around store id lookup before saving
3. Compression




