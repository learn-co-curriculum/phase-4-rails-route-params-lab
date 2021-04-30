# Route Params Lab

## Learning Goals

- Create a dynamic route
- Use the params hash in the controller

## Introduction

We'll continue building our API for viewing student data. In this lesson, we'll
add some a route and controller action for displaying data about one individual
student.

To get set up, run:

```sh
bundle install
rails db:migrate db:seed
```

This will download all the dependencies for our app and set up the database.

## Instructions

There are two failing RSpec specs in this lesson; you can find them in
`spec/requests/student_spec.rb`. Make sure they pass without breaking the other
tests. To complete this section, all specs should pass.

In this lab, we'll add the last feature to our student management app. You will
need to integrate the following scenario in your application:

1. The user is able to go to a URL with the student's ID (i.e. `/students/2`) to
   receive information on the student.

2. The application should render the values from the student record with the
   corresponding ID in the database.

You can try out your solution by running `rails s` and visiting `localhost:3000/students/2` in the browser. Then, run `learn test` to and make sure the tests are passing as well!

## Resources

- [Rails Guides on Routing](https://guides.rubyonrails.org/routing.html)
- [Routing API Documentation](http://api.rubyonrails.org/classes/ActionDispatch/Routing.html)
