package lk.ac.cmb.ucsc.LibraryManagement.controller;



import lk.ac.cmb.ucsc.LibraryManagement.dto.BookDTO;
import lk.ac.cmb.ucsc.LibraryManagement.entity.Book;
import lk.ac.cmb.ucsc.LibraryManagement.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
//import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/v1/")
public class BookController {

    private final BookService bookService;

    @Autowired
    public BookController(BookService bookService) {
        this.bookService = bookService;
    }


    @PostMapping(path = "/addBook", consumes = "application/json", produces = "application/json")
    public Book addNewBook(@RequestBody BookDTO book){
        System.out.println("this is writer"+book.getWriter());
        try{
            return bookService.saveBook(book);
        }catch (Exception exception){
            exception.printStackTrace();
            return null;
        }

    }


    @GetMapping(path="/getAllBooks" , produces = "application/json")
    public ResponseEntity<List<Book>> getAllBooks(){
        try {
          HttpHeaders responseHeaders = new HttpHeaders();
            responseHeaders.set("Access-Control-Allow-Origin", "http://localhost:8080");
            responseHeaders.set("Access-Control-Allow-Methods", "POST");
//            responseHeaders.set("Access-Control-Allow-Headers", "Content-Type");
            responseHeaders.set("Vary", "Origin");
            responseHeaders.set("Access-Control-Max-Age", "86400");
            List<Book> books= bookService.getAllBooks();
            return ResponseEntity.ok().headers(responseHeaders).body(books);
        } catch (Exception exception){
        exception.printStackTrace();
        return null;
    }
    }
    @GetMapping(path="/getBookByNW" , produces = "application/json")
    public List<Book> getBookByNameAndWriter(String bookName, String writer){
        try {
            return bookService.getBookByNameandWriter(bookName,writer);
        } catch (Exception exception){
            exception.printStackTrace();
            return null;
        }
    }
    @GetMapping(path="/getBookByN" , produces = "application/json")
    public List<Book> getBookByName(String bookName){
        try {
            return bookService.getBookByName(bookName);
        } catch (Exception exception){
            exception.printStackTrace();
            return null;
        }
    }
    @PutMapping(path = "/updateBook",consumes = "application/json" ,produces = "application/json")
    public Book updateBook(@RequestBody Book book){
        System.out.println("this is writer"+book.getWriter());
        try{
            return bookService.updateBook(book);
        }catch (Exception exception){
            exception.printStackTrace();
            return null;
        }

    }

 @DeleteMapping(path="/deleteBook",consumes = "application/json" ,produces = "application/json")
    public boolean delete(@RequestBody Book book){
        try{
            return bookService.deleteBook(book);
        }catch (Exception exception){
            exception.printStackTrace();
            return false;
        }

    }

}
