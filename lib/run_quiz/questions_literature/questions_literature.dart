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
    "Who wrote the novel 'Pride and Prejudice'?",
    "options": ['Jane Austen', 'Charles Dickens', 'Leo Tolstoy', 'Mark Twain'],
    "answer_index": 0,
  },
  {
    "id": 2,
    "question":
    "Which Shakespeare play features the characters Romeo and Juliet?",
    "options": ['Macbeth', 'Hamlet', 'Othello', 'Romeo and Juliet'],
    "answer_index": 3,
  },
  {
    "id": 3,
    "question":
    "Which American author wrote the novel 'The Great Gatsby'?",
    "options": ['Ernest Hemingway', 'F. Scott Fitzgerald', 'Mark Twain', 'John Steinbeck'],
    "answer_index": 1,
  },
  {
    "id": 4,
    "question":
    "In George Orwell's '1984', what is the ruling party's slogan?",
    "options": ['Freedom is Slavery', 'War is Peace', 'Ignorance is Strength', 'All of the above'],
    "answer_index": 2,
  },
  {
    "id": 5,
    "question":
    "Who is the author of the play 'Romeo and Juliet'?",
    "options": ['William Shakespeare', 'Oscar Wilde', 'Charles Dickens', 'Jane Austen'],
    "answer_index": 0,
  },
  {
    "id": 6,
    "question":
    "Which classic novel is set in the fictional Maycomb County?",
    "options": ['Moby-Dick', 'To Kill a Mockingbird', 'War and Peace', 'The Catcher in the Rye'],
    "answer_index": 1,
  },
  {
    "id": 7,
    "question":
    "Which novel tells the story of a ship captain's obsessive quest for a white whale?",
    "options": ['Moby-Dick', 'Treasure Island', 'The Old Man and the Sea', 'The Little Mermaid'],
    "answer_index": 0,
  },
  {
    "id": 8,
    "question":
    "In J.R.R. Tolkien's 'The Lord of the Rings', what is the name of the powerful object the characters seek?",
    "options": ['The Golden Fleece', 'The Sword in the Stone', 'The One Ring', 'The Philosopher\'s Stone'],
    "answer_index": 2,
  },
  {
    "id": 9,
    "question":
    "Which author is known for writing the 'Harry Potter' series?",
    "options": ['J.R.R. Tolkien', 'J.K. Rowling', 'George Orwell', 'C.S. Lewis'],
    "answer_index": 1,
  },
  {
    "id": 10,
    "question":
    "Which Shakespearean tragedy features the character Macbeth?",
    "options": ['Hamlet', 'Othello', 'Macbeth', 'King Lear'],
    "answer_index": 2,
  },
];
