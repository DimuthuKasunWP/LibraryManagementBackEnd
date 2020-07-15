package lk.ac.cmb.ucsc.LibraryManagement.entity;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class ReservedBooks {
    @Id
    @GeneratedValue
    private Long id;
    private String bookName;
    private String writer;

    public ReservedBooks() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public String getwriter() {
        return writer;
    }

    public void setwriter(String writer) {
        this.writer = writer;
    }

    @Override
    public String toString() {
        return "ReservedBooks{" +
                "id=" + id +
                ", bookName='" + bookName + '\'' +
                ", writer='" + writer + '\'' +
                '}';
    }
}
