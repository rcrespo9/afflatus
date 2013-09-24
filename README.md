I am planning to build a web application for writers seeking inspiration. I want to help obliterate writer's block by providing artistic prompts in the forms of photography and music.

To help generate random photos, I will be using the Flickr API/gem. To help generate random music, I will be using the Soundcloud API/gem.

Users model will be comprised of authentication data along with username, first name, last name, location, gender, an "about me", and an avatar. Users will have many music-inspired and photo-inspired creations, and an attached avatar.

Music-inspired model will be comprised of song title, album name, artist name, writing, title of the creation, and the user ID. It will belong to the users model.

Photo-inspired model will be comprised of photo title, photographer's name, title of the creation, and the user ID. It will also belong to the users model.

New users will be asked to create an account. They will then create a profile containing their personal information and their profile picture. Ultimately, their profiles will serve as their portfolio, complete with their works and the medium which inspired them therein.

When users feel the itch to start writing, they will click on the appropriate link and be met with a page that says, “Select your muse: Music | Photography.” Once they make their choice, they will generate a random song or picture and duly start writing in the text area provided. If they aren't satisfied with the song or picture, they can choose to generate another until they find one they like.

Once the writer has completed her work, she will save it and it will automatically be sent to her profile and a feed for other users to see their masterpieces. The feed will only be made available to registered users, and it will serve as the members' homepage. Links to every work will be provided on the feed, and each one will have a comment box so that users can express their opinions about the piece in question. In addition, the usernames on the feed will serve as links to the users' respective profiles.

###Project Elements

- Prospective users should find themselves before welcome homepage.

- User should be able to create a new account using email address and password. 

- User should be able to create and fill out profile with full name, username, location, bio, and profile picture.

- After creating account, user should be able to log in.

- Members' homepage should have feeds of links to latest creations and their authors. (Feeds might have timestamps.)

- There should be link within users' profiles and in nav bar called “Create.”

- Once they click on “Create,” users should be able to “Select a Muse,” either photography or music.

- When user clicks “Photography,” a randomly generated picture shows up alongside text area where user can start writing. Once done, user should be able to save, thereby automatically sending creation to profile and feed.

- When user clicks “Music,” randomly generated song should start playing alongside text area where user can start writing. Once done, user should be able to save, thereby automatically sending creation to profile and feed.

- For both mediums, users should be able to regenerate if they aren't satisfied with song or photo.

- User should be able to see links to her works in her profile, and therein should be the inspirational medium 
and their writing.

- Users should be able to edit/delete their profiles and works.

- Users should be able to see their peers' works and comment on them. (I might add some sort of a "like" feature.)

- Users should be able to log out. 

###Resources

https://developer.mozilla.org/en-US/ ← Mozilla Developer Network

http://tympanus.net/codrops/ ← Styling Tips

http://css3generator.com/ ← CSS3 Generator

http://www.programmableweb.com/api/flickr ← Flickr API

http://www.programmableweb.com/api/subsonic ← Subsonic API

http://www.htmlcommentbox.com/ ← Comment Box

https://dev.twitter.com/blog/bootstrap-twitter ← Twitter Bootstrap

http://prinzhorn.github.io/skrollr/ ← Parallax Scrolling

http://fortawesome.github.io/Font-Awesome/icons/ ← Font Awesome Icons

http://www.google.com/fonts ← Google Fonts

https://github.com/amadden80/Sinatra_Heroku_Demo ← Upload App to Heroku

https://github.com/ga-students/WDI_NYC_7/blob/master/03_week/dogs_and_toys-heroku/commands ← Heroku Database Creation

https://github.com/ga-students/WDI_NYC_7_Work/blob/master/w04/d01/Andrew/animals/NOTES.md ← Rails App Creation

https://devcenter.heroku.com/articles/getting-started-with-rails3 ← Heroku Rails Database Creation

http://railscasts.com/episodes/209-introducing-devise ← Devise

https://github.com/rspec/rspec-rails ← rspec

http://snook.ca/technical/colour_contrast/colour.html ← Color Contrast Check

https://github.com/thoughtbot/paperclip ← File Upload
