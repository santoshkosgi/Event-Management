require 'openid/store/filesystem'
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter,  'E1r9F3GR60uqCCBLAreA9w', 'xtFClFAloKtl8hvD1Jfqrj6H1N8DlNqOknOsmxCQylU'
  provider :linked_in, 'sup72rpsh43n', 'wYzneYSh0nOMHnHv'
end
