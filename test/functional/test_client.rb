require 'helper'

class TestClient < Test::Unit::TestCase

  def test_sanity
    client = Ptax::Client.new
  end 

  def test_find_daily_ptax_csv_link  
    client = Ptax::Client.new
    link = client.find_daily_ptax_csv_link(:date => '13/10/2011') 
    p link
    assert_not_nil link
  end

end
