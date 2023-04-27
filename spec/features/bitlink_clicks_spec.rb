require 'rails_helper'

RSpec.describe BitlinkClicksController do

  describe 'index' do
    it 'returns JSON' do
     bitlink_clicks = [ {"bitlink": "http://bit.ly/2kkAHNs", "user_agent": "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; Media Center PC 6.0; InfoPath.3; MS-RTC LM 8; Zune 4.7", "timestamp": "2020-02-15T00:00:00Z", "referrer": "t.co", "remote_ip": "4.14.247.63"},
                        {"bitlink": "http://bit.ly/2lNPjVU", "user_agent": "Mozilla/5.0 (iPhone; U; CPU iOS 2_0 like Mac OS X; en-us) AppleWebKit/525.18.1 (KHTML, like Gecko) Version/3.1.1 Mobile/XXXXX Safari/525.20", "timestamp": "2020-07-29T00:00:00Z", "referrer": "direct", "remote_ip": "4.14.244.85"},
                        {"bitlink": "http://bit.ly/2kJO0qS", "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1944.0 Safari/537.36", "timestamp": "2020-06-20T00:00:00Z", "referrer": "twitter.com", "remote_ip": "2.203.85.0"},
                        {"bitlink": "http://es.pn/3MgVNnZ", "user_agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36", "timestamp": "2021-11-17T00:00:00Z", "referrer": "direct", "remote_ip": "2.17.160.0"},
                        {"bitlink": "http://bit.ly/2kjqil6", "user_agent": "Mozilla/5.0 (Android; Tablet; rv:30.0) Gecko/30.0 Firefox/30.0", "timestamp": "2021-02-24T00:00:00Z", "referrer": "direct", "remote_ip": "2.16.120.255"},
                        {"bitlink": "http://bit.ly/2kkAHNs", "user_agent": "Mozilla/5.0 (Linux; U; Android 4.3; en-us; HUAWEI Y530-U00 Build/HuaweiY530-U00) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30 [FBAN/FB4A;FBAV/23.0.0.22.14;]", "timestamp": "2021-04-09T00:00:00Z", "referrer": "t.co", "remote_ip": "2.17.160.0"},
                        {"bitlink": "http://bit.ly/2kJej0k", "user_agent": "Mozilla/5.0 (iPhone; U; CPU iPhone OS 5_1_1 like Mac OS X; en) AppleWebKit/534.46.0 (KHTML, like Gecko) CriOS/19.0.1084.60 Mobile/9B206 Safari/7534.48.3", "timestamp": "2020-09-10T00:00:00Z", "referrer": "t.co", "remote_ip": "4.14.247.63"},
                      ]

      urls = [ {long_url: 'https://google.com/', domain: 'bit.ly', hash_value:'31Tt55y'},
              {long_url: 'https://github.com/', domain: 'bit.ly', hash_value:'2kJO0qS'},
              {long_url: 'https://twitter.com/',domain:'bit.ly', hash_value:'2kkAHNs'},
              {long_url: 'https://reddit.com/',domain: 'bit.ly', hash_value:'2kJdsg8'},
              {long_url: 'https://linkedin.com/',domain: 'bit.ly', hash_value:'2kJej0k'},
              {long_url: 'https://youtube.com/',domain: 'bit.ly', hash_value:'2lNPjVU'}
                    ]
     bitlink_clicks = bitlink_clicks.map do |bitlink|
        BitlinkClick.create!(bitlink)
      end

      urls.map { |url| Url.create!(url) }

      visit bitlink_clicks_path

      expect(page).to have_content('3MgVNnZ')
      expect(page).to have_content('2kjqil6')
      expect(page).to have_content('2kkAHNs')
    end
  end
end