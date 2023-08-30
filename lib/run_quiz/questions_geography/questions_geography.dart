class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({required this.id, required this.question, required this.answer, required this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question":
    "Which river is the longest in the world?",
    "options": ['Nile', 'Amazon', 'Yangtze', 'Mississippi'],
    "answer_index": 0,
  },
  {
    "id": 2,
    "question":
    "Which mountain is the highest peak on Earth?",
    "options": ['K2', 'Mount Everest', 'Kilimanjaro', 'Matterhorn'],
    "answer_index": 1,
  },
  {
    "id": 3,
    "question":
    "Which desert is the largest hot desert in the world?",
    "options": ['Sahara', 'Arabian Desert', 'Gobi Desert', 'Sonoran Desert'],
    "answer_index": 0,
  },
  {
    "id": 4,
    "question":
    "Which continent is known as the 'Land of the Rising Sun'?",
    "options": ['Europe', 'Australia', 'Asia', 'South America'],
    "answer_index": 2,
  },
  {
    "id": 5,
    "question":
    "What is the capital city of Brazil?",
    "options": ['São Paulo', 'Rio de Janeiro', 'Brasília', 'Salvador'],
    "answer_index": 2,
  },
  {
    "id": 6,
    "question":
    "Which famous waterfall is located on the border of Brazil and Argentina?",
    "options": ['Angel Falls', 'Victoria Falls', 'Niagara Falls', 'Iguazu Falls'],
    "answer_index": 3,
  },
  {
    "id": 7,
    "question":
    "Which ocean is the largest by both area and volume?",
    "options": ['Indian Ocean', 'Atlantic Ocean', 'Arctic Ocean', 'Pacific Ocean'],
    "answer_index": 3,
  },
  {
    "id": 8,
    "question":
    "Which country is known as the 'Land of the Rising Sun'?",
    "options": ['Japan', 'China', 'South Korea', 'Thailand'],
    "answer_index": 0,
  },
  {
    "id": 9,
    "question":
    "Which famous canal connects the Mediterranean Sea to the Red Sea?",
    "options": ['Panama Canal', 'Suez Canal', 'Kiel Canal', 'Erie Canal'],
    "answer_index": 1,
  },
  {
    "id": 10,
    "question":
    "Which country is the second largest by land area?",
    "options": ['China', 'United States', 'India', 'Russia'],
    "answer_index": 3,
  },
];
