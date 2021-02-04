package com.nwavguy.test;

import com.nwavguy.pojo.Book;
import com.nwavguy.pojo.Page;
import com.nwavguy.service.BookService;
import com.nwavguy.service.impl.BookServiceImpl;
import org.junit.Test;

import java.math.BigDecimal;

import static org.junit.Assert.*;

public class BookServiceTest {

    private BookService bookService = new BookServiceImpl();

    @Test
    public void addBook() {
        bookService.addBook(new Book(null, "guogezaishou", "1125", new BigDecimal(1000000), 10000, 0, null));
    }

    @Test
    public void deleteBookById() {
        bookService.deleteBookById(23);
    }

    @Test
    public void updateBook() {
        bookService.updateBook(new Book(23, "shehuiwoguoge", "1125", new BigDecimal(1000000), 10000, 0, null));
    }

    @Test
    public void queryBookByID() {
        System.out.println(bookService.queryBookByID(23));
    }

    @Test
    public void queryBooks() {
        for (Book queryBook : bookService.queryBooks()) {
            System.out.println(queryBook);
        }
    }

    @Test
    public void page() {
        System.out.println(bookService.page(2, Page.PAGE_SIZE));
    }
}