# I Love Layovers

#### _A fun app to help a account find the most inconvenient, torturous flights that the internet has to offer._, {April 30, 2018}_

### By Masen Matthews and Katie Fujihara

## Description
  I Love Layovers is an app designed to help passengers find flights with a high price point and a high amount of layovers. It uses the Google Flights API to obtain this information and pairs it with Rails to create a one-stop shopping experience.

## Motivation
  Flying is an essential form of travel for many different kinds of people. There are the seasoned world travelers, the business executives, the seasoned political figures, and the average plebians who just want to go somewhere new. Many of us spend hours searching for the shortest, cheapest flights imaginable. We plug our destinations into apps to find the cheapest flights and wait weeks to book - but why?

  Luckily, there's a new app for those of us who enjoy the thrill of flying in a giant pressurized tube several thousand miles above the ground. It's for those of us who enjoy cramped, frigid cabins, little cups of ginger ale, and screaming children that won't quiet down. I Love Layovers is here for those of us who don't just value the destination, but the trip as well.

## Specifications


## Setup/Installation Requirements
  This project can be installed and viewed by following these steps:
    1. Clone GitHub repository to desktop or desired directory
    2. Open the terminal and navigate to the project directory
    3. Run $ bundle or $ bundle install in the terminal
    4. Run $ rails db:create and $ rails db:migrate to establish database functionality
    5. Add code for the Stripe API:
        * In config/initializers, add a file called stripe.rb
        * Add the following line of code to stripe.rb
          * Rails.configuration.stripe = {
            :publishable_key => ENV['PUBLISHABLE KEY GOES HERE
          '],
            :secret_key => ENV['SECRET KEY GOES HERE
          ']
          }

          Stripe.api_key = Rails.configuration.stripe[:secret_key]

        * Navigate to the website for Stripe, sign in, and go to 'Developers' on the lefthand sidebar, and go to the 'API keys' section of the website. If you do not have API keys or an account, you will need to make one and request access to the API.
        * Replace the 'publishable_key' and 'secret_key' sections of the above code snippet with your own keys and save the file.
    6. Run $ rails server
    7. Navigate to localhost:3000 in Google Chrome or desired browser to view the site

## Future expansion

## Technologies Used
  This project utilizes the following technologies:
    -Ruby On Rails
    -Materialize (for CSS)

## Known Bugs and Issues

## Support and contact details

Support inquiries, ideas, suggestions, and other contact inquiries can be directed to Masen or Katie via email or GitHub:

Masen:
Github - masenmatthews
Email - masenmatthews@gmail.com

Katie:
Github - KaitlynFujihara
Email - katiefujihara@gmail.com

### License

Copyright (c) 2018 - Masen Matthews / Katie Fujihara

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
