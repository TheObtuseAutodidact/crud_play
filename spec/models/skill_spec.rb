require 'rails_helper'

RSpec.describe Skill, type: :model do
  it "exists" do
    expect(Skill).to be_truthy
  end

  it "status defaults to 0" do
    skill = Skill.create(name: "anything", description: "well described")
    expect(skill.status).to eq("beginner")
  end
end
