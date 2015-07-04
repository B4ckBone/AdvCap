#include <Date.au3>
#requireadmin
   $tNew = _Date_Time_EncodeSystemTime(12, 30, 8901)
   _Date_Time_SetSystemTime(DllStructGetPtr($tNew))

