# :star: Groove :star:

A Digital Solution for Tracking Your Record Collection
---
:gem: Ruby 2.6.1
:gem: Rails 5.2.2	

## Usage

1. Clone it
2. Run 
   ```
   rake db:migrate
   ``` 
3. Run 
   ```
   rails s
   ```
4. Open your browser, visit your local port and see what's happening (hopefully good things).

## Good to know
* When you open the app for the first time you'll be asked to create an account which you can log into in the future. I used the Devise gem for the authorization pieces but did not implement Oauth though I might in a future iteration. 
* After login you will be taken to your record collection where you can start adding records.
* Clicking on the link in the artist name will take you to a page where you can see a bar chart showing their record output by year (based on the records in your collection). 
* Records are arranged in the order they have been added, sorting might be implemented as a future project. 
* The database is the default SQLite with Active Storage for uploading album art, everything you save will be saved to disk. 
* I have not included seed data or tests in this repo. 

