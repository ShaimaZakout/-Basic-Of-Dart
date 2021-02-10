import 'package:basic_dart1/basic_dart1.dart' as basic_dart1;

void main(List<String> arguments) {
   /*data type
     * string
     * int
     * double
     * num (double & int)
     * var ==>(determine the type when give it a value) 
     * when we want to get data from ApI
     */
   
      // int x=5,y=10;
      // double z=(x+y) as double; // cast
      // var isTrue=false;
      // String str="shaimaa";

      /*************************************************************************************************************** */

      /* collection
      --- list (with specific data type or without)
      * spread operator (...)
      * null-aware speard operator(...?)
      * add
      *insert
      * length
      * map (return dataType)
      * foreach(void)
      * every
      * any
      *isNotEmpty
      *isEmpty
      * reduce
      * where
      *sort
      ---set
      ---map
      */

      // ignore: omit_local_variable_types
      List<String> names=['shaimaa','raed','anas','aya'];
      var listOne;
      List avareg=['shaimaa','raed','anas','aya',10,20,30,40];
      var data=<String>[...names,...?listOne,'shaimaa','raed','anas','aya'];
      print(data);
      // function
      var nums=<int>[1,2,3];
      nums.add(4);
      nums.insert(2, 4);
      print(nums.length);
      /* what is the different bettwen map an forEach*/

      //forEach
      nums.forEach((element) {
        print(element);
        });

      //map
    List retuList = nums.map((element) {
      return element+2;
         }).toList();

    print(retuList);

      /* what is the different bettwen every an any*/
      //every
     var result= nums.every((element) => element>10); // all the elements check the condtion
      //any
     var result2= nums.any((element) => element>2); //at least one of the elements check the condtion
   print(result);
   print(result2);

    //reduce
     var result3= nums.reduce((value, element) => value+element); 
   print(result3);

 //where
     var result4= nums.where((element) => element%2==0);  
     print(result4);
       
 //isEmpty
     var result5= nums.isEmpty;  
     print(result5);

 //isNotEmpty
     var result6= nums.isNotEmpty;  
     print(result6);

   //sort(void)
    nums.sort(); // edit in the main list (Asce)
    print(nums); 

   //sort
    nums.sort(); // edit in the main list (Desc)
    print(nums.reversed); 
   
   //custom sort 
   names.sort((x,y) {return x.length-y.length; }); // x & y represent the elements in the list
  print(names);

/***************************************************************************************************************/
/**
 * function
 * -- parmeter
 *   --> postional parmeter
 *   --> named parmeter(optinal)
 *  --> named postional parmeter(optinal)
 * 
 */
printFullName("shaimaa", "zakout");
printFullName2("shaimaa");
printFullName3("shaimaa");
printFullName4("shaimaa");

//inner function (function as a parmeter)
printNumber(printHalf);

/***************************************************************************************************************/
/**
 * loop
 * for loop
 * assert (make exeption if not check the condtion)
 * while
 * do-while
 */

/***************************************************************************************************************/
/**
 *-- exception (same concepts in java)
 * try-catch
 * throw
 * finally
  */



}
void printFullName(String fN,String lN){
  print('$fN  $lN');
}

void printFullName2([String fN,String lN=".R"]){
  print('$fN  $lN');
}
void printFullName3(String fN,[String lN=".R"]){
  print('$fN  ${lN ?? ".R zakout"} '); // if lN is Empty put ".R zakout" as a value for it. 
}

void printFullName4(String fN,[String lN]){
  print('$fN  ${lN ?? ".R zakout"} '); // if lN is Empty put ".R zakout" as a value for it. 
}


void printNumber(Function printHalf){
for(var i=0; i<10; i++){
  print(i);
  if(i==5){
    printHalf;
   }
}
} 
void printHalf(){
  print('printHalf');
}


