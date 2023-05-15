![](https://img.shields.io/badge/Ruby-red)

# Micolet's Newsletter Landing Page

> 

## Roadmap:

✅ Created a new fully responsive rails app. <br>
✅ Setup Rubocop and Stylelint linters in order to keep a readable and clean code. <br>
✅ Setup PostgreSQL database. <br>
✅ The app has the following interfaces:

 - A landing page to subscribe to the newsletter.
 - The form has validations in order to avoid wrong data such as:
    - The email is unique, so, the same email can't be saved twice.
    - The user is required to enter a valid email format.
    - The email should has at least a 0.70 score from the abstract API.
    - The user has to select at least one fashion preference.
    - I let the user know about these issue through flash messages.
 - If the user enters the right data, the email and preferences will be stored in the database.
 - Action Mailer will send a confirmation email to the user.
 - After save the new record and get the email, the user will be redirected to anohter interface under user controller:
    - A flash message will appear letteing the user know he was successfully added to the newsletter.
    - In order to get a discount if he/she enters more data in a multi-step form
    - This multi-step form is not completed yet, there are just the templates but isn't working at all yet.
 - The rails-i18n gem has been implemented in order to do an internationalization of our landing page, it's taking browser's language and showing all the info in that language, currently are enabled English (also the default one) and Spanish. It's also ready to add French, just writing its yml file.
 - A unit test was added with Rspec.
 - There are some screenshots in the (Spanish screenshots)[https://github.com/AlexRS90/Micolet/tree/landing-page/spanish_screenshots] and (English screenshots)[https://github.com/AlexRS90/Micolet/tree/landing-page/english_screenshots] folders for better reference. 
 
 ## NOTE: This readme was written in English due the instructions were in English as well.


## Built With

- Ruby On Rails
- Vanilla CSS
- Rspec

## To get a local copy up and running follow these simple steps.

Open your termnial and run the following command:

<code>git clone https://github.com/AlexRS90/Micolet.git</code>
 - cd Micolet
 - git checkout landing-page
 - bundle install
 - rails db:create
 - rails db: migrate
 - <code>rails s</code> <br>

 Open your browser and type the following URL <code>http://127.0.0.1:3000/</code>

Finally you can start using the landing page and play with it.
Enjoy!

### Testing

To run the unit test once you did the above steps just write the following command in your terminal, you must be on your root directory:

- <code>rspec spec</code>

### Prerequisites

- Ruby
- Terminal

## Authors

👤 **Alejandro Ramos**

- GitHub: [@AlexRS90](https://github.com/AlexRS90)
- Twitter: [@AlejandroRBenji](https://twitter.com/AlejandroRBenji)
- LinkedIn: [@AlexRS90](https://www.linkedin.com/in/alexrs90/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!


## Show your support

Give a ⭐️ if you like this project!

