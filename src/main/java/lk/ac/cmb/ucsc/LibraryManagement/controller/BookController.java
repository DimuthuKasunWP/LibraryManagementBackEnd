package lk.ac.cmb.ucsc.LibraryManagement.controller;


import lk.ac.cmb.ucsc.LibraryManagement.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/api/v1/")
public class BookController {

    @Autowired
    private BookService bookService;


}
