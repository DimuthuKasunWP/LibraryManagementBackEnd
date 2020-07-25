package lk.ac.cmb.ucsc.LibraryManagement.dto;

public class ReservationDTO {

    private int id;
    private String userName;
    private String email;
    private String date;
    private String validPeriod;
    private String bookName;
    private String writer;

    public ReservationDTO(int id, String userName, String email, String date, String validPeriod, String bookName, String writer) {
        this.id = id;
        this.userName = userName;
        this.email = email;
        this.date = date;
        this.validPeriod = validPeriod;
        this.bookName = bookName;
        this.writer = writer;
    }

    public ReservationDTO() {
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

    @Override
    public String toString() {
        return "ReservationDTO{" +
                "id=" + id +
                ", userName='" + userName + '\'' +
                ", email='" + email + '\'' +
                ", date='" + date + '\'' +
                ", validPeriod='" + validPeriod + '\'' +
                ", bookName='" + bookName + '\'' +
                ", writer='" + writer + '\'' +
                '}';
    }
}
