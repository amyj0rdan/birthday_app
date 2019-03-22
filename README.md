# Birthday app

This web app will ask the user for a name and birthday.

When the user submits the form, and depending on the current date, the app will either:

- wish the user happy birthday
- tell them how long they'll have to wait until their next birthday

## Getting started

`git clone https://github.com/amyj0rdan/birthday_app`     
`bundle`

## Usage

`ruby app.rb`     
Navigate to `http://localhost:4567/`

Enter your details into the homepage:
![image](https://user-images.githubusercontent.com/45539085/54819401-ab56b280-4c93-11e9-9e02-1ecaec724457.png)

It will wish you a happy birthday if it's your birthday today:
![image](https://user-images.githubusercontent.com/45539085/54819444-cf19f880-4c93-11e9-8f7f-c41194e1d142.png)

Otherwise it will give you a countdown in days until your birthday:
![image](https://user-images.githubusercontent.com/45539085/54819466-dccf7e00-4c93-11e9-9464-8ee38e256105.png)

If you don't enter a day, it will take you to an error page:
![image](https://user-images.githubusercontent.com/45539085/54819494-f1137b00-4c93-11e9-8a56-03c2ae139d8f.png)

## Running tests

`rspec`
