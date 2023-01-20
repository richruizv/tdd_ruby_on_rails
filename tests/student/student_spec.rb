require_relative 'student'

RSpec.describe Student do
  describe "instance methods" do

    subject { Studen.new('John','Doe') }

    it { respond_to(:first_name) }

    it { respond_to(:last_name) }

    it { respond_to(:student_full_name) }

    describe 'total number of students created' do
      it 'should have students in total' do
        Student.new('John','Doe')
        Student.new('Name','Doe')

        expect(Student.total_count).to eq(2)
      end
    end
  end
end