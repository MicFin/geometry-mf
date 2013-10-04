require File.expand_path(File.dirname(__FILE__) + '/spec_helper')



describe Geometry::Triangle do
  
  # short setting the variables for comparison
  let(:a) { 3}
  let(:b) { 4}
  let(:c) { 6}
  let(:good_perimeter) { 13}
  let(:good_area) { 5.332682251925386}
  let(:good_angles) { [3/4, 9/16, 1/8]}
  let(:good_validity) {true}
  subject { Geometry::Triangle.new(a, b, c) }


# short way to check perimeter
  its(:perimeter) { should eq good_perimeter}
  its(:area) { should eq good_area}
  # its(:angles) {should eq good_angles}
  its(:valid?) {should eq good_validity}

  let(:a) { 2}
  let(:b) { 1}
  let(:c) { 1}
  let(:good_perimeter) { 4}
  let(:good_area) { 0}
  # let(:good_angles) { [3/4, 9/16, 1/8]}
  let(:good_validity) {false}
  subject { Geometry::Triangle.new(a, b, c) }

  its(:perimeter) { should eq good_perimeter}
  its(:area) { should eq good_area}
  its(:valid?) {should eq good_validity}

  # checks if the subject is an instance of the correct class
  it "should be an instance of geometry triangle" do
    subject.should be_an_instance_of Geometry::Triangle
  end
end

describe Geometry::Rectangle do
  
  # short setting the variables for comparison
  let(:length) { 3}
  let(:width) { 4}
  let(:good_perimeter) { 14}
  let(:good_area) { 12}
  subject { Geometry::Rectangle.new(length, width) }

  its(:perimeter) { should eq good_perimeter}
  its(:area) { should eq good_area}

end

describe Geometry::Circle do
  
  # short setting the variables for comparison
  let(:radius) { 3}
  let(:good_circ) { Math::PI * 6}
  subject { Geometry::Circle.new(radius) }

  its(:circ) { should eq good_circ}

end
