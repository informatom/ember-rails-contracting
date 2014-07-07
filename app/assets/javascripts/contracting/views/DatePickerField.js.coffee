Contracting.DatePickerField = Em.View.extend
  templateName: "datepicker"

  valueAsDate: (->
    moment(@get("value")).format "DD.MM.YYYY"
  ).property("view.value")

  didInsertElement: ->
    self = this

    onChangeDate = (ev) ->
      self.set "value", ev.date
      Ember.Logger.info(ev.date)

    @$(".datepicker").datepicker
      separator: "."
    .on "changeDate", onChangeDate