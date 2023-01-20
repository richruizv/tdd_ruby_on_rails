require_relative 'hello'
RSpec.describe Hello do
  it 'Should return "Hello world!"' do
    greeting = Hello.say_hello
    # expect the output from this line to match "Hello world"
    expect(greeting).to eq 'Hello world!'
  end
end