package lk.ac.cmb.ucsc.LibraryManagement.service;



import lk.ac.cmb.ucsc.LibraryManagement.repository.ReservationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReservationService {

    @Autowired
    private ReservationRepository reservationRepository;
}
