SAML-validator
==============

Usage
-----

    bundle exec ruby saml-validator.rb path/to/saml-response.xml fingerprint

Fingerprint MUST BE like `11:54:17:c5:1b:e5:ac:55:9d:83:49:b5:63:b7:cf:6d:80:aa:b4:1a`.

Sample outputs
--------------

    $ bundle exec ruby saml-validator.rb samlresponse-digest-mismatch.xml 1b:11:54:17:c5:1b:e5:ac:55:9d:83:49:b5:63:b7:cf:6d:80:bb:b4
    /Users/hiroshi/.rvm/gems/ruby-2.0.0-p195/gems/ruby-saml-0.7.2/lib/xml_security.rb:104:in `block in validate_doc': Digest mismatch (Onelogin::Saml::ValidationError)
            from /Users/hiroshi/.rvm/rubies/ruby-2.0.0-p195/lib/ruby/2.0.0/rexml/xpath.rb:67:in `each'
            from /Users/hiroshi/.rvm/rubies/ruby-2.0.0-p195/lib/ruby/2.0.0/rexml/xpath.rb:67:in `each'
            from /Users/hiroshi/.rvm/gems/ruby-2.0.0-p195/gems/ruby-saml-0.7.2/lib/xml_security.rb:91:in `validate_doc'
            from /Users/hiroshi/.rvm/gems/ruby-2.0.0-p195/gems/ruby-saml-0.7.2/lib/xml_security.rb:61:in `validate'
            from /Users/hiroshi/.rvm/gems/ruby-2.0.0-p195/gems/ruby-saml-0.7.2/lib/onelogin/ruby-saml/response.rb:113:in `validate'
            from /Users/hiroshi/.rvm/gems/ruby-2.0.0-p195/gems/ruby-saml-0.7.2/lib/onelogin/ruby-saml/response.rb:33:in `validate!'
            from saml-validator.rb:7:in `<main>'
