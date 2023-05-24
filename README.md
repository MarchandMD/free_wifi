# Find Boulder Coffee Shops with free wifi

Quick [Places API](https://apidocs.geoapify.com/docs/places/#conditions) consumption using a simple form and some basic Bootstrap styling

# Setup

This application does require you to grab an API key.

Start here for a very high level overview of [Geoapify](https://www.geoapify.com/)

From there, go to `Developers` drop down and select `documentation`

That should take you to the [Geoapify Location Platform webpage](https://apidocs.geoapify.com/#docs)

Select the `Places API` docs link

That should take you to the [Places API](https://apidocs.geoapify.com/docs/places/#about)

From there, go to the [Getting API key link](https://apidocs.geoapify.com/docs/places/#quick-start) on the same page

That will give you instructions to get a key which includes the following steps:

1. Register yourself on the [Geoapify My projects page](https://myprojects.geoapify.com/projects)
2. Create a new project
3. Go to the API Keys section, where one API key is generated automatically. You can generate multiple API keys per project if needed.


# Usage

1. git clone
2. cd into the repo
3. run `bundle` or `bundle install` (they do the same thing)
4. Since you need to use your own API key that you generated in the Setup, run `bundle exec figaro install`
5. in the new `config/application.yml` file just created, add a key/value pair of `maps_api_key: <YOUR-API-KEY-HERE>`
6. rails s
7. run `rails db:create`
8. navigate to localhost:3000
9. select option from the drop down (either coffee shops, or all dining options)

The results return a list of businesses that offer free wifi in Boulder with links to Google results for the business and address

