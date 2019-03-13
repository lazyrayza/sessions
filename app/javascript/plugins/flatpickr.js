import flatpickr from "flatpickr" // Note this is important!
import "flatpickr/dist/themes/airbnb.css"
flatpickr("#booking_start_time", {
     enableTime: true,
    dateFormat: "Y-m-d H:i"
});
