ready = ->
  dateFormat = 'yy年mm月dd日';
  $('.date-picker').datepicker(
    dateFormat: dateFormat,
    changeYear: true,
    changeMonth: true
  );
$(document).ready(ready)
$(document).on('turbolinks:load', ready)