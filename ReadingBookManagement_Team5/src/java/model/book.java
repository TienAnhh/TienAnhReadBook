/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Tien Anh
 */
public class book {
    int book_id;
    String book_titlle;
    String author;
    String brief;
    String publisher;
    String content;
    String category;

    public book(int book_id, String book_titlle, String author, String brief, String publisher, String content, String category) {
        this.book_id = book_id;
        this.book_titlle = book_titlle;
        this.author = author;
        this.brief = brief;
        this.publisher = publisher;
        this.content = content;
        this.category = category;
    }

    public int getBook_id() {
        return book_id;
    }

    public void setBook_id(int book_id) {
        this.book_id = book_id;
    }

    public String getBook_titlle() {
        return book_titlle;
    }

    public void setBook_titlle(String book_titlle) {
        this.book_titlle = book_titlle;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getBrief() {
        return brief;
    }

    public void setBrief(String brief) {
        this.brief = brief;
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
    
    
}
