package lk.ac.cmb.ucsc.LibraryManagement.service;



import com.google.common.collect.Lists;
import lk.ac.cmb.ucsc.LibraryManagement.dto.ReservationDTO;
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

    private  ReservationRepository reservationRepository;

    private BookRepository booksRepository;

    @Autowired
    public ReservationService(ReservationRepository reservationRepository,BookRepository booksRepository) {
        this.reservationRepository = reservationRepository;
        this.booksRepository=booksRepository;
    }



    public Reservation reserveBook(ReservationDTO reservation){
        Book book = booksRepository.findByBookNameAndWriter(reservation.getBookName(),reservation.getWriter()).get(0);
        Reservation entity= new Reservation();
        System.out.println("reserve book "+book.toString());
        entity.setBook(book);
        entity.setId(reservation.getId());
        entity.setDate(reservation.getDate());
        entity.setEmail(reservation.getEmail());
        entity.setUserName(reservation.getUserName());
        entity.setValidPeriod(reservation.getValidPeriod());
        return reservationRepository.save(entity);
    }

    public List<Reservation> getReservationByUserEmailAndBookNameAndWriter(String email,String bookname,String writer){
        Book book=booksRepository.findByBookNameAndWriter(bookname,writer).get(0);
        return reservationRepository.findByEmailAndBook(email,book);
    }
    public List<Reservation> getAllReservations(){
        return Lists.newArrayList(reservationRepository.findAll());
    }
    
    public Reservation updateReservation(ReservationDTO reservation){
        Book book = booksRepository.findByBookNameAndWriter(reservation.getBookName(),reservation.getWriter()).get(0);
        Reservation entity= new Reservation();
        System.out.println("reserve book "+book.toString());
        entity.setBook(book);
        entity.setId(reservation.getId());
        entity.setDate(reservation.getDate());
        entity.setEmail(reservation.getEmail());
        entity.setUserName(reservation.getUserName());
        entity.setValidPeriod(reservation.getValidPeriod());
        return reservationRepository.save(entity);
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
