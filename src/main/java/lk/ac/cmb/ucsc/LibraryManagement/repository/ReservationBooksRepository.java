package lk.ac.cmb.ucsc.LibraryManagement.repository;

import lk.ac.cmb.ucsc.LibraryManagement.entity.ReservedBooks;
import org.springframework.data.repository.CrudRepository;

public interface ReservationBooksRepository extends CrudRepository<ReservedBooks,Long> {
}
