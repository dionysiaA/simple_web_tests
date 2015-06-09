require 'omniauth'
require 'omniauth-facebook'
require 'selenium-webdriver'
require 'capybara/cucumber'
require 'capybara/dsl'

module AuthFacebook
def set_omniauth(opts = {})

  default = {:provider => :facebook,
             :uuid     => "788593021229953",
             :facebook => {
                 :email => "deniseagathocleous@gmail.com",
                 :name => "Rita Ritaki",
                 :first_name => "Rita",
                 :last_name => "Ritaki"
             }
  }

  credentials = default.merge(opts)
  provider = credentials[:provider]
  user_hash = credentials[provider]

  OmniAuth.config.test_mode = true

  OmniAuth.config.mock_auth[provider] = {
      'uid' => credentials[:uuid],
      "extra" => {
          "user_hash" => {
              "email" => user_hash[:email],
              "first_name" => user_hash[:first_name],
              "last_name" => user_hash[:last_name],
              "name" => user_hash[:name]

          }
      }
  }


end

def set_invalid_omniauth(opts = {})

  credentials = { :provider => :facebook,
                  :invalid  => :invalid_crendentials
  }.merge(opts)

  OmniAuth.config.test_mode = true
  OmniAuth.config.mock_auth[credentials[:provider]] = credentials[:invalid]

end
end
World(AuthFacebook)