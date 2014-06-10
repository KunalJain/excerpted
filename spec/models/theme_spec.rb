# == Schema Information
#
# Table name: themes
#
#  id          :integer          not null, primary key
#  bgcolor     :string(6)
#  bordercolor :string(6)
#  textcolor   :string(6)
#  font        :string(6)
#  created_at  :datetime
#  updated_at  :datetime
#

require 'rails_helper'

RSpec.describe Theme, :type => :model do
  
  let(:theme){described_class.new}

  context "when values are defaults" do
    it "should have the sensible default values" do
      expect(theme.bgcolor).to eq 'EEEEEE'
      expect(theme.bordercolor).to eq '333333'
      expect(theme.textcolor).to eq '333333'   
    end    
  end

end
