class DateConversion{

  var currDt;
  int day;
  int currmonth;
  int year;

 DateConversion(){
   currDt = new DateTime.now();
   day = currDt.day;
   year = currDt.year;
   currmonth = currDt.month;
 }

String Stmonth;

  String printMonth(){

   int month = currmonth;

   switch(month){
    case 1:
      Stmonth = 'Jan';
      break;
    case 2:
      Stmonth = 'Feb';
      break;
    case 3:
      Stmonth = 'Mar';
      break;
    case 4:
      Stmonth = 'Apr';
      break;
    case 5:
      Stmonth = 'May';
      break;
    case 6:
      Stmonth = 'Jun';
      break;
    case 7:
      Stmonth = 'Jul';
      break;
    case 8:
      Stmonth = 'Aug';
      break;
    case 9:
      Stmonth = 'Sep';
      break;
    case 10:
      Stmonth = 'Oct';
      break;
    case 11:
      Stmonth = 'Nov';
      break;
    case 12:
      Stmonth = 'Dec';
      break;
   }

   return Stmonth;
 }

 String getDate(){
   return day.toString()+' '+printMonth()+' '+year.toString();
 }

 String getDayMonth(){
   return day.toString()+' '+printMonth();
 }
 
}