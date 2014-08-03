$ ->
  chrome.storage.local.get 'style_of_pace', (items) ->
    $('#style-of-pace').val(items.style_of_pace)

  $('#save-btn').click ->
    chrome.storage.local.set style_of_pace: $('#style-of-pace').val(), ->
      alert 'saved'