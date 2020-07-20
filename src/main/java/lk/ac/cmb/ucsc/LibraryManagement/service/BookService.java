package lk.ac.cmb.ucsc.LibraryManagement.service;


import lk.ac.cmb.ucsc.LibraryManagement.dto.BookDTO;
import lk.ac.cmb.ucsc.LibraryManagement.entity.Book;
import lk.ac.cmb.ucsc.LibraryManagement.repository.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.google.common.collect.Lists;

import java.util.List;

@Service
public class BookService {

    private final BookRepository bookRepository;

    @Autowired
    public BookService(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

    public List<Book>  findBooksByNameAndwriter(String name, String writer){
        return bookRepository.findByBookNameAndWriter(name,writer);
    }

    public  Book saveBook(BookDTO book){

        Book entity = new Book();
        entity.setBookName(book.getBookName());
        entity.setEdition(book.getEdition());
        entity.setIsbn(book.getIsbn());
        entity.setManufacturedYear(book.getManufacturedYear());
        entity.setPrice(book.getPrice());
        entity.setPublisher(book.getPublisher());
        entity.setWriter(book.getWriter());
        entity.setNum_of_copies(book.getNum_of_copies());

        return bookRepository.save(entity);
    }

    public List<Book> getAllBooks(){
        return Lists.newArrayList(bookRepository.findAll());
    }

    public List<Book> getBookByName(String bookName){
        return Lists.newArrayList(bookRepository.findByBookName(bookName));
    }
    public List<Book> getBookByNameandWriter(String bookName, String writer){
        return Lists.newArrayList(bookRepository.findByBookNameAndWriter(bookName,writer));
    }

    public Book updateBook(Book book){
        Book retriveBook= bookRepository.findByBookNameAndWriter(book.getBookName(),book.getWriter()).get(0);
        book.setId(retriveBook.getId());
        return bookRepository.save(book);
    }
    public boolean deleteBook(Book book){
        try{
            bookRepository.delete(book);
            return true;
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }

    }

}
