# Simple-Cookie-Clicker-and-Gacha
This is a simple website for a simple cookie clicker game and gacha, all unique users and first time users get assigned a guest username and will be automatically added to the database. If the user still has their site cookie then they will use that instead. The gacha system has a pity system at 10 for a guaranteed Rare.

To set this up depending on the version you will need MySQL or some other database system, just translate the sql file properly. If you chose v1 then every process will be handled in the client side meaning no database system needed.

Otherwise next you'll need to download the CookieGameDatabaseCreation.sql and run that query, this will create the database and generate the first 10 cookies of the game.

Then unzip v2/v3 zip whereever you like as long as VSCode can reach it ofcourse. You can then open VSCode and open the folder of the unzipped v2/v3.

Lastly assuming you have npm and nodejs installed already + installed the dependencies on the package.json folder you should be good to go unless I missed out on something.
