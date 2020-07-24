package lk.ac.cmb.ucsc.LibraryManagement.controller;



import lk.ac.cmb.ucsc.LibraryManagement.entity.Reservation;
import lk.ac.cmb.ucsc.LibraryManagement.service.ReservationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
@RequestMapping("/api/v1/")
public class ReservationController {


    private final ReservationService reservationService;

    @Autowired
    public ReservationController(ReservationService reservationService) {
        this.reservationService = reservationService;
    }

    @PostMapping(path = "/reserveBook", consumes = "application/json", produces = "application/json")
    public Reservation newReservation(@RequestBody Reservation reservation){
        try{
            return reservationService.reserveBook(reservation);
        }catch (Exception exception){
            exception.printStackTrace();
            return null;
        }

    }

    @GetMapping(path="/getReservations" , produces = "application/json")
    public List<Reservation> getAllReservations(){
        try {
            return reservationService.getAllReservations();
        } catch (Exception exception){
            exception.printStackTrace();
            return null;
        }
    }

    @GetMapping(path="/getReservationByENW" , produces = "application/json")
    public List<Reservation> getReservationByEmailNameWriterName(@RequestParam("email") String email, @RequestParam("name") String bookname,@RequestParam("writer") String writer){
        try {
            return reservationService.getReservationByUserEmailAndBookNameAndWriter(email,bookname,writer);
        } catch (Exception exception){
            exception.printStackTrace();
            return null;
        }
    }
    @PutMapping(path = "/updateReservation",consumes = "application/json" ,produces = "application/json")
    public Reservation updateBook(@RequestBody Reservation reservation){
        try{
            return reservationService.updateReservation(reservation);
        }catch (Exception exception){
            exception.printStackTrace();
            return null;
        }

    }

    @DeleteMapping(path="/deleteReservation",consumes = "application/json" ,produces = "application/json")
    public boolean deleteReservation(@RequestParam String id){
        try{
            Reservation reservation=new Reservation();
            reservation.setId(Integer.parseInt(id));
            return reservationService.deleteReservation(reservation);
        }catch (Exception exception){
            exception.printStackTrace();
            return false;
        }

    }

}
