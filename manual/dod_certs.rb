#!/usr/bin/ruby

require 'colorize'

def download_dod_certs
puts
puts "----- DOD Certificates -----".white.on_cyan

certs = [
  'https://militarycac.com/maccerts/AllCerts.p7b',
  'https://militarycac.com/maccerts/RootCert2.cer',
  'https://militarycac.com/maccerts/RootCert3.cer',
  'https://militarycac.com/maccerts/RootCert4.cer',
  'https://militarycac.com/maccerts/RootCert5.cer',
  '~/Downloads'
]
# certs.each { |cert| `open #{cert}` }
puts; puts 'DoD Certs have been downloaded to ~/Downloads. Double click to install them to Keychain Access'
puts
end

download_dod_certs

