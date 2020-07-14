package lk.ac.cmb.ucsc.LibraryManagement.time;

import org.springframework.stereotype.Component;

import java.text.ParseException;
import java.util.Calendar;

@Component("ClockService")
public interface ClockService {

    /**
     * @return Gets the calendar instance.
     */
    Calendar getCalendar();

    /**
     *
     * @param dateStr The date representation
     * @throws ParseException Parse-Exception
     */
    void setCalendar(String dateStr) throws ParseException;

    /**
     * resets the calendar.
     */
    void resetCalendar();

    /**
     * displays the current time.
     */
    void displayCurrentTime();
}
