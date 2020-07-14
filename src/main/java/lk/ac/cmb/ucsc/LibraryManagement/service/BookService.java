package lk.ac.cmb.ucsc.LibraryManagement.service;


import lk.ac.cmb.ucsc.LibraryManagement.repository.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookService {

    @Autowired
    private BookRepository bookRepository;
}
