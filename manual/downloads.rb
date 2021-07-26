#!/usr/bin/ruby

require 'colorize'

def open_download_pages
  puts
  puts "----- Other Software -----".black.on_yellow
  softwares = {
    'Alfred' => {
      comments: ['copy PowerPack license from old laptop',
                 'open Preferences and sync with ~/Dropbox/preferences-sync',
                 'do NOT use app store version'
    ],
    url: 'https://www.alfredapp.com'
    },
    'Superhuman' => {
      comments: [''],
      url: 'https://superhuman.com/desktop'
    },
    'LastPass' => {
      comments: [],
      url: 'https://lastpass.com/misc_download2.php'
    },
    'PIA' => {
      comments: [],
      url: 'https://www.privateinternetaccess.com/pages/download'
    },
    'Dropbox' => {
      comments: ['download and sign in to start pulling files'],
      url: 'https://www.dropbox.com/install'
    },
    'ZeroTier' => {
      comments: ['add new node to all networks'],
      url: 'https://www.zerotier.com/download/'
    },
    'Google Drive File Stream' => {
      comments: [],
      url: 'https://support.google.com/drive/answer/7329379'
    },
    'Sourcetree' => {
      comments: ['in terminal: touch ~/.stCommitMsg'],
      url: 'https://www.sourcetreeapp.com/'
    },
    'Zoom' => {
      comments: [],
      url: 'https://zoom.us/client/latest/zoomusInstaller.pkg'
    },
    'Quickbooks' => {
      comments: [],
      url: 'https://http-download.intuit.com/http.intuit/CMO/apple_web/sample/static/qbomac/content/download/index.html?cid=ipd_qbo_simba'
    },
    'Microsoft Office' => {
      comments: [],
      url: 'https://account.microsoft.com/services/office/install'
    },
  }
  softwares.each_with_index do |(software, details), i|
    puts [i+1, software].join('. ')
    details[:comments].each { |comment| puts "    - #{comment}" }
    if url = details[:url]
      # `open #{url}`
    end
  end
  puts
end


open_download_pages
