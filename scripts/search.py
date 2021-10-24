import os
import csv
import re

# get the search word
# print('Please enter book name you want to search.')
bookSearchWord = input('Please enter book name you want to search.\n')

print("Search results are below with search word: " + bookSearchWord)

# to refer to paths regardless of the script location.
booksPath = os.path.join(os.path.dirname(__file__), '../db/books.csv')

# Please implement below to behave same to shell script.
# You can refer the document here:
# https://docs.python.org/3/library/csv.html
# It is simple that it opens using csv as below.
# with open(booksPath, 'r') as csvfile:
# ...
