package lk.ac.cmb.ucsc.LibraryManagement.repository;

import lk.ac.cmb.ucsc.LibraryManagement.entity.Book;
import lk.ac.cmb.ucsc.LibraryManagement.entity.Reservation;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface ReservationRepository extends CrudRepository<Reservation,Integer> {

    public List<Reservation> findByEmailAndBook(String email, Book book);
}
