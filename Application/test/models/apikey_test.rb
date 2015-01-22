require 'test_helper'

class ApikeyTest < ActiveSupport::TestCase
 test 'apikey should have a user' do
   apikey = Apikey.new
   user = User.new

   apikey.user = user

   apikey.key = '$hgfgbvfvd'

   user.username = 'haoj'
   user.password = '$gthfvffgbf'

   assert apikey.save
 end

  test 'should not save an apikey without a user' do
    apikey = Apikey.new
    apikey.key = 'thgrverf'

    assert_not apikey.save
  end
end
