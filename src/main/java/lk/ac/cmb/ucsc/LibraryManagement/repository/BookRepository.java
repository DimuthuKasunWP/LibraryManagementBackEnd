package lk.ac.cmb.ucsc.LibraryManagement.repository;


import lk.ac.cmb.ucsc.LibraryManagement.entity.Book;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.Repository;

import java.util.List;

public interface BookRepository extends CrudRepository<Book,Integer> , Repository<Book,Integer> {

    public List<Book> findByBookNameAndWriter(String bookName,String writer);
    public List<Book> findByBookName(String bookName);


}
