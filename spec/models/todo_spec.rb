require 'rails_helper'

RSpec.describe Todo, type: :model do
  # Asociation test
  # ensure todo model has 1 to m relationship with Item model
  it { should have_many(:items).dependent(:destroy) }
  # validation test
  # ensure columns title and created_by are present before saving
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:created_by) }
end
