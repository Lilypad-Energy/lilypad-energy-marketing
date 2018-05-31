import React from "react"
import PropTypes from "prop-types"
class EmailSubscription extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      email: '',
      firstName: ''
    };

    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleChange(event) {
    let newState = {}
    newState[event.target.id] = event.target.value
    this.setState(newState)
  }

  handleSubmit(event) {
    event.preventDefault();
    fetch('/email_subscriptions', {
      method: 'POST',
      headers: {
        'content-type': 'application/json'
      },
      body: JSON.stringify({
        email_subscription: {
          first_name: this.state.firstName,
          email: this.state.email,
        }
      }),
    });
  }

  render() {
    return (
      <form onSubmit={this.handleSubmit}>
        <label>
          First Name:
          <input type="text" id="firstName" value={this.state.firstName} onChange={this.handleChange} type='text' />
        </label>
        <label>
          Email:
          <input type="text" id="email" value={this.state.email} onChange={this.handleChange} type='email' />
        </label>
        <input type="submit" value="Submit" />
      </form>
    );
  }
}

export default EmailSubscription
