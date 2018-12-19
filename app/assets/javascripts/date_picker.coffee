ready = ->
  dateFormat = 'yy年mm月dd日';
  $('.date-picker').datepicker(
    dateFormat: dateFormat,
    minDate: 0
  );
$(document).ready(ready)
$(document).on('turbolinks:load', ready)