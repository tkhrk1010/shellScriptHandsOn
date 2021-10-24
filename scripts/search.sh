#!/bin/bash
set -euC
cd "$(dirname "$0")"

function search() {
  # get the search word
  echo 'Please enter book name you want to search.'
  read book_search_word

  # search books from db and show the result
  echo "Search results are below with search word: ${book_search_word}"
  awk -F',' 'NR!=1 && match($2, book_search_word) { print "Book name: " $2 ", Area: " $3 }' book_search_word=${book_search_word} ../db/books.csv
}
