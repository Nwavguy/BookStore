package com.nwavguy.service.impl;

import com.nwavguy.dao.BookDao;
import com.nwavguy.dao.impl.BookDaoImpl;
import com.nwavguy.pojo.Book;
import com.nwavguy.pojo.Page;
import com.nwavguy.service.BookService;

import java.util.List;

public class BookServiceImpl implements BookService {

    private BookDao bookDao = new BookDaoImpl();

    @Override
    public void addBook(Book book) {
        bookDao.addBook(book);
    }

    @Override
    public void deleteBookById(Integer id) {
        bookDao.deleteBookByID(id);
    }

    @Override
    public void updateBook(Book book) {
        bookDao.updateBook(book);
    }

    @Override
    public Book queryBookByID(Integer id) {
        return bookDao.queryBookById(id);
    }

    @Override
    public List<Book> queryBooks() {
        return bookDao.queryBooks();
    }

    @Override
    public Page<Book> page(int pageNo, int pageSize) {
        Page<Book> page = new Page<Book>();

        page.setPageNo(pageNo);
        page.setPageSize(pageSize);

        // calculate and set pageTotalCOunt
        Integer pageTotalCount = bookDao.queryForPageTotalCount();
        page.setPageTotalCount(pageTotalCount);

        Integer pageTotal = pageTotalCount / pageSize;
        if (pageTotalCount % pageSize > 0) {
            pageTotal += 1;
        }

        page.setPageTotal(pageTotal);

        int begin = (page.getPageNo() - 1) * pageSize;
        // get and set the current page records
        List<Book> items = bookDao.queryForPageItems(begin, pageSize);
        page.setItems(items);

        return page;
    }
}
