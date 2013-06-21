require "ruby-saml"

saml_response = File.read(ARGV[0])
fingerprint = ARGV[1]
response = Onelogin::Saml::Response.new(saml_response, :skip_conditions => true)
response.settings = Onelogin::Saml::Settings.new(:idp_cert_fingerprint => fingerprint)
response.validate!
