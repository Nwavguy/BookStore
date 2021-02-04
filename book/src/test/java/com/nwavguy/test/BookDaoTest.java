package com.nwavguy.test;

import com.nwavguy.dao.BookDao;
import com.nwavguy.dao.impl.BookDaoImpl;
import com.nwavguy.pojo.Book;
import com.nwavguy.pojo.Page;
import org.junit.Test;

import java.math.BigDecimal;
import java.util.List;

import static org.junit.Assert.*;

public class BookDaoTest {

    private BookDao bookDao = new BookDaoImpl();
    @Test
    public void addBook() {
        bookDao.addBook(new Book(null, "book1", "author1", new BigDecimal(9999), 1100000, 0, null));
    }

    @Test
    public void deleteBookByID() {
        bookDao.deleteBookByID(22);
    }

    @Test
    public void updateBook() {
        bookDao.updateBook(new Book(22, "book2", "author1", new BigDecimal(9999), 1100000, 0, null));
    }

    @Test
    public void queryBookById() {
        System.out.println(bookDao.queryBookById(22));
    }

    @Test
    public void queryBooks() {
        for (Book queryBook: bookDao.queryBooks()) {
            System.out.println(queryBook);
        }
    }

    @Test
    public void queryForPageTotalCount() {
        System.out.println(bookDao.queryForPageTotalCount());
    }

    @Test
    public void queryForPageItems() {
        for (Book book : bookDao.queryForPageItems(8, Page.PAGE_SIZE)) {
            System.out.println(book);
        }
    }
}