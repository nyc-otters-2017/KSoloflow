class App extends React.Component {

  constructor() {
    super()
    this.state = {
      questions: [],
    }
  }

  componentDidMount() {
    $.ajax({
      url: '/questions'
    }).success((questions) => {
      this.setState({questions})
    })
  }

  render() {
    return (
      <div>
      <h3>All Question page</h3>
      <div class="home_all_questions">
          <p>
            <span><a href=""></a></span>
            <span></span>
          </p>
        </div>
      </div>
    )
  }
}
