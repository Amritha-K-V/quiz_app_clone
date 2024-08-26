
class QuizDatabase {
  // static List questions = [
  //   {
  //     "question": "What is the capital of France?",
  //     "options": ["Berlin", "Madrid", "Paris", "Rome"],
  //     "answer": 2, // Index of the correct answer ("Paris")
  //   },
  //   {
  //     "question": "Which planet is known as the Red Planet?",
  //     "options": ["Earth", "Mars", "Jupiter", "Saturn"],
  //     "answer": 1, // Index of the correct answer ("Mars")
  //   },
  //   {
  //     "question": "What is the largest ocean on Earth?",
  //     "options": [
  //       "Atlantic Ocean",
  //       "Indian Ocean",
  //       "Arctic Ocean",
  //       "Pacific Ocean"
  //     ],
  //     "answer": 3, // Index of the correct answer ("Pacific Ocean")
  //   },
  //   {
  //     "question": "Who wrote 'To Kill a Mockingbird'?",
  //     "options": [
  //       "Harper Lee",
  //       "Mark Twain",
  //       "Ernest Hemingway",
  //       "F. Scott Fitzgerald"
  //     ],
  //     "answer": 0, // Index of the correct answer ("Harper Lee")
  //   },
  //   {
  //     "question": "What is the chemical symbol for gold?",
  //     "options": ["Au", "Ag", "Pb", "Fe"],
  //     "answer": 0, // Index of the correct answer ("Au")
  //   },
  //   {
  //     "question": "What year did the Titanic sink?",
  //     "options": ["1912", "1905", "1898", "1923"],
  //     "answer": 0, // Index of the correct answer ("1912")
  //   },
  //   {
  //     "question": "Who painted the Mona Lisa?",
  //     "options": [
  //       "Vincent Van Gogh",
  //       "Pablo Picasso",
  //       "Leonardo da Vinci",
  //       "Claude Monet"
  //     ],
  //     "answer": 2, // Index of the correct answer ("Leonardo da Vinci")
  //   },
  //   {
  //     "question": "What is the hardest natural substance on Earth?",
  //     "options": ["Gold", "Iron", "Diamond", "Platinum"],
  //     "answer": 2, // Index of the correct answer ("Diamond")
  //   },
  //   {
  //     "question": "How many continents are there on Earth?",
  //     "options": ["5", "6", "7", "8"],
  //     "answer": 2, // Index of the correct answer ("7")
  //   },
  //   {
  //     "question": "What is the largest mammal in the world?",
  //     "options": [
  //       "African Elephant",
  //       "Blue Whale",
  //       "Giraffe",
  //       "Great White Shark"
  //     ],
  //     "answer": 1, // Index of the correct answer ("Blue Whale")
  //   },
  // ];

 static List categorylist = [
  {
    "name": "sports",
    "list": [
      {
        "questions": "Which country won the FIFA World Cup in 2018?",
        "answers": 2, // Index of the correct option in the list below
        "options": [
          "Germany",
          "Brazil",
          "France", // Correct answer
          "Argentina"
        ]
      },
      {
        "questions": "How many players are there in a soccer team?",
        "answers": 2, // Index of the correct option in the list below
        "options": [
          "9",
          "10",
          "11", // Correct answer
          "12"
        ]
      }
    ]
  },
  {
    "name": "science",
    "list": [
      {
        "questions": "What is the chemical symbol for water?",
        "answers": 0, // Index of the correct option in the list below
        "options": [
          "H2O", // Correct answer
          "O2",
          "CO2",
          "NaCl"
        ]
      },
      {
        "questions": "What planet is known as the Red Planet?",
        "answers": 1, // Index of the correct option in the list below
        "options": [
          "Earth",
          "Mars", // Correct answer
          "Jupiter",
          "Saturn"
        ]
      }
    ]
  },
  {
    "name": "history",
    "list": [
      {
        "questions": "Who was the first President of the United States?",
        "answers": 2, // Index of the correct option in the list below
        "options": [
          "Thomas Jefferson",
          "Abraham Lincoln",
          "George Washington", // Correct answer
          "John Adams"
        ]
      },
      {
        "questions": "In which year did the Titanic sink?",
        "answers": 1, // Index of the correct option in the list below
        "options": [
          "1905",
          "1912", // Correct answer
          "1915",
          "1920"
        ]
      }
    ]
  },
  {
    "name": "geography",
    "list": [
      {
        "questions": "What is the capital of Japan?",
        "answers": 2, // Index of the correct option in the list below
        "options": [
          "Beijing",
          "Seoul",
          "Tokyo", // Correct answer
          "Shanghai"
        ]
      },
      {
        "questions": "Which river is the longest in the world?",
        "answers": 1, // Index of the correct option in the list below
        "options": [
          "Amazon",
          "Nile", // Correct answer
          "Yangtze",
          "Mississippi"
        ]
      }
    ]
  },
  {
    "name": "entertainment",
    "list": [
      {
        "questions": "Which movie won the Oscar for Best Picture in 1994?",
        "answers": 1, // Index of the correct option in the list below
        "options": [
          "Pulp Fiction",
          "Forrest Gump", // Correct answer
          "Shawshank Redemption",
          "Lion King"
        ]
      },
      {
        "questions": "Who is known as the King of Pop?",
        "answers": 1, // Index of the correct option in the list below
        "options": [
          "Elvis Presley",
          "Michael Jackson", // Correct answer
          "Prince",
          "Madonna"
        ]
      }
    ]
  }
];

}
