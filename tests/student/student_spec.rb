require_relative 'student'

RSpec.describe Student do
  describe "instance methods" do
    before do
      @student = Student.new('John','Doe')
    end

    subject { Studen.new('John','Doe') }
    it 'should respond respond to #first_name' do
      expect(@student).to respond_to(:first_name)
    end

    it 'should respond respond to #last_name' do
      expect(@student).to respond_to(:last_name)
    end

    it 'should respond respond to #student_full_name' do
      expect(@student).to respond_to(:student_full_name)
    end
  end
end