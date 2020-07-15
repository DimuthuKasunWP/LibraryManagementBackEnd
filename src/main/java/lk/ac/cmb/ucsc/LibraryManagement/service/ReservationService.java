package lk.ac.cmb.ucsc.LibraryManagement.service;



import com.google.common.collect.Lists;
import lk.ac.cmb.ucsc.LibraryManagement.entity.Book;
import lk.ac.cmb.ucsc.LibraryManagement.entity.Reservation;
import lk.ac.cmb.ucsc.LibraryManagement.repository.BookRepository;
import lk.ac.cmb.ucsc.LibraryManagement.repository.ReservationBooksRepository;
import lk.ac.cmb.ucsc.LibraryManagement.repository.ReservationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ReservationService {

    @Autowired
    private ReservationRepository reservationRepository;

    @Autowired
    private BookRepository booksRepository;

    public Reservation reserveBook(Reservation reservation){
        return reservationRepository.save(reservation);
    }

    public List<Reservation> getReservationByUserEmailAndBookNameAndWriter(String email,String bookname,String writer){
        Book book=booksRepository.findByBookNameAndWriter(bookname,writer).get(0);
        return reservationRepository.findByEmailAndBook(email,book);
    }
    public List<Reservation> getAllReservations(){
        return Lists.newArrayList(reservationRepository.findAll());
    }
    
    public Reservation updateReservation(Reservation reservation){
        Optional<Reservation> byId =    reservationRepository.findById(reservation.getId());
        Reservation retrieved=byId.get();
        reservation.setId(retrieved.getId());
        return reservationRepository.save(reservation);
    }

    public boolean deleteReservation(Reservation reservation){
        try{
            reservationRepository.delete(reservation);
            return true;
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }



}
