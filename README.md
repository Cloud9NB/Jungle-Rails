# Jungle

A mini e-commerce application built with Rails 6.1 for purposes of teaching Rails by example.

## Screenshots

### <u><strong>Main Page
!["Screenshot of Main Page"](https://github.com/Cloud9NB/Jungle-Rails/blob/master/docs/home_page_1.png?raw=true)
!["Screenshot of Main Page"](https://github.com/Cloud9NB/Jungle-Rails/blob/master/docs/home_page_2.png?raw=true)

### Product
!["Screenshot of Product"](https://github.com/Cloud9NB/Jungle-Rails/blob/master/docs/product.png?raw=true)<strong>

### Cart
!["Screenshot of Checkout"](https://github.com/Cloud9NB/Jungle-Rails/blob/master/docs/my_cart.png?raw=true)

### <strong>Signup</u></strong>
!["Screenshot of Checkout"](https://github.com/Cloud9NB/Jungle-Rails/blob/master/docs/sign_up.png?raw=true
)
## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server
9. Go to <http://localhost:3000> on your browser

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe
- pg
- puma
- sass-rails
- webpackere
- turbolinks
- jbuilder
- jquery-rails
- sdoc
- bcrypt
- bootstrap
- font-awesome-rails
- money-rails
- rmagick
- faker
- carrierwave
- bootsnap