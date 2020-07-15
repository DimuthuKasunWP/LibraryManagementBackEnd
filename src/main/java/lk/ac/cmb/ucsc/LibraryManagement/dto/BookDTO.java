package lk.ac.cmb.ucsc.LibraryManagement.dto;

public class BookDTO {
    private int id;
    private String bookName;
    private String writer;
    private String isbn;
    private String edition;
    private double price;
    private String manufacturedYear;
    private int num_of_copies;
    private String publisher;

    public BookDTO() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public String getEdition() {
        return edition;
    }

    public void setEdition(String edition) {
        this.edition = edition;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getManufacturedYear() {
        return manufacturedYear;
    }

    public void setManufacturedYear(String manufacturedYear) {
        this.manufacturedYear = manufacturedYear;
    }

    public int getNum_of_copies() {
        return num_of_copies;
    }

    public void setNum_of_copies(int num_of_copies) {
        this.num_of_copies = num_of_copies;
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    @Override
    public String toString() {
        return "Book{" +
                "id=" + id +
                ", bookName='" + bookName + '\'' +
                ", writer='" + writer + '\'' +
                ", isbn='" + isbn + '\'' +
                ", edition='" + edition + '\'' +
                ", price='" + price + '\'' +
                ", manufacturedYear='" + manufacturedYear + '\'' +
                ", num_of_copies=" + num_of_copies +
                ", publisher='" + publisher + '\'' +
                '}';
    }
}
