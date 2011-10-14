require 'helper'
require 'fileutils'

class TestClient < Test::Unit::TestCase

  def test_sanity
    client = Ptax::Client.new
  end 

  def test_find_daily_ptax_csv_link  
    client = Ptax::Client.new
    link = client.find_daily_ptax_csv_link(:date => '13/10/2011') 
    assert_not_nil link
  end

  def test_download_ptax_csv
    client = Ptax::Client.new

    FileUtils.rm_rf('/tmp/ptax.csv')

    client.download_ptax_csv(:date => '13/10/2011', :path => '/tmp/ptax.csv') 
    assert File.exists?('/tmp/ptax.csv')

    FileUtils.rm_rf('/tmp/ptax.csv')
  end
end
