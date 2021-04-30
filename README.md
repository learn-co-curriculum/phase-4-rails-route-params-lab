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

There are three RSpec specs in this lesson; you can find them in
`spec/features/student_spec.rb`. Make sure they pass without breaking the other
tests. To complete this section, all specs should pass.

In this lab, you will work through the full MVC pattern by building a student
management app. At a high level, you will integrate the following scenario in
your application:

1. The user is able to go to `/students/2` to receive information on the student
   with an id of `2`

2. The application should render the values from the `student` record in the
   database

## Resources

- [Rails Guides on Routing](https://guides.rubyonrails.org/routing.html)
- [Routing API Documentation](http://api.rubyonrails.org/classes/ActionDispatch/Routing.html)
