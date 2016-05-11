describe 'NewWidget', ->

  beforeEach ->
    @$el = $('<div></div>')
    @component = ReactDOM.render(React.createElement(NewWidget), @$el[0])
    sinon.stub($, 'ajax').returns then: ->

  afterEach ->
    $.ajax.restore()

  describe '#render', ->

    it 'renders a placeholder', ->
      @$el.html().should.containEql 'Enter a new widget name'

  describe '#addNewWidget', ->

    it 'sends a POST to create a new widget', ->
      $(@component.refs.input).val 'FooBar'
      @component.addNewWidget()
      $.ajax.args[0][0].data.widget.name.should.equal 'FooBar'
