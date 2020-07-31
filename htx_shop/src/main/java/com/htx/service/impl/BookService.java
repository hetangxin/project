package com.htx.service.impl;

import com.htx.dao.BookDao;
import com.htx.model.Book;
import com.htx.service.IBookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Description TODO
 * @ClassName: BookService
 * @Author: htx
 * @Date: Created in 0:55 2020/6/20
 * @Version 1.0
 */
@Service
public class BookService implements IBookService {

    @Autowired
    private BookDao bookDao;


    @Override
    public List<Book> findBookAll() {
        return bookDao.findAll();
    }

    @Override
    public Book findBookById(int bookId) {
        return bookDao.findById(bookId);
    }

    @Override
    public boolean saveBook(Book book) {
        Book temp = bookDao.findById(book.getBookId());
        if(temp == null) {
            bookDao.save(book);
            return true;
        }
        return false;
    }

    @Override
    public boolean deleteBook(int bookId) {
        Book temp = bookDao.findById(bookId);
        if(temp != null) {
            bookDao.delete(bookId);
            return true;
        }
        return false;
    }

    @Override
    public boolean updateBook(Book book) {
        Book temp = bookDao.findById(book.getBookId());
        bookDao.update(book);
        return true;
    }

    @Override
    public List<Book> findByBookName(String bookName) {
        return bookDao.findByName(bookName);
    }
}
