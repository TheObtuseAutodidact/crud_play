require 'rails_helper'

RSpec.describe Skill, type: :model do
  it "exists" do
    expect(Skill).to be_truthy
  end

  it "status defaults to 0" do
    skill = Skill.create(name: "anything", description: "well described")
    expect(skill.status).to eq("beginner")
  end

  it "is invalid without name" do
    skill = Skill.create(name: nil, description: "well described")

    expect(skill).to_not be_valid
  end

  it "is invalid without description" do
    skill = Skill.create(name: "anything", description: nil)

    expect(skill).to_not be_valid
  end
end
