// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'


class Hello extends React.Component {
  render() {
    return (
      <div>
        <h2>Hello</h2>
        <NameInput name="Supermen"></NameInput>
      </div>
    )
  }
}

class NameInput extends React.Component {

  _handleChange(e) {
    console.log(e.target.value)
    this.setState({name: e.target.value})
  }

  constructor(props) {
    super(props)
    this.state = {
      name: this.props.name
    }
  }

  render() {
    return (
      <div>
        <input type="text" value={this.state.name} onChange={this._handleChange.bind(this)} />
        <div>{this.state.name}</div>
      </div>
    )
  }

}

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <Hello name="Ken" friend="Supermen" />,
    document.body.appendChild(document.createElement('div')),
  )
})
