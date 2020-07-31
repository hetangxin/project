package com.htx.dao;

import com.htx.model.Book;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BookDao {
    public List<Book> findAll();
    public Book findById(int bookId);
    public void delete(int bookId);
    public void update(Book book);
    public void save(Book book);

    public List<Book> findByName(String bookName);

}
