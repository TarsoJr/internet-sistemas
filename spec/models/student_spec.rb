require 'spec_helper'

RSpec.describe Student, type: :model do
  before(:all)do
  @student = Student.new(name: "João", register_number: "12344",
    status: 1)
  end

  it "should have a matching name"do
    expect(@student.name).to eq("João")
  end

end
