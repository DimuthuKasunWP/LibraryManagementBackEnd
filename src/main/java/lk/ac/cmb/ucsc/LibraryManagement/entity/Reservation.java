package lk.ac.cmb.ucsc.LibraryManagement.entity;

import javax.persistence.*;

@Entity
public class Reservation {

    @Id
    @GeneratedValue
    private int id;
    private String userName;
    private String email;
    private String date;
    private String validPeriod;
    @ManyToOne
    @JoinColumn(name = "BOOK", nullable = false)
    private Book book;

    public Reservation() {
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getValidPeriod() {
        return validPeriod;
    }

    public void setValidPeriod(String validPeriod) {
        this.validPeriod = validPeriod;
    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    @Override
    public String toString() {
        return "Reservation{" +
                "id=" + id +
                ", userName='" + userName + '\'' +
                ", email='" + email + '\'' +
                ", date='" + date + '\'' +
                ", validPeriod='" + validPeriod + '\'' +
                ", book=" + book.toString() +
                '}';
    }
}

