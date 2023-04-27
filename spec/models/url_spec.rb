require 'rails_helper'

RSpec.describe Url, type: :model do
  describe 'validations' do
    it { should validate_presence_of :long_url }
    it { should validate_presence_of :domain }
    it { should validate_presence_of :hash_value }
  end
end