const express = require('express');
const cors = require('cors');
const app = express();
const mysql = require('mysql');

var bodyParser = require('body-parser');
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

app.use(cors());

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'newrootpassword',
    database: 'quiz-db'
})

connection.connect(err => {
    if(err){
        return err;
    }
})

app.get('/', (req, res) => {
    res.send('hello from the quiz server')
})

app.get('/quiz', (req, res) => {
    const { token } = req.query;
    const GET_QUIZ_QUERY = `SELECT * FROM quizzes WHERE token = '${token}'`;
    res.setHeader('Content-Type', 'application/json');
    connection.query(GET_QUIZ_QUERY, (err, results) => {
        if(err) {
            console.log(err);
            return res.send(JSON.stringify({ error: 1 }));
        } else {
            if(results[0].taken) {
                return res.send(JSON.stringify({ error: 2 }));
            } else {
                quiztext = results[0].quiztext.split("$$");
                quiztext.shift();
                quizzesarray = [];
                for(var i = 0; i < quiztext.length; i++) {
                    quizarray = quiztext[0].split('||');
                    quizquestion = quizarray.shift();
                    quizzesarray.push({
                        question: quizquestion,
                        options: quizarray
                    })
                }
                return res.send(JSON.stringify({quizzes: quizzesarray, contract: results[0].contract}));
            }
        }
    });
})

app.get('/complete', (req, res) => {
    const { token } = req.query;
    const UPDATE_QUIZ_QUERY = `UPDATE quizzes SET taken='1' WHERE token = '${token}'`
    connection.query(UPDATE_QUIZ_QUERY, (err, results) => {
        if(err) {
            return res.send(err)
        } else {
            return res.send('successfully set quiz to completed');
        }
    })
})

app.post('/quiz', (req, res) => {
    var token = req.body.token;
    var quizzes = req.body.quizzes;
    var contract = req.body.contract;

    var quiztext = ""
    for(quiz in quizzes) {
        quiztext = quiztext + "$$" + quizzes[quiz].question;
        for(option in quizzes[quiz].options) {
            quiztext = quiztext + "||" + quizzes[quiz].options[option];
        }
    }
    const INSERT_QUIZ_QUERY = `INSERT INTO quizzes (quiztext, token, contract, taken) VALUES ('${quiztext}', '${token}', '${contract}', '0')`
    connection.query(INSERT_QUIZ_QUERY, (err, results) => {
        if(err) {
            return res.send(err)
        } else {
            return res.send('successfully added product');
        }
    })
})

app.listen(4000, '0.0.0.0', () => {
    console.log("Quiz server listening on port 4000");
})

