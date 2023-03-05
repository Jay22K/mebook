import 'package:flutter/foundation.dart';
import 'json_parser.dart';
import 'package:http/http.dart' as http;
import 'book_json_parser.dart';

const apiURL = 'https://mebookapi2.herokuapp.com/api';

class DataFetcher {
  DataFetcher({required this.query});

  final String query;
  Books booksData;
  BookParser bookData;

  Future booksData() async {
    String url = '$apiURL/default?query=$query';
    var response;
    try {
      response = await http.get(url);
    } catch (SocketException) {
      print(SocketException);
    }

    if (response.statusCode == 200) {
      parsedData = Parser.fromRawJson(response.body);
      return parsedData.books;
    } else {
      print(response.statusCode);
    }
  }

  Future bookDl(bookId) async {
    String url = '/$apiURL/book?id=$bookId';
    var response;
    try {
      response = await http.get(url);
    } catch (SocketException) {
      print(SocketException);
    }

    if (response.statusCode == 200) {
      bookData = BookParser.fromRawJson(response.body);
      return bookData.download;
    } else {
      print(response.statusCode);
    }
  }
}
