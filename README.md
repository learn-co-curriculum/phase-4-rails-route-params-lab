# Route Params Lab

## Learning Goals

- Create a dynamic route
- Use the params hash in the controller

## Introduction

We'll continue building our API for viewing student data. In this lesson, we'll
add a route and controller action for displaying data about one individual
student.

To get set up, run:

```console
$ bundle install
$ rails db:migrate db:seed
```

This will download all the dependencies for our app and set up the database.

## Instructions

In this lab, we'll add the last feature to our student management app. You will
need to integrate the following scenario in your application:

1. The user is able to go to a URL with the student's ID (i.e. `/students/2`) to
   receive information on the student.

2. The application should render the values from the student record with the
   corresponding ID in the database.

You can try out your solution by running `rails s` and visiting
`localhost:3000/students/2` in the browser.

There are two failing RSpec specs in this lesson; you can find them in
`spec/requests/student_spec.rb`. Make sure they pass without breaking the other
tests. To complete this lesson, all specs should pass by running `learn test`.

## Bonus: Query Params

If you've used other APIs, or investigated some URLs as you've browsed the
internet, you may have noticed some URLs have this special syntax:

```txt
https://www.google.com/search?q=bread
```

That `?q=bread` portion of the URL is known as a
[**query string parameter**][query params]. Query string parameters are another
way of providing data in a request. They're structured as key-value pairs, like
so:

```txt
/students?key1=value1&key2=value2
```

Rails gives us access to these query string parameters as part of the params
hash:

```rb
params
# => { key1: "value1", key2: "value2" }
```

As a bonus deliverable:

**Un-comment out the last test in `/spec/requests/students_spec.rb` to complete the bonus.**

1. Use query params in the `index` action to return a list of all students whose
   first or last name matches the query parameter.

## Resources

- [Rails Guides on Routing](https://guides.rubyonrails.org/routing.html)
- [Routing API Documentation](http://api.rubyonrails.org/classes/ActionDispatch/Routing.html)

[query params]: https://en.wikipedia.org/wiki/Query_string
