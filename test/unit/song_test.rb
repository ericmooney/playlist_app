# == Schema Information
#
# Table name: songs
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  soundcloud_id :string(255)
#  url           :string(255)
#  description   :text
#  query         :string(255)
#

require 'test_helper'

class SongTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
