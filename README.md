BLOOM
=================

Bloom is a skills tracking app for budding web developers.

Users can sign up and rate their confidence levels in a number of skills.
They'll be able to visualize their progress through charts and tables and are emailed
each day with helpful resources related to the skill they're least confident in.

*Built in three days by [Becca Pearce](https://github.com/beccapearce), [Rylan Gooch](https://github.com/rylangooch),
[Georgia Mills](https://github.com/grmillsy1), [Tim Chung](https://github.com/tchungnz) and
[Jess Astbury](https://github.com/JAstbury/)*

Technologies Used
-----

- Ruby on Rails framework
- PostgreSQL database
- Devise gem for user authentication
- Chartkick gem for charts
- Mechanize gem to create web crawler for skills resources
- Whenever gem to schedule daily emails

Screenshots
-----

![Screenshot](http://i.imgur.com/UHGTV47l.png)

![Screenshot](http://i.imgur.com/o7w0kSal.png)

![Screenshot](http://i.imgur.com/7jdAhSxl.png)


To Do
-----

- Create guard condition so users can only update their confidence levels once a day
- Push notifications to remind users to rate their skills daily
- Refactoring!
