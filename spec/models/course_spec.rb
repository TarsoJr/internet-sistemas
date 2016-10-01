require 'spec_helper'

RSpec.describe Course, type: :model do
  before(:all)do
    @course = Course.new(name: "Matemática", description: "Matemática Elementar",
    status: 1)
  end
  it "should have a matching name"do
    expect(@course.name).to eq("Matemática")
  end
end
