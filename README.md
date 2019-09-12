# SaladBowl

## [ NOTE 1 ]: This is the front end of the application I created. Therefore, both repos have similar READMEs.
## [ NOTE 2 ]: Working on cleaning previous projects. Work on this will resume on September 21, 2019.

## Background
The application serves to simplify the process of finding, choosing, and making a healthy meal bowl.
<br />
This application is split into two parts: <br />
(1) Back End: built using Ruby on Rails <br />
(2) Front End: built using ReactJS & Redux w/ Thunk <br />


## Description

A limited list of features for the app include:

(1) Users can visit an 'About page'.<br />
(2) Users can visit a 'Log In' page to sign in using existing credentials.<br />
(3) Users can visit a 'Register' page to create a new account.<br />
(4) Users can visit a 'Breakfast Suggestions' page to get a list of four breakfast bowl suggestions.<br />
(5) Users can visit a 'Lunch Suggestions' page to get a list of four lunch bowl suggestions.<br />
(6) Users can visit a 'Dinner Suggestions' page to get a list of four dinner bowl suggestions.<br />
(7) Users can visit a 'Submit a Recipe' to visit a form they can fill out to suggest new salad bowl recipe.<br />
(8) Users can visit an 'Account' page to update their account information.<br />
(9) Users can click on the 'Log Out' option from the navigation bar to sign out.<br />

## Built With

* [Rails](https://guides.rubyonrails.org/) - The web framework used
* [ActiveRecord](https://guides.rubyonrails.org/active_record_basics.html) - For Handling Database communication and Model Associations.


## Authors

* **Mohammad Adeel**

## Plans

The application is a work in progress. I will return to it September 21, 2019 to finish working on it. I plan on refactoring the current code to make the application's code cleaner & more efficient. The first version will have another form that handles ingredient selection. The meal bowl cards will also display nutritional facts. I have other plans that I will not be making public at this time.

## Installation

Clone or download this repository to your machine. Go to the front-end repository and clone or download it as well. Then, follow the Usage instructions below.





## Usage

At present, you can run this app by doing the following:

(Note: If you already have ruby on rials installed on your machine, skip to (2))

(1) Follow the instructions on https://gorails.com/setup/osx/10.14-mojave to install Ruby on Rails.
(2) Install PostGres
(2) Navigate to the 'SaladBowl_backend' directory on your machine using the terminal<br />
(3) Next, type 'bundle install '. This should install all of the gems it requires.<br />
(5) Run rake db:migrate to run the migrations
(4) Type ' rails s -p 3001' into the terminal<br />
(5) Open your browser and navigate to 'http://localhost:3001' (press ctrl-C or control-C while in the terminal to exit.)<br />
(6) Alternatively, if you wish to experiment with the app locally, you can do so by typing ' rails c ''<br />


## Reporting Issues

Contributions are not allowed at this time, but you may report bugs on GitHub at https://github.com/AAM77/SaladBowl_backend.

## Code of Conduct

Everyone interacting in the SaladBowl project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/AAM77/SaladBowl_backend/blob/master/CODE_OF_CONDUCT.md).

## License
SaladBowl (_backend & _frontend) is currently the sole property of Mohammad Adeel.
