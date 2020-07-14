package lk.ac.cmb.ucsc.LibraryManagement.repository;

import lk.ac.cmb.ucsc.LibraryManagement.entity.Reservation;
import org.springframework.data.repository.CrudRepository;

public interface ReservationRepository extends CrudRepository<Reservation,Integer> {
}
