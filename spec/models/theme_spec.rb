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
  
  context "when basic theme values are defaults" do
    it "should have the sensible default values" do
      theme = Theme.new
      expect(theme.bgcolor).to eq 'EEEEEE'
      expect(theme.bordercolor).to eq '333333'
      expect(theme.textcolor).to eq '333333'   
    end    
  end

  context "when basic theme values are set explicitly" do
    it "should return the explicitly set values" do
      theme = Theme.new
      theme.bgcolor = 'FF0000'
      theme.bordercolor = '00FF00'
      theme.textcolor = '0000FF'
      expect(theme.bgcolor).to eq 'FF0000'
      expect(theme.bordercolor).to eq '00FF00'
      expect(theme.textcolor).to eq '0000FF'   
    end    
  end

end
