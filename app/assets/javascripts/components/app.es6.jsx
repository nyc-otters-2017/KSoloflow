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
        <div className="home_all_questions">
          { this.state.map(q)
          <QuestionStream questions={q}/>
          }
        </div>
      </div>
    )
  }
}
