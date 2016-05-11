class NewWidget extends React.Component {

  addNewWidget(e) {
    $.ajax({
      type: 'POST',
      url: '/widgets',
      data: { widget: { name: this.refs.input.value } }
    }).then(() => window.location.reload())
  }

  render() {
    return <form onSubmit={this.addNewWidget.bind(this)}>
      <input
        placeholder='Enter a new widget name'
        ref='input'
        className='input'
      />
      <button type='submit' >Submit</button>
    </form>
  }
}

$(() => ReactDOM.render(<NewWidget />, document.getElementById('new-widget')))
