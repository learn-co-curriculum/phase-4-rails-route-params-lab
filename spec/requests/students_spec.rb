require 'rails_helper'

RSpec.describe "Students", type: :request do
  before do
    Student.create(first_name: 'Dwayne', last_name: 'Johnson', grade: 99)
    Student.create(first_name: 'Idris', last_name: 'Elba', grade: 105)
    Student.create(first_name: 'Vanessa', last_name: 'Kirby', grade: 85)
    Student.create(first_name: 'Jason', last_name: 'Statham', grade: 70)
  end

  describe "GET /students" do
    it 'returns an array of all students' do
      get '/students'

      expect(response.body).to include_json([
        { first_name: 'Dwayne', last_name: 'Johnson', grade: 99 },
        { first_name: 'Idris', last_name: 'Elba', grade: 105 },
        { first_name: 'Vanessa', last_name: 'Kirby', grade: 85 },
        { first_name: 'Jason', last_name: 'Statham', grade: 70 }
      ])
    end
  end

  describe "GET /students/grades" do
    it 'returns an array of all students ordered by grade' do
      get '/students/grades'

      expect(response.body).to include_json([
        { first_name: 'Idris', last_name: 'Elba', grade: 105 },
        { first_name: 'Dwayne', last_name: 'Johnson', grade: 99 },
        { first_name: 'Vanessa', last_name: 'Kirby', grade: 85 },
        { first_name: 'Jason', last_name: 'Statham', grade: 70 }
      ])
    end
  end
  
  # remove skip: "bonus" to run the test for the bonus!
  describe "GET /students/highest-grade" do
    it 'returns the student with the highest grade' do
      get '/students/highest-grade'

      expect(response.body).to include_json({ 
        first_name: 'Idris', last_name: 'Elba', grade: 105 
      })
    end
  end
  
end
