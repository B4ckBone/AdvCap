#include <Date.au3>
#requireadmin
   $tNew = _Date_Time_EncodeSystemTime(7, 2, 2015)
   _Date_Time_SetSystemTime(DllStructGetPtr($tNew))

