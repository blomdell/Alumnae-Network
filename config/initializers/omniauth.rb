Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '322271291124131', '853334aa6575296329935f2c79653f63'
  provider :twitter, 'j439aDedqTT37nTsxmoQmA', '22ZwUYziuzY9fQ11GuOn4FReAQ1ZwkQEJHB9OtwwFI'
end