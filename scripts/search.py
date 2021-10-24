import os
import csv
import re

# get the search word
# print('Please enter book name you want to search.')
bookSearchWord = input('Please enter book name you want to search.\n')

print("Search results are below with search word: " + bookSearchWord)

## to refer to paths regardless of the script location.
booksPath = os.path.join(os.path.dirname(__file__), '../db/books.csv')
# https://docs.python.org/3/library/csv.html
with open(booksPath, 'r') as csvfile:
  reader = csv.DictReader(csvfile)
  for row in reader:
    bookName = row["book_name"]
    area = row["area"]
    if re.search(bookSearchWord, bookName):
      print('Book name: '+ bookName +', Area: '+ area)
