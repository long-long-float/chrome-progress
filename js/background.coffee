chrome.tabs.onUpdated.addListener (id, info, tab) ->
  return unless info.status == 'loading'

  chrome.tabs.executeScript id, file: 'js/lib/pace.min.js'
  chrome.storage.local.get 'style_of_pace', (items) ->
    chrome.tabs.insertCSS id, code: items.style_of_pace