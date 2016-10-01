require 'spec_helper'

RSpec.describe Classroom, type: :model do
  before(:all)do
  @classroom = Classroom.new(student_id: 1, course_id: 1,
    entry_at: "2016-10-01 03:38:00")
  end

  it "should have a matching student_id" do
    expect(@classroom.student_id).to eq(1)
  end

  it "shoul have a matching course_id" do
    expect(@classroom.course_id).to eq(1)
  end
end
