chrome.tabs.onUpdated.addListener (id, info, tab) ->
  return unless info.status == 'loading'

  chrome.tabs.executeScript id, file: 'js/lib/pace.min.js'
  chrome.tabs.insertCSS id, file: 'css/lib/pace.css'