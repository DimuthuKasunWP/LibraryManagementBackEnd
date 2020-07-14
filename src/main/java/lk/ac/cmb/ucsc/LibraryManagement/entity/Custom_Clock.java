package lk.ac.cmb.ucsc.LibraryManagement.entity;

import org.springframework.stereotype.Component;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;


@Component("Custom_Clock")
public class Custom_Clock {

    Calendar calendar = new GregorianCalendar();


    public Custom_Clock() {
        calendar = Calendar.getInstance();
    }

    public Calendar getCalendar() {
        return calendar;
    }

    public void setCalendar(String dateStr) throws ParseException {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/M/dd hh:mm");
        Date date = sdf.parse(dateStr);

        calendar.setTime(date);
    }

    public void resetCalendar() {
        calendar = Calendar.getInstance();
    }
}
