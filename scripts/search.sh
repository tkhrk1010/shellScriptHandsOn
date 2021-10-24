#!/bin/bash

function search() {
  # get the search word
  echo 'Please enter book name you want to search.'
  read book_search_word

  # search books from db and show the result
  echo "Search results are below with search word: ${book_search_word}"

  local library_path='../db/books.csv'
  # skip header line
  sed 1d "${library_path}" | while IFS="," read -r id book_name area; do
    if [[ "${book_name}" =~ "${book_search_word}" ]]; then
      echo "Book name: ${book_name} , Area: ${area}"
    fi
  done

  # Ref: using awk, it can be written in one line
  # awk -F',' 'NR!=1 && match($2, book_search_word) { print "Book name: " $2 ", Area: " $3 }' book_search_word=${book_search_word} ../db/books.csv
}
