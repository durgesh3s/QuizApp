class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question(
      {required this.id,
      required this.question,
      required this.answer,
      required this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question":
    "What is the value of x in the equation 3x + 7 = 22?",
    "options": ['5', '6', '7', '8'],
    "answer_index": 2,
  },
  {
    "id": 2,
    "question":
    "If a car travels at a constant speed of 60 kilometers per hour, how far will it travel in 40 minutes?",
    "options": ['20 km', '40 km', '45 km', '50 km'],
    "answer_index": 1,
  },
  {
    "id": 3,
    "question":
    "If the area of a square is 81 square units, what is the length of one of its sides?",
    "options": ['6 units', '9 units', '10 units', '12 units'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question":
    "Solve for y: 2y - 5 = 11",
    "options": ['3', '6', '8', '9'],
    "answer_index": 1,
  },
  {
    "id": 5,
    "question":
    "What is the result of 4² + 3²?",
    "options": ['16', '25', '32', '34'],
    "answer_index": 1,
  },
  {
    "id": 6,
    "question":
    "If a triangle has angles measuring 45°, 45°, and 90°, what type of triangle is it?",
    "options": ['Equilateral triangle', 'Isosceles triangle', 'Scalene triangle', 'Right triangle'],
    "answer_index": 3,
  },
  {
    "id": 7,
    "question":
    "What is the square root of 144?",
    "options": ['9', '11', '12', '15'],
    "answer_index": 2,
  },
  {
    "id": 8,
    "question":
    "If a rectangle has a length of 8 units and a width of 5 units, what is its area?",
    "options": ['13 sq units', '25 sq units', '40 sq units', '56 sq units'],
    "answer_index": 2,
  },
  {
    "id": 9,
    "question":
    "What is 30% of 150?",
    "options": ['15', '45', '50', '60'],
    "answer_index": 3,
  },
  {
    "id": 10,
    "question":
    "If 3x + 5 = 20, what is the value of x?",
    "options": ['3', '5', '7', '8'],
    "answer_index": 1,
  },
];
