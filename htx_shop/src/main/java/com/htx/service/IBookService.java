package com.htx.service;

import com.htx.model.Book;

import java.util.List;

/**
 * @Description TODO
 * @ClassName: IBookService
 * @Author: htx
 * @Date: Created in 0:48 2020/6/20
 * @Version 1.0
 */
public interface IBookService {

    public List<Book> findBookAll();

    public Book findBookById(int bookId);

    public boolean saveBook(Book book);

    public boolean deleteBook(int bookId);

    public boolean updateBook(Book book);

    public List<Book> findByBookName(String bookName);

}
