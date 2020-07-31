package com.htx.model;

import java.util.Objects;

/**
 * @Description TODO
 * @ClassName: Book
 * @Author: htx
 * @Date: Created in 22:53 2020/6/19
 * @Version 1.0
 */
public class Book {

    private int bookId;
    private String bookName;
    private float price;
    private int stock;
    private String author;
    private String BookImg;

    public Book() {
    }

    public Book(String bookName, float price, int stock, String author, String bookImg) {
        this.bookName = bookName;
        this.price = price;
        this.stock = stock;
        this.author = author;
        BookImg = bookImg;
    }

    public int getBookId() {
        return bookId;
    }

    public void setBookId(int bookId) {
        this.bookId = bookId;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getBookImg() {
        return BookImg;
    }

    public void setBookImg(String bookImg) {
        BookImg = bookImg;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Book book = (Book) o;
        return bookId == book.bookId &&
                Float.compare(book.price, price) == 0 &&
                stock == book.stock &&
                Objects.equals(bookName, book.bookName) &&
                Objects.equals(author, book.author) &&
                Objects.equals(BookImg, book.BookImg);
    }

    @Override
    public int hashCode() {
        return Objects.hash(bookId, bookName, price, stock, author, BookImg);
    }

    @Override
    public String toString() {
        return "Book{" +
                "bookId=" + bookId +
                ", bookName='" + bookName + '\'' +
                ", price=" + price +
                ", stock=" + stock +
                ", author='" + author + '\'' +
                ", BookImg='" + BookImg + '\'' +
                '}';
    }
}
