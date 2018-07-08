import React, { Component } from 'react';
import update from 'react-addons-update';
import quizQuestions from './api/quizQuestions';
import Quiz from './components/Quiz';
import Result from './components/Result';
import { BrowserRouter as Router,
  Route,
  Link,
  Switch,
  Redirect } from 'react-router-dom'
import Modal from 'react-modal';
import './App.css';
var fileDownload = require('js-file-download');


const customStyles = {
  content : {
    top                   : '50%',
    left                  : '50%',
    right                 : 'auto',
    bottom                : 'auto',
    marginRight           : '-50%',
    transform             : 'translate(-50%, -50%)',
    height                : '451px',
    width                 : '900px'
  }
};

Modal.setAppElement('#root')

class ModalApp extends React.Component {
  constructor() {
    super();

    this.state = {
      modalIsOpen: false
    };

    this.openModal = this.openModal.bind(this);
    this.afterOpenModal = this.afterOpenModal.bind(this);
    this.closeModal = this.closeModal.bind(this);
    // this.savecopy = this.savecopy.bind(this);
  }

  openModal() {
    this.setState({modalIsOpen: true});
  }

  afterOpenModal() {
    // references are now sync'd and can be accessed.
    this.subtitle.style.color = '#f00';
  }

  closeModal() {
    this.setState({modalIsOpen: false});
  }

  render() {
    return (
      <div>
      <div className="container containerOutside">
      <h3 className="contracttitle"> Terms and Conditions </h3> <br />
        1.    For an insured person aged above 70, the maximum limit payable under Medical Expenses Benefit shall be 30% of the limit applicable to the plan selected.    

<br />2.    Prior approval from Blue Cross is required before any assistance or hospital admission deposit is guaranteed. The insured person or his/her representative should call the hotline to provide the policy number, the name and HKID card number of the insured person, and the nature and the location of the emergency for validation.    

<br />3.    For an insured person aged below 18 or above 70, the maximum limit payable under Personal Accident Benefit shall be 30% of the limit applicable to the plan selected.    

<br />4.    The benefit is payable only if the relevant event takes place 24 hours after the issue of the policy.    

<br />5.    The benefit is payable only if the relevant event takes place within 30 days prior to the commencement date of the period of insurance.    

<br />6.    If the arranged public conveyance for commencing the journey is cancelled or delayed due to mechanical breakdown and the provider of such arranged public conveyance is unable to provide an alternative transportation, the insured person can only claim either the Cash Allowance Benefit or the Cancellation of Journey Benefit once under Travel Delay Benefit. No Additional Travel Expenses Benefit shall be payable in such circumstances.    

<br />7.    Applicable to tablet computers with a screen size 7 inches or above (measured diagonally).    

<br />8.    If such loss occurs in China, the insured person is eligible to receive advance emergency cash assistance at designated branches of The Bank of East Asia (China) Limited. The maximum cash advances are HK$3,000/HK$2,000/HK$1,000/HK$3,000 (or its equivalent amount in RMB) for the Premier Plan/Select Plan/China Plan/Cruise Plan respectively. Prior approval from Blue Cross is required.    

<br />9.    Personal Money Benefit is not applicable to an insured person aged below 10.    

<br />10.    If a claim under Cruise Cancellation and Interruption Benefit is payable, no further claims shall be payable under Trip Cancellation and Trip Re-arrangement Benefits.    

<br />11.    If a claim under Delay Coverage is payable, no further claims shall be payable under Cruise Cancellation and Interruption Benefit.    

<br />*    Applicant MUST be 18 years old or above.    

<br />*    Worldwide plan includes China.    

<br />*    The journey must depart from Hong Kong.
<br />
<br />
<div className="buttonContainer">
    <button className="btn btn-primary" onClick={this.openModal}>Take Quiz</button>
        <Modal
          isOpen={this.state.modalIsOpen}
          onAfterOpen={this.afterOpenModal}
          onRequestClose={this.closeModal}
          style={customStyles}
          contentLabel="Example Modal"
        >
          <App />
        </Modal>
</div>
</div>
      </div>
    );
  }
}

class App extends Component {

  constructor(props) {
    super(props);

    this.state = {
      counter: 0,
      questionId: 1,
      question: '',
      answerOptions: [],
      answer: '',
      answersCount: {
        Right: 0,
        Wrong: 0,
      },
      result: ''
    };

    this.handleAnswerSelected = this.handleAnswerSelected.bind(this);
  }

  componentWillMount() {
    const shuffledAnswerOptions = quizQuestions.map((question) => this.shuffleArray(question.answers));
    this.setState({
      question: quizQuestions[0].question,
      answerOptions: shuffledAnswerOptions[0]
    });
  }

  shuffleArray(array) {
    var currentIndex = array.length, temporaryValue, randomIndex;

    // While there remain elements to shuffle...
    while (0 !== currentIndex) {

      // Pick a remaining element...
      randomIndex = Math.floor(Math.random() * currentIndex);
      currentIndex -= 1;

      // And swap it with the current element.
      temporaryValue = array[currentIndex];
      array[currentIndex] = array[randomIndex];
      array[randomIndex] = temporaryValue;
    }

    return array;
  };

  handleAnswerSelected(event) {
    this.setUserAnswer(event.currentTarget.value);

    if (this.state.questionId < quizQuestions.length) {
        setTimeout(() => this.setNextQuestion(), 300);
    } else {
        setTimeout(() => this.setResults(this.getResults()), 300);
    }
  }

  setUserAnswer(answer) {
    const updatedAnswersCount = update(this.state.answersCount, {
      [answer]: {$apply: (currentValue) => currentValue + 1}
    });

    this.setState({
        answersCount: updatedAnswersCount,
        answer: answer
    });
  }

  setNextQuestion() {
    const counter = this.state.counter + 1;
    const questionId = this.state.questionId + 1;

    this.setState({
        counter: counter,
        questionId: questionId,
        question: quizQuestions[counter].question,
        answerOptions: quizQuestions[counter].answers,
        answer: ''
    });
  }

  getResults() {
    const answersCount = this.state.answersCount;
    const answersCountKeys = Object.keys(answersCount);
    const answersCountValues = answersCountKeys.map((key) => answersCount[key]);
    const maxAnswerCount = Math.max.apply(null, answersCountValues);

    return answersCountKeys.filter((key) => answersCount[key] === maxAnswerCount);
  }

  setResults(result) {
    if (result.length === 1) {
      this.setState({ result: result[0] });
    } else {
      this.setState({ result: 'Undetermined' });
    }
  }

  renderQuiz() {
    return (
      <Quiz
        answer={this.state.answer}
        answerOptions={this.state.answerOptions}
        questionId={this.state.questionId}
        question={this.state.question}
        questionTotal={quizQuestions.length}
        onAnswerSelected={this.handleAnswerSelected}
      />
    );
  }

  renderResult() {
    return (
      <Result quizResult={this.state.result} />
    );
  }

  render() {
    if(this.state.result) {
      return (
      <div className="rows">
        <div className="third-screen">
        <img src={require("./api/result1.png")} className="planeicon" />
        </div>
        <div className="two-third-screen">
          <div className="some-vertical-screen">
            <img src={require("./api/result3.png")} className="planeicon" />
          </div>
          <div className="other-vertical-screen">
            <div className="rows">
              <div className="one-third-screen text-align-please">
                
                  <a href={"http://www.edwardhk.com/tandc.pdf"} target="_blank">Save a copy<img src={require("./api/save.png")} className="download-icon" /> </a>
              </div>
              <div className="one-third-screen"></div>
              <div className="one-third-screen text-align-please">
              <a href={"https://demo.paypal.com/us/demo/navigation?merchant=paypalBt&page=shipping"}  className="btn btn-primary" >Pay Now</a>
              </div>
            </div>
          </div>
        </div>
      </div>);
    } else {
      return (
      <div className="rows">
      <div className="half-screen alignCentre">
        <img src={require("./api/question3.png")} className="planeicon" />
      </div>
      <div className="App half-screen">
        {this.state.result ? this.renderResult() : this.renderQuiz()}
      </div>
      </div>);
    }
  }

}

export default ModalApp;