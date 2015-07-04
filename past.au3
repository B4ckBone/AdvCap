#include <Date.au3>
#requireadmin
   $tNew = _Date_Time_EncodeSystemTime(1, 1, 1700)
   _Date_Time_SetSystemTime(DllStructGetPtr($tNew))

