# Backend
## Returned json format of `get_quiz.php`

For demo purpose, there will be in total 10 stories, for each story, it contains 1 question and 4 options.
```json
{
  "contract": "Contract content (utf-8 encoded)",
  "story_0": {
    "question": "Question?",
    "options": [
      "Option 1.",
      "Option 2.",
      "Option 3.",
      "Option 4."
    ]
  }
}
```