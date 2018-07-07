For demo purposes:

Quiz server:

////////////////////////////////
// Testing connection
////////////////////////////////
Query:
    GET '/'

Example:
    http://0.0.0.0:4000/     (change 0.0.0.0 to whatever IP server is on)

Response:
    'hello from the quiz server'

////////////////////////////////
// Adding Quiz
////////////////////////////////

Query:
    POST '/quiz'

JSON:

    {
        "token": "thisisatoken",
        "quizzes": [{
            "question": "ThisIsQuestionNumber1",
            "options": ["ThisIsOption1", "ThisIsOption2"]
        }, {
            "question": "ThisIsQuestionNumber2",
            "options": ["ThisIsOption3", "ThisIsOption4"]
        }],
        "contract": "thisisacontract"
    }

Example:
    http://0.0.0.0:4000/quiz

Response:
    'successfully added product' or Error
