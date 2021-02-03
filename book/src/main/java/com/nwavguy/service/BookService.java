package com.nwavguy.service;

import com.nwavguy.pojo.Book;

import java.util.List;

public interface BookService {

    public void addBook(Book book);

    public void deleteBookById(Integer id);

    public void updateBook(Book book);

    public Book queryBookByID(Integer id);

    public List<Book> queryBooks();
}
