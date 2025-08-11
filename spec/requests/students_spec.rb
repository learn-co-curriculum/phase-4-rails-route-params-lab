require 'rails_helper'

RSpec.describe "Students", type: :request do
  before do
    Student.create(first_name: 'Dwayne', last_name: 'Johnson', grade: 99)
    Student.create(first_name: 'Idris', last_name: 'Elba', grade: 105)
    Student.create(first_name: 'Vanessa', last_name: 'Kirby', grade: 85)
    Student.create(first_name: 'Jason', last_name: 'Statham', grade: 70)
  end

  let!(:first_student) { Student.first }
  let!(:second_student) { Student.second }

  describe "GET /students/:id" do
    it 'returns the first student' do
      get "/students/#{first_student.id}"

      expect(response.body).to include_json({
        id: a_kind_of(Integer),
        first_name: 'Dwayne', 
        last_name: 'Johnson', 
        grade: 99
      })
    end

    it 'returns the second student' do
      get "/students/#{second_student.id}"

      expect(response.body).to include_json({
        id: a_kind_of(Integer),
        first_name: 'Idris', 
        last_name: 'Elba', 
        grade: 105
      })
    end
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

    # BONUS: un-comment out the code below to run the bonus test

    context 'with query params' do
      it 'returns students whose first or last name matches the query' do
        get '/students?name=kirby'

        expect(response.body).to include_json([
          { first_name: 'Vanessa', last_name: 'Kirby', grade: 85 }
        ])
      end
    end
    
  end
  
end
