class Community extends React.Component {
  constructor() {
    super();
    this.state = {
      counter: 0,
    }
    this.counterUpper = this.counterUpper.bind(this);
  }

  counterUpper() {
    this.setState({
      counter: this.state.counter + 1,
    })
  }


  render() {
    return (
      <div>
        <h1>{this.props.title}</h1>
        <p>
          the counter should be here
        </p>
        <button onClick={this.counterUpper}>counter</button>
      </div>
    )
  }
}
