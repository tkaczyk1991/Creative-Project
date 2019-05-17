// Created by Alexander Tkaczyk-Harrison 
// Notes: Due to how repatitive this code is, 
// i shall only comment the first part of each step. All steps are the same

// Cars
String[] rawData1;
String[] rawData2;
String[] rawData3;
String[] rawData4;
String[] rawData5;
String[] rawData6;
String[] rawData7;
String[] rawData8;
String[] rawData9;
String[] rawData10;
String[] rawData11;

int[] unixTimes_cars1 = new int[61889];   //April 27th 
int[] unixTimes_cars2 = new int[39526];   //April 28th (LONDON MARATHON)
int[] unixTimes_cars3 = new int[60156];   //April 29th
int[] unixTimes_cars4 = new int[63030];   //April 30th
int[] unixTimes_cars5 = new int[55033];   //May 1st
int[] unixTimes_cars6 = new int[52197];   //May 2nd
int[] unixTimes_cars7 = new int[54630];   //May 3rd
int[] unixTimes_cars8 = new int[50905];   //May 4th (BANK HOLIDAY WEEKEND)
int[] unixTimes_cars9 = new int[56524];   //May 5th (BANK HOLIDAY WEEKEND)
int[] unixTimes_cars10 = new int[45308];  //May 6th (BANK HOLIDAY WEEKEND) 
int[] unixTimes_cars11 = new int[50424];  //May 7th

IntList checkedValues1;
IntList checkedValues2;
IntList checkedValues3;
IntList checkedValues4;
IntList checkedValues5;
IntList checkedValues6;
IntList checkedValues7;
IntList checkedValues8;
IntList checkedValues9;
IntList checkedValues10;
IntList checkedValues11;
// /Cars

// Vans
String[] vansRawData1;
String[] vansRawData2;
String[] vansRawData3;
String[] vansRawData4;
String[] vansRawData5;
String[] vansRawData6;
String[] vansRawData7;
String[] vansRawData8;
String[] vansRawData9;
String[] vansRawData10;
String[] vansRawData11;

int[] unixTimes_vans1 = new int[7473];  
int[] unixTimes_vans2 = new int[2563]; 
int[] unixTimes_vans3 = new int[15428]; 
int[] unixTimes_vans4 = new int[16621]; 
int[] unixTimes_vans5 = new int[14913]; 
int[] unixTimes_vans6 = new int[13656]; 
int[] unixTimes_vans7 = new int[12961]; 
int[] unixTimes_vans8 = new int[5717]; 
int[] unixTimes_vans9 = new int[3519]; 
int[] unixTimes_vans10 = new int[3967];  
int[] unixTimes_vans11 = new int[13373]; 

IntList vansCheckedValues1;
IntList vansCheckedValues2;
IntList vansCheckedValues3;
IntList vansCheckedValues4;
IntList vansCheckedValues5;
IntList vansCheckedValues6;
IntList vansCheckedValues7;
IntList vansCheckedValues8;
IntList vansCheckedValues9;
IntList vansCheckedValues10;
IntList vansCheckedValues11;
// /Vans

// HGVs
String[] HGVsRawData1;
String[] HGVsRawData2;
String[] HGVsRawData3;
String[] HGVsRawData4;
String[] HGVsRawData5;
String[] HGVsRawData6;
String[] HGVsRawData7;
String[] HGVsRawData8;
String[] HGVsRawData9;
String[] HGVsRawData10;
String[] HGVsRawData11;

int[] unixTimes_HGV1 = new int[1013];  
int[] unixTimes_HGV2 = new int[407]; 
int[] unixTimes_HGV3 = new int[2718]; 
int[] unixTimes_HGV4 = new int[2653]; 
int[] unixTimes_HGV5 = new int[2760]; 
int[] unixTimes_HGV6 = new int[2271]; 
int[] unixTimes_HGV7 = new int[2225]; 
int[] unixTimes_HGV8 = new int[765]; 
int[] unixTimes_HGV9 = new int[491]; 
int[] unixTimes_HGV10 = new int[735];  
int[] unixTimes_HGV11 = new int[2434]; 

IntList HGVsCheckedValues1;
IntList HGVsCheckedValues2;
IntList HGVsCheckedValues3;
IntList HGVsCheckedValues4;
IntList HGVsCheckedValues5;
IntList HGVsCheckedValues6;
IntList HGVsCheckedValues7;
IntList HGVsCheckedValues8;
IntList HGVsCheckedValues9;
IntList HGVsCheckedValues10;
IntList HGVsCheckedValues11;
// /HGVs

// Bikes
String[] bikesRawData1;
String[] bikesRawData2;
String[] bikesRawData3;
String[] bikesRawData4;
String[] bikesRawData5;
String[] bikesRawData6;
String[] bikesRawData7;
String[] bikesRawData8;
String[] bikesRawData9;
String[] bikesRawData10;
String[] bikesRawData11;

int[] unixTimes_bikes1 = new int[441];  
int[] unixTimes_bikes2 = new int[389]; 
int[] unixTimes_bikes3 = new int[771]; 
int[] unixTimes_bikes4 = new int[593]; 
int[] unixTimes_bikes5 = new int[1115]; 
int[] unixTimes_bikes6 = new int[802]; 
int[] unixTimes_bikes7 = new int[802]; 
int[] unixTimes_bikes8 = new int[350]; 
int[] unixTimes_bikes9 = new int[387]; 
int[] unixTimes_bikes10 = new int[427];  
int[] unixTimes_bikes11 = new int[961]; 

IntList bikesCheckedValues1;
IntList bikesCheckedValues2;
IntList bikesCheckedValues3;
IntList bikesCheckedValues4;
IntList bikesCheckedValues5;
IntList bikesCheckedValues6;
IntList bikesCheckedValues7;
IntList bikesCheckedValues8;
IntList bikesCheckedValues9;
IntList bikesCheckedValues10;
IntList bikesCheckedValues11;
// /Bikes

// Define function to return true log
float logY (float x, float y) {
  return (log(x) / log(y));
}

void setup() {
  size(1080, 720, P2D);                              // 2D renderer
  background(255);
  noLoop();                                          // Only draw once
}

void draw() {
  processData();
}

void processData() {                                 // Begin processing of raw data

  // Cars
  rawData1=loadStrings("cars/1_cars_27th.csv");      // April 27th
  rawData2=loadStrings("cars/2_cars_28th.csv");      // April 28th (London Marathon)
  rawData3=loadStrings("cars/3_cars_29th.csv");      // April 29th
  rawData4=loadStrings("cars/4_cars_30th.csv");      // April 30th
  rawData5=loadStrings("cars/5_cars_1st.csv");       // May 1st
  rawData6=loadStrings("cars/6_cars_2nd.csv");       // May 2nd
  rawData7=loadStrings("cars/7_cars_3rd.csv");       // May 3rd
  rawData8=loadStrings("cars/8_cars_4th.csv");       // May 4th (Bank Holiday)
  rawData9=loadStrings("cars/9_cars_5th.csv");       // May 5th (Bank Holiday)
  rawData10=loadStrings("cars/10_cars_6th.csv");     // May 6th (Bank Holiday)
  rawData11=loadStrings("cars/11_cars_7th.csv");     // May 7th

  // Vans 
  vansRawData1=loadStrings("vans/1_vans_27th.csv");      
  vansRawData2=loadStrings("vans/2_vans_28th.csv");      
  vansRawData3=loadStrings("vans/3_vans_29th.csv");      
  vansRawData4=loadStrings("vans/4_vans_30th.csv");      
  vansRawData5=loadStrings("vans/5_vans_1st.csv");       
  vansRawData6=loadStrings("vans/6_vans_2nd.csv");       
  vansRawData7=loadStrings("vans/7_vans_3rd.csv");       
  vansRawData8=loadStrings("vans/8_vans_4th.csv");       
  vansRawData9=loadStrings("vans/9_vans_5th.csv");       
  vansRawData10=loadStrings("vans/10_vans_6th.csv");     
  vansRawData11=loadStrings("vans/11_vans_7th.csv");     

  // HGVs
  HGVsRawData1=loadStrings("HGVs/1_HGVs_27th.csv");      
  HGVsRawData2=loadStrings("HGVs/2_HGVs_28th.csv");      
  HGVsRawData3=loadStrings("HGVs/3_HGVs_29th.csv");      
  HGVsRawData4=loadStrings("HGVs/4_HGVs_30th.csv");      
  HGVsRawData5=loadStrings("HGVs/5_HGVs_1st.csv");       
  HGVsRawData6=loadStrings("HGVs/6_HGVs_2nd.csv");       
  HGVsRawData7=loadStrings("HGVs/7_HGVs_3rd.csv");       
  HGVsRawData8=loadStrings("HGVs/8_HGVs_4th.csv");       
  HGVsRawData9=loadStrings("HGVs/9_HGVs_5th.csv");       
  HGVsRawData10=loadStrings("HGVs/10_HGVs_6th.csv");     
  HGVsRawData11=loadStrings("HGVs/11_HGVs_7th.csv");     

  // Bikes
  bikesRawData1=loadStrings("bikes/1_bikes_27th.csv");      
  bikesRawData2=loadStrings("bikes/2_bikes_28th.csv");      
  bikesRawData3=loadStrings("bikes/3_bikes_29th.csv");      
  bikesRawData4=loadStrings("bikes/4_bikes_30th.csv");      
  bikesRawData5=loadStrings("bikes/5_bikes_1st.csv");       
  bikesRawData6=loadStrings("bikes/6_bikes_2nd.csv");       
  bikesRawData7=loadStrings("bikes/7_bikes_3rd.csv");       
  bikesRawData8=loadStrings("bikes/8_bikes_4th.csv");       
  bikesRawData9=loadStrings("bikes/9_bikes_5th.csv");       
  bikesRawData10=loadStrings("bikes/10_bikes_6th.csv");     
  bikesRawData11=loadStrings("bikes/11_bikes_7th.csv");     

  // Cars
  for (int i = 1; i < rawData1.length; i++) {            // Split each row into a mini array
    String[] thisRow = split(rawData1[i], ",");          // Extract unix time from mini array,
    unixTimes_cars1[i-1] = int(thisRow[1]);              // store it in the unix times array 
  }

  for (int i = 1; i < rawData2.length; i++) {
    String[] thisRow = split(rawData2[i], ",");       
    unixTimes_cars2[i-1] = int(thisRow[1]);
  }

  for (int i = 1; i < rawData3.length; i++) {
    String[] thisRow = split(rawData3[i], ",");       
    unixTimes_cars3[i-1] = int(thisRow[1]);
  }

  for (int i = 1; i < rawData4.length; i++) {
    String[] thisRow = split(rawData4[i], ",");       
    unixTimes_cars4[i-1] = int(thisRow[1]);
  }

  for (int i = 1; i < rawData5.length; i++) {
    String[] thisRow = split(rawData5[i], ",");         
    unixTimes_cars5[i-1] = int(thisRow[1]);
  }

  for (int i = 1; i < rawData6.length; i++) {
    String[] thisRow = split(rawData6[i], ",");         
    unixTimes_cars6[i-1] = int(thisRow[1]);
  }

  for (int i = 1; i < rawData7.length; i++) {
    String[] thisRow = split(rawData7[i], ",");         
    unixTimes_cars7[i-1] = int(thisRow[1]);
  }

  for (int i = 1; i < rawData8.length; i++) {
    String[] thisRow = split(rawData8[i], ",");         
    unixTimes_cars8[i-1] = int(thisRow[1]);
  }

  for (int i = 1; i < rawData9.length; i++) {
    String[] thisRow = split(rawData9[i], ",");         
    unixTimes_cars9[i-1] = int(thisRow[1]);
  }

  for (int i = 1; i < rawData10.length; i++) {
    String[] thisRow = split(rawData10[i], ",");         
    unixTimes_cars10[i-1] = int(thisRow[1]);
  } 

  for (int i = 1; i < rawData11.length; i++) {
    String[] thisRow = split(rawData11[i], ",");         
    unixTimes_cars11[i-1] = int(thisRow[1]);
  } 
  // /cars

  // Vans
  for (int i = 1; i < vansRawData1.length; i++) {
    String[] thisRow = split(vansRawData1[i], ",");         
    unixTimes_vans1[i-1] = int(thisRow[1]);            
  }

  for (int i = 1; i < vansRawData2.length; i++) {
    String[] thisRow = split(vansRawData2[i], ",");       
    unixTimes_vans2[i-1] = int(thisRow[1]);
  }

  for (int i = 1; i < vansRawData3.length; i++) {
    String[] thisRow = split(vansRawData3[i], ",");       
    unixTimes_vans3[i-1] = int(thisRow[1]);
  }

  for (int i = 1; i < vansRawData4.length; i++) {
    String[] thisRow = split(vansRawData4[i], ",");       
    unixTimes_vans4[i-1] = int(thisRow[1]);
  }

  for (int i = 1; i < vansRawData5.length; i++) {
    String[] thisRow = split(vansRawData5[i], ",");         
    unixTimes_vans5[i-1] = int(thisRow[1]);
  }

  for (int i = 1; i < vansRawData6.length; i++) {
    String[] thisRow = split(vansRawData6[i], ",");         
    unixTimes_vans6[i-1] = int(thisRow[1]);
  }

  for (int i = 1; i < vansRawData7.length; i++) {
    String[] thisRow = split(vansRawData7[i], ",");         
    unixTimes_vans7[i-1] = int(thisRow[1]);
  }

  for (int i = 1; i < vansRawData8.length; i++) {
    String[] thisRow = split(vansRawData8[i], ",");         
    unixTimes_vans8[i-1] = int(thisRow[1]);
  }

  for (int i = 1; i < vansRawData9.length; i++) {
    String[] thisRow = split(vansRawData9[i], ",");         
    unixTimes_vans9[i-1] = int(thisRow[1]);
  }

  for (int i = 1; i < vansRawData10.length; i++) {
    String[] thisRow = split(vansRawData10[i], ",");         
    unixTimes_vans10[i-1] = int(thisRow[1]);
  } 

  for (int i = 1; i < vansRawData11.length; i++) {
    String[] thisRow = split(vansRawData11[i], ",");         
    unixTimes_vans11[i-1] = int(thisRow[1]);
  } 
  // /Vans

  // HGVs
  for (int i = 1; i < HGVsRawData1.length; i++) {
    String[] thisRow = split(HGVsRawData1[i], ",");   
    unixTimes_HGV1[i-1] = int(thisRow[1]);            
  }

  for (int i = 1; i < HGVsRawData2.length; i++) {
    String[] thisRow = split(HGVsRawData2[i], ",");       
    unixTimes_HGV2[i-1] = int(thisRow[1]);
  }

  for (int i = 1; i < HGVsRawData3.length; i++) {
    String[] thisRow = split(HGVsRawData3[i], ",");       
    unixTimes_HGV3[i-1] = int(thisRow[1]);
  }

  for (int i = 1; i < HGVsRawData4.length; i++) {
    String[] thisRow = split(HGVsRawData4[i], ",");       
    unixTimes_HGV4[i-1] = int(thisRow[1]);
  }

  for (int i = 1; i < HGVsRawData5.length; i++) {
    String[] thisRow = split(HGVsRawData5[i], ",");         
    unixTimes_HGV5[i-1] = int(thisRow[1]);
  }

  for (int i = 1; i < HGVsRawData6.length; i++) {
    String[] thisRow = split(HGVsRawData6[i], ",");         
    unixTimes_HGV6[i-1] = int(thisRow[1]);
  }

  for (int i = 1; i < HGVsRawData7.length; i++) {
    String[] thisRow = split(HGVsRawData7[i], ",");         
    unixTimes_HGV7[i-1] = int(thisRow[1]);
  }

  for (int i = 1; i < HGVsRawData8.length; i++) {
    String[] thisRow = split(HGVsRawData8[i], ",");         
    unixTimes_HGV8[i-1] = int(thisRow[1]);
  }

  for (int i = 1; i < HGVsRawData9.length; i++) {
    String[] thisRow = split(HGVsRawData9[i], ",");         
    unixTimes_HGV9[i-1] = int(thisRow[1]);
  }

  for (int i = 1; i < HGVsRawData10.length; i++) {
    String[] thisRow = split(HGVsRawData10[i], ",");         
    unixTimes_HGV10[i-1] = int(thisRow[1]);
  } 

  for (int i = 1; i < HGVsRawData11.length; i++) {
    String[] thisRow = split(HGVsRawData11[i], ",");         
    unixTimes_HGV11[i-1] = int(thisRow[1]);
  } 
  // /HGVs

  // Bikes
  for (int i = 1; i < bikesRawData1.length; i++) {
    String[] thisRow = split(bikesRawData1[i], ",");         
    unixTimes_bikes1[i-1] = int(thisRow[1]);            
  }

  for (int i = 1; i < bikesRawData2.length; i++) {
    String[] thisRow = split(bikesRawData2[i], ",");       
    unixTimes_bikes2[i-1] = int(thisRow[1]);
  }

  for (int i = 1; i < bikesRawData3.length; i++) {
    String[] thisRow = split(bikesRawData3[i], ",");       
    unixTimes_bikes3[i-1] = int(thisRow[1]);
  }

  for (int i = 1; i < bikesRawData4.length; i++) {
    String[] thisRow = split(bikesRawData4[i], ",");       
    unixTimes_bikes4[i-1] = int(thisRow[1]);
  }

  for (int i = 1; i < bikesRawData5.length; i++) {
    String[] thisRow = split(bikesRawData5[i], ",");         
    unixTimes_bikes5[i-1] = int(thisRow[1]);
  }

  for (int i = 1; i < bikesRawData6.length; i++) {
    String[] thisRow = split(bikesRawData6[i], ",");         
    unixTimes_bikes6[i-1] = int(thisRow[1]);
  }

  for (int i = 1; i < bikesRawData7.length; i++) {
    String[] thisRow = split(bikesRawData7[i], ",");         
    unixTimes_bikes7[i-1] = int(thisRow[1]);
  }

  for (int i = 1; i < bikesRawData8.length; i++) {
    String[] thisRow = split(bikesRawData8[i], ",");         
    unixTimes_bikes8[i-1] = int(thisRow[1]);
  }

  for (int i = 1; i < bikesRawData9.length; i++) {
    String[] thisRow = split(bikesRawData9[i], ",");         
    unixTimes_bikes9[i-1] = int(thisRow[1]);
  }

  for (int i = 1; i < bikesRawData10.length; i++) {
    String[] thisRow = split(bikesRawData10[i], ",");         
    unixTimes_bikes10[i-1] = int(thisRow[1]);
  } 

  for (int i = 1; i < bikesRawData11.length; i++) {
    String[] thisRow = split(bikesRawData11[i], ",");         
    unixTimes_bikes11[i-1] = int(thisRow[1]);
  } 
  // /Bikes

  checkValue();                                                  // run next function
}

void checkValue() {                                               
  int value = 0;                                                 
  
  checkedValues1 = new IntList();                                 
  checkedValues2 = new IntList();                                
  checkedValues3 = new IntList();
  checkedValues4 = new IntList();
  checkedValues5 = new IntList();
  checkedValues6 = new IntList();
  checkedValues7 = new IntList();
  checkedValues8 = new IntList();
  checkedValues9 = new IntList();
  checkedValues10 = new IntList();
  checkedValues11 = new IntList();

  vansCheckedValues1 = new IntList();                                  
  vansCheckedValues2 = new IntList();                                 
  vansCheckedValues3 = new IntList();
  vansCheckedValues4 = new IntList();
  vansCheckedValues5 = new IntList();
  vansCheckedValues6 = new IntList();
  vansCheckedValues7 = new IntList();
  vansCheckedValues8 = new IntList();
  vansCheckedValues9 = new IntList();
  vansCheckedValues10 = new IntList();
  vansCheckedValues11 = new IntList();

  HGVsCheckedValues1 = new IntList();                                  
  HGVsCheckedValues2 = new IntList();                                 
  HGVsCheckedValues3 = new IntList();
  HGVsCheckedValues4 = new IntList();
  HGVsCheckedValues5 = new IntList();
  HGVsCheckedValues6 = new IntList();
  HGVsCheckedValues7 = new IntList();
  HGVsCheckedValues8 = new IntList();
  HGVsCheckedValues9 = new IntList();
  HGVsCheckedValues10 = new IntList();
  HGVsCheckedValues11 = new IntList();

  bikesCheckedValues1 = new IntList();                                  
  bikesCheckedValues2 = new IntList();                                 
  bikesCheckedValues3 = new IntList();
  bikesCheckedValues4 = new IntList();
  bikesCheckedValues5 = new IntList();
  bikesCheckedValues6 = new IntList();
  bikesCheckedValues7 = new IntList();
  bikesCheckedValues8 = new IntList();
  bikesCheckedValues9 = new IntList();
  bikesCheckedValues10 = new IntList();
  bikesCheckedValues11 = new IntList();

  // Cars
  for (int i = 1; i < unixTimes_cars1.length; i++) {                // Loop through the unixTimes array and compare each entry to the previous entry
    if (unixTimes_cars1[i] == unixTimes_cars1[i-1]) {               // if entries are the same, value goes up by one, begin next iteration
      value +=1;                                                    // if entries are not the same, append the value of "value" (lol)
    } else if (unixTimes_cars1[i] != unixTimes_cars1[i-1]) {        // onto the end of the checkedValues array, reset value of "value", begin next iteration
      checkedValues1.append(value);
      value = 0;
    }
  }
  for (int i = 1; i < unixTimes_cars2.length; i++) {
    if (unixTimes_cars2[i] == unixTimes_cars2[i-1]) {
      value +=1;
    } else if (unixTimes_cars2[i] != unixTimes_cars2[i-1]) {
      checkedValues2.append(value);
      value = 0;
    }
  }
  for (int i = 1; i < unixTimes_cars3.length; i++) {
    if (unixTimes_cars3[i] == unixTimes_cars3[i-1]) {
      value +=1;
    } else if (unixTimes_cars3[i] != unixTimes_cars3[i-1]) {
      checkedValues3.append(value);
      value = 0;
    }
  }
  for (int i = 1; i < unixTimes_cars4.length; i++) {
    if (unixTimes_cars4[i] == unixTimes_cars4[i-1]) {
      value +=1;
    } else if (unixTimes_cars4[i] != unixTimes_cars4[i-1]) {
      checkedValues4.append(value);
      value = 0;
    }
  }
  for (int i = 1; i < unixTimes_cars5.length; i++) {
    if (unixTimes_cars5[i] == unixTimes_cars5[i-1]) {
      value +=1;
    } else if (unixTimes_cars5[i] != unixTimes_cars5[i-1]) {
      checkedValues5.append(value);
      value = 0;
    }
  }
  for (int i = 1; i < unixTimes_cars6.length; i++) {
    if (unixTimes_cars6[i] == unixTimes_cars6[i-1]) {
      value +=1;
    } else if (unixTimes_cars6[i] != unixTimes_cars6[i-1]) {
      checkedValues6.append(value);
      value = 0;
    }
  }
  for (int i = 1; i < unixTimes_cars7.length; i++) {
    if (unixTimes_cars7[i] == unixTimes_cars7[i-1]) {
      value +=1;
    } else if (unixTimes_cars7[i] != unixTimes_cars7[i-1]) {
      checkedValues7.append(value);
      value = 0;
    }
  }
  for (int i = 1; i < unixTimes_cars8.length; i++) {
    if (unixTimes_cars8[i] == unixTimes_cars8[i-1]) {
      value +=1;
    } else if (unixTimes_cars8[i] != unixTimes_cars8[i-1]) {
      checkedValues8.append(value);
      value = 0;
    }
  }
  for (int i = 1; i < unixTimes_cars9.length; i++) {
    if (unixTimes_cars9[i] == unixTimes_cars9[i-1]) {
      value +=1;
    } else if (unixTimes_cars9[i] != unixTimes_cars9[i-1]) {
      checkedValues9.append(value);
      value = 0;
    }
  }
  for (int i = 1; i < unixTimes_cars10.length; i++) {
    if (unixTimes_cars10[i] == unixTimes_cars10[i-1]) {
      value +=1;
    } else if (unixTimes_cars10[i] != unixTimes_cars10[i-1]) {
      checkedValues10.append(value);
      value = 0;
    }
  }
  for (int i = 1; i < unixTimes_cars11.length; i++) {
    if (unixTimes_cars11[i] == unixTimes_cars11[i-1]) {
      value +=1;
    } else if (unixTimes_cars11[i] != unixTimes_cars11[i-1]) {
      checkedValues11.append(value);
      value = 0;
    }
  }
  // /Cars
  
  // Vans
  for (int i = 1; i < unixTimes_vans1.length; i++) {
    if (unixTimes_vans1[i] == unixTimes_vans1[i-1]) {
      value +=1;
    } else if (unixTimes_vans1[i] != unixTimes_vans1[i-1]) {
      vansCheckedValues1.append(value);
      value = 0;
    }
  }
  for (int i = 1; i < unixTimes_vans2.length; i++) {
    if (unixTimes_vans2[i] == unixTimes_vans2[i-1]) {
      value +=1;
    } else if (unixTimes_vans2[i] != unixTimes_vans2[i-1]) {
      vansCheckedValues2.append(value);
      value = 0;
    }
  }
  for (int i = 1; i < unixTimes_vans3.length; i++) {
    if (unixTimes_vans3[i] == unixTimes_vans3[i-1]) {
      value +=1;
    } else if (unixTimes_vans3[i] != unixTimes_vans3[i-1]) {
      vansCheckedValues3.append(value);
      value = 0;
    }
  }
  for (int i = 1; i < unixTimes_vans4.length; i++) {
    if (unixTimes_vans4[i] == unixTimes_vans4[i-1]) {
      value +=1;
    } else if (unixTimes_vans4[i] != unixTimes_vans4[i-1]) {
      vansCheckedValues4.append(value);
      value = 0;
    }
  }
  for (int i = 1; i < unixTimes_vans5.length; i++) {
    if (unixTimes_vans5[i] == unixTimes_vans5[i-1]) {
      value +=1;
    } else if (unixTimes_vans5[i] != unixTimes_vans5[i-1]) {
      vansCheckedValues5.append(value);
      value = 0;
    }
  }
  for (int i = 1; i < unixTimes_vans6.length; i++) {
    if (unixTimes_vans6[i] == unixTimes_vans6[i-1]) {
      value +=1;
    } else if (unixTimes_vans6[i] != unixTimes_vans6[i-1]) {
      vansCheckedValues6.append(value);
      value = 0;
    }
  }
  for (int i = 1; i < unixTimes_vans7.length; i++) {
    if (unixTimes_vans7[i] == unixTimes_vans7[i-1]) {
      value +=1;
    } else if (unixTimes_vans7[i] != unixTimes_vans7[i-1]) {
      vansCheckedValues7.append(value);
      value = 0;
    }
  }
  for (int i = 1; i < unixTimes_vans8.length; i++) {
    if (unixTimes_vans8[i] == unixTimes_vans8[i-1]) {
      value +=1;
    } else if (unixTimes_vans8[i] != unixTimes_vans8[i-1]) {
      vansCheckedValues8.append(value);
      value = 0;
    }
  }
  for (int i = 1; i < unixTimes_vans9.length; i++) {
    if (unixTimes_vans9[i] == unixTimes_vans9[i-1]) {
      value +=1;
    } else if (unixTimes_vans9[i] != unixTimes_vans9[i-1]) {
      vansCheckedValues9.append(value);
      value = 0;
    }
  }
  for (int i = 1; i < unixTimes_vans10.length; i++) {
    if (unixTimes_vans10[i] == unixTimes_vans10[i-1]) {
      value +=1;
    } else if (unixTimes_vans10[i] != unixTimes_vans10[i-1]) {
      vansCheckedValues10.append(value);
      value = 0;
    }
  }
  for (int i = 1; i < unixTimes_vans11.length; i++) {
    if (unixTimes_vans11[i] == unixTimes_vans11[i-1]) {
      value +=1;
    } else if (unixTimes_vans11[i] != unixTimes_vans11[i-1]) {
      vansCheckedValues11.append(value);
      value = 0;
    }
  }
  // /Vans
  
  // HGVs
  for (int i = 1; i < unixTimes_HGV1.length; i++) {
    if (unixTimes_HGV1[i] == unixTimes_HGV1[i-1]) {
      value +=1;
    } else if (unixTimes_HGV1[i] != unixTimes_HGV1[i-1]) {
      HGVsCheckedValues1.append(value);
      value = 0;
    }
  }
  for (int i = 1; i < unixTimes_HGV2.length; i++) {
    if (unixTimes_HGV2[i] == unixTimes_HGV2[i-1]) {
      value +=1;
    } else if (unixTimes_HGV2[i] != unixTimes_HGV2[i-1]) {
      HGVsCheckedValues2.append(value);
      value = 0;
    }
  }
  for (int i = 1; i < unixTimes_HGV3.length; i++) {
    if (unixTimes_HGV3[i] == unixTimes_HGV3[i-1]) {
      value +=1;
    } else if (unixTimes_HGV3[i] != unixTimes_HGV3[i-1]) {
      HGVsCheckedValues3.append(value);
      value = 0;
    }
  }
  for (int i = 1; i < unixTimes_HGV4.length; i++) {
    if (unixTimes_HGV4[i] == unixTimes_HGV4[i-1]) {
      value +=1;
    } else if (unixTimes_HGV4[i] != unixTimes_HGV4[i-1]) {
      HGVsCheckedValues4.append(value);
      value = 0;
    }
  }
  for (int i = 1; i < unixTimes_HGV5.length; i++) {
    if (unixTimes_HGV5[i] == unixTimes_HGV5[i-1]) {
      value +=1;
    } else if (unixTimes_HGV5[i] != unixTimes_HGV5[i-1]) {
      HGVsCheckedValues5.append(value);
      value = 0;
    }
  }
  for (int i = 1; i < unixTimes_HGV6.length; i++) {
    if (unixTimes_HGV6[i] == unixTimes_HGV6[i-1]) {
      value +=1;
    } else if (unixTimes_HGV6[i] != unixTimes_HGV6[i-1]) {
      HGVsCheckedValues6.append(value);
      value = 0;
    }
  }
  for (int i = 1; i < unixTimes_HGV7.length; i++) {
    if (unixTimes_HGV7[i] == unixTimes_HGV7[i-1]) {
      value +=1;
    } else if (unixTimes_HGV7[i] != unixTimes_HGV7[i-1]) {
      HGVsCheckedValues7.append(value);
      value = 0;
    }
  }
  for (int i = 1; i < unixTimes_HGV8.length; i++) {
    if (unixTimes_HGV8[i] == unixTimes_HGV8[i-1]) {
      value +=1;
    } else if (unixTimes_HGV8[i] != unixTimes_HGV8[i-1]) {
      HGVsCheckedValues8.append(value);
      value = 0;
    }
  }
  for (int i = 1; i < unixTimes_HGV9.length; i++) {
    if (unixTimes_HGV9[i] == unixTimes_HGV9[i-1]) {
      value +=1;
    } else if (unixTimes_HGV9[i] != unixTimes_HGV9[i-1]) {
      HGVsCheckedValues9.append(value);
      value = 0;
    }
  }
  for (int i = 1; i < unixTimes_HGV10.length; i++) {
    if (unixTimes_HGV10[i] == unixTimes_HGV10[i-1]) {
      value +=1;
    } else if (unixTimes_HGV10[i] != unixTimes_HGV10[i-1]) {
      HGVsCheckedValues10.append(value);
      value = 0;
    }
  }
  for (int i = 1; i < unixTimes_HGV11.length; i++) {
    if (unixTimes_HGV11[i] == unixTimes_HGV11[i-1]) {
      value +=1;
    } else if (unixTimes_HGV11[i] != unixTimes_HGV11[i-1]) {
      HGVsCheckedValues11.append(value);
      value = 0;
    }
  }
  // /HGVs

  int bikeCheckValLow = 5;                            // Variables to control check points between bike entries
  int bikeCheckValHigh = 10;                          // Bikes are treated differently to other classes, because there were so few entries
                                                      // I needed to boost the value of value to make the colour come through in the final image
  for (int i = 1; i < unixTimes_bikes1.length; i++) {
    if ((unixTimes_bikes1[i] - unixTimes_bikes1[i-1]) < bikeCheckValLow) {
      value +=1;
    } else if ((unixTimes_bikes1[i] - unixTimes_bikes1[i-1])> bikeCheckValLow) {
      bikesCheckedValues1.append(value);
      value = 0;
    }
  }
  for (int i = 1; i < unixTimes_bikes2.length; i++) {
    if ((unixTimes_bikes2[i] - unixTimes_bikes2[i-1]) < bikeCheckValLow) {
      value +=1;
    } else if ((unixTimes_bikes2[i] - unixTimes_bikes2[i-1]) > bikeCheckValLow) {
      bikesCheckedValues2.append(value);
      value = 0;
    }
  }
  for (int i = 1; i < unixTimes_bikes3.length; i++) {
    if ((unixTimes_bikes3[i] - unixTimes_bikes3[i-1]) < bikeCheckValLow) {
      value +=1;
    } else if ((unixTimes_bikes3[i] - unixTimes_bikes3[i-1]) > bikeCheckValLow) {
      bikesCheckedValues3.append(value);
      value = 0;
    }
  }
  for (int i = 1; i < unixTimes_bikes4.length; i++) {
    if ((unixTimes_bikes4[i] - unixTimes_bikes4[i-1]) < bikeCheckValLow) {
      value +=1;
    } else if ((unixTimes_bikes4[i] - unixTimes_bikes4[i-1]) > bikeCheckValLow) {
      bikesCheckedValues4.append(value);
      value = 0;
    }
  }
  for (int i = 1; i < unixTimes_bikes5.length; i++) {
    if ((unixTimes_bikes5[i] - unixTimes_bikes5[i-1]) < bikeCheckValLow) {
      value +=1;
    } else if ((unixTimes_bikes5[i] - unixTimes_bikes5[i-1]) > bikeCheckValLow) {
      bikesCheckedValues5.append(value);
      value = 0;
    }
  }
  for (int i = 1; i < unixTimes_bikes6.length; i++) {
    if ((unixTimes_bikes6[i] - unixTimes_bikes6[i-1]) < bikeCheckValLow) {
      value +=1;
    } else if ((unixTimes_bikes6[i] - unixTimes_bikes6[i-1]) > bikeCheckValLow) {
      bikesCheckedValues6.append(value);
      value = 0;
    }
  }
  for (int i = 1; i < unixTimes_bikes7.length; i++) {
    if ((unixTimes_bikes7[i] - unixTimes_bikes7[i-1]) < bikeCheckValLow) {
      value +=1;
    } else if ((unixTimes_bikes7[i] - unixTimes_bikes7[i-1]) > bikeCheckValLow) {
      bikesCheckedValues7.append(value);
      value = 0;
    }
  }
  for (int i = 1; i < unixTimes_bikes8.length; i++) {
    if ((unixTimes_bikes8[i] - unixTimes_bikes8[i-1]) < bikeCheckValLow) {
      value +=1;
    } else if ((unixTimes_bikes8[i] - unixTimes_bikes8[i-1]) > bikeCheckValLow) {
      bikesCheckedValues8.append(value);
      value = 0;
    }
  }
  for (int i = 1; i < unixTimes_bikes9.length; i++) {
    if ((unixTimes_bikes9[i] - unixTimes_bikes9[i-1]) < bikeCheckValLow) {
      value +=1;
    } else if ((unixTimes_bikes9[i] - unixTimes_bikes9[i-1]) > bikeCheckValLow) {
      bikesCheckedValues9.append(value);
      value = 0;
    }
  }
  for (int i = 1; i < unixTimes_bikes10.length; i++) {
    if ((unixTimes_bikes10[i] - unixTimes_bikes10[i-1]) < bikeCheckValHigh) {
      value +=1;
    } else if ((unixTimes_bikes10[i] - unixTimes_bikes10[i-1]) > bikeCheckValHigh) {
      bikesCheckedValues10.append(value);
      value = 0;
    }
  }
  for (int i = 1; i < unixTimes_bikes11.length; i++) {
    if ((unixTimes_bikes11[i] - unixTimes_bikes11[i-1]) < bikeCheckValLow) {
      value +=1;
    } else if ((unixTimes_bikes11[i] - unixTimes_bikes11[i-1]) > bikeCheckValLow) {
      bikesCheckedValues11.append(value);
      value = 0;
    }
  }


  int[] smallValues1 = checkedValues1.array();                     // move the checkedValues list into an integer array
  int[] smallValues2 = checkedValues2.array();
  int[] smallValues3 = checkedValues3.array();
  int[] smallValues4 = checkedValues4.array();
  int[] smallValues5 = checkedValues5.array();
  int[] smallValues6 = checkedValues6.array();
  int[] smallValues7 = checkedValues7.array();
  int[] smallValues8 = checkedValues8.array();
  int[] smallValues9 = checkedValues9.array();
  int[] smallValues10 = checkedValues10.array();
  int[] smallValues11 = checkedValues11.array();

  int[] vansSmallValues1 = vansCheckedValues1.array();                     
  int[] vansSmallValues2 = vansCheckedValues2.array();
  int[] vansSmallValues3 = vansCheckedValues3.array();
  int[] vansSmallValues4 = vansCheckedValues4.array();
  int[] vansSmallValues5 = vansCheckedValues5.array();
  int[] vansSmallValues6 = vansCheckedValues6.array();
  int[] vansSmallValues7 = vansCheckedValues7.array();
  int[] vansSmallValues8 = vansCheckedValues8.array();
  int[] vansSmallValues9 = vansCheckedValues9.array();
  int[] vansSmallValues10 = vansCheckedValues10.array();
  int[] vansSmallValues11 = vansCheckedValues11.array();

  int[] HGVsSmallValues1 = HGVsCheckedValues1.array();                     
  int[] HGVsSmallValues2 = HGVsCheckedValues2.array();
  int[] HGVsSmallValues3 = HGVsCheckedValues3.array();
  int[] HGVsSmallValues4 = HGVsCheckedValues4.array();
  int[] HGVsSmallValues5 = HGVsCheckedValues5.array();
  int[] HGVsSmallValues6 = HGVsCheckedValues6.array();
  int[] HGVsSmallValues7 = HGVsCheckedValues7.array();
  int[] HGVsSmallValues8 = HGVsCheckedValues8.array();
  int[] HGVsSmallValues9 = HGVsCheckedValues9.array();
  int[] HGVsSmallValues10 = HGVsCheckedValues10.array();
  int[] HGVsSmallValues11 = HGVsCheckedValues11.array();

  int[] bikesSmallValues1 = bikesCheckedValues1.array();                   
  int[] bikesSmallValues2 = bikesCheckedValues2.array();
  int[] bikesSmallValues3 = bikesCheckedValues3.array();
  int[] bikesSmallValues4 = bikesCheckedValues4.array();
  int[] bikesSmallValues5 = bikesCheckedValues5.array();
  int[] bikesSmallValues6 = bikesCheckedValues6.array();
  int[] bikesSmallValues7 = bikesCheckedValues7.array();
  int[] bikesSmallValues8 = bikesCheckedValues8.array();
  int[] bikesSmallValues9 = bikesCheckedValues9.array();
  int[] bikesSmallValues10 = bikesCheckedValues10.array();
  int[] bikesSmallValues11 = bikesCheckedValues11.array();

  drawIt(smallValues1, smallValues2, smallValues3,           // Pass all arrays into the next drawing function
    smallValues4, smallValues5, smallValues6, 
    smallValues7, smallValues8, smallValues9, 
    smallValues10, smallValues11, 

    vansSmallValues1, vansSmallValues2, vansSmallValues3, 
    vansSmallValues4, vansSmallValues5, vansSmallValues6, 
    vansSmallValues7, vansSmallValues8, vansSmallValues9, 
    vansSmallValues10, vansSmallValues11, 

    HGVsSmallValues1, HGVsSmallValues2, HGVsSmallValues3, 
    HGVsSmallValues4, HGVsSmallValues5, HGVsSmallValues6, 
    HGVsSmallValues7, HGVsSmallValues8, HGVsSmallValues9, 
    HGVsSmallValues10, HGVsSmallValues11, 

    bikesSmallValues1, bikesSmallValues2, bikesSmallValues3, 
    bikesSmallValues4, bikesSmallValues5, bikesSmallValues6, 
    bikesSmallValues7, bikesSmallValues8, bikesSmallValues9, 
    bikesSmallValues10, bikesSmallValues11);                                           
  redraw();                                                                            // force redrawing the screen
}


void drawIt(int[] smallValues1, int[] smallValues2, int[] smallValues3, 
  int[] smallValues4, int[] smallValues5, int[] smallValues6, 
  int[] smallValues7, int[] smallValues8, int[] smallValues9, 
  int[] smallValues10, int[] smallValues11, 

  int[] vansSmallValues1, int[] vansSmallValues2, int[] vansSmallValues3, 
  int[] vansSmallValues4, int[] vansSmallValues5, int[] vansSmallValues6, 
  int[] vansSmallValues7, int[] vansSmallValues8, int[] vansSmallValues9, 
  int[] vansSmallValues10, int[] vansSmallValues11, 

  int[] HGVsSmallValues1, int[] HGVsSmallValues2, int[] HGVsSmallValues3, 
  int[] HGVsSmallValues4, int[] HGVsSmallValues5, int[] HGVsSmallValues6, 
  int[] HGVsSmallValues7, int[] HGVsSmallValues8, int[] HGVsSmallValues9, 
  int[] HGVsSmallValues10, int[] HGVsSmallValues11, 

  int[] bikesSmallValues1, int[] bikesSmallValues2, int[] bikesSmallValues3, 
  int[] bikesSmallValues4, int[] bikesSmallValues5, int[] bikesSmallValues6, 
  int[] bikesSmallValues7, int[] bikesSmallValues8, int[] bikesSmallValues9, 
  int[] bikesSmallValues10, int[] bikesSmallValues11) {  

  colorMode(RGB, 255, 255, 255, 255);
  rectMode(CORNER);                                               // top left corner
  background(0, 0);

  int overallMax1 = max(smallValues1);                              // get highest value in the smallValues array passed in from previous function
  int overallMax2 = max(smallValues2);
  int overallMax3 = max(smallValues3);
  int overallMax4 = max(smallValues4);
  int overallMax5 = max(smallValues5);
  int overallMax6 = max(smallValues6);
  int overallMax7 = max(smallValues7);
  int overallMax8 = max(smallValues8);
  int overallMax9 = max(smallValues9);
  int overallMax10 = max(smallValues10);
  int overallMax11 = max(smallValues11);

  int vansOverallMax1 = max(vansSmallValues1);                              
  int vansOverallMax2 = max(vansSmallValues2);
  int vansOverallMax3 = max(vansSmallValues3);
  int vansOverallMax4 = max(vansSmallValues4);
  int vansOverallMax5 = max(vansSmallValues5);
  int vansOverallMax6 = max(vansSmallValues6);
  int vansOverallMax7 = max(vansSmallValues7);
  int vansOverallMax8 = max(vansSmallValues8);
  int vansOverallMax9 = max(vansSmallValues9);
  int vansOverallMax10 = max(vansSmallValues10);
  int vansOverallMax11 = max(vansSmallValues11);

  int HGVsOverallMax1 = max(HGVsSmallValues1);                              
  int HGVsOverallMax2 = max(HGVsSmallValues2);
  int HGVsOverallMax3 = max(HGVsSmallValues3);
  int HGVsOverallMax4 = max(HGVsSmallValues4);
  int HGVsOverallMax5 = max(HGVsSmallValues5);
  int HGVsOverallMax6 = max(HGVsSmallValues6);
  int HGVsOverallMax7 = max(HGVsSmallValues7);
  int HGVsOverallMax8 = max(HGVsSmallValues8);
  int HGVsOverallMax9 = max(HGVsSmallValues9);
  int HGVsOverallMax10 = max(HGVsSmallValues10);
  int HGVsOverallMax11 = max(HGVsSmallValues11);

  int bikesOverallMax1 = max(bikesSmallValues1);                              
  int bikesOverallMax2 = max(bikesSmallValues2);
  int bikesOverallMax3 = max(bikesSmallValues3);
  int bikesOverallMax4 = max(bikesSmallValues4);
  int bikesOverallMax5 = max(bikesSmallValues5);
  int bikesOverallMax6 = max(bikesSmallValues6);
  int bikesOverallMax7 = max(bikesSmallValues7);
  int bikesOverallMax8 = max(bikesSmallValues8);
  int bikesOverallMax9 = max(bikesSmallValues9);
  int bikesOverallMax10 = max(bikesSmallValues10);
  int bikesOverallMax11 = max(bikesSmallValues11);
  
  float spacing = width / 11;                        // Define spacing variable, this represents number of days recorded
  
  int alpha = 30;
  int size = 2;
  int redSize = 1;
  int cars = 255;
  int vans = 255;
  float HGVAlpha = 0.25;
  
  ellipseMode(CORNER);
  
  ////////
  // COLUMN 1
  for (int i = 0; i < HGVsSmallValues1.length; i++) {                          // Draw HGVs first
    pushMatrix();
    float coloured = map(HGVsSmallValues1[i], 0, HGVsOverallMax1, 0, 255);     // Map each index of the HGVs small values array, to a number between 0 and 255
    float location = map(i, 0, HGVsSmallValues1.length, 0, height);            // Map the index number to the height of the screen
    float expScaled = logY(i+1, coloured);                                     // return the log of i, and the coloured variable
    color HGV = color(0, 0, 255*expScaled, coloured * HGVAlpha);               // Use the log to control how much Green is coming through into the image, 
    fill(HGV);                                                                 // use HGVAlpha variable to control the Alpha
    noStroke();                                                                                   
    ellipse(0, location, spacing, size);                                       // Draw ellipses
    popMatrix();
  }
  for (int i = 0; i < bikesSmallValues1.length; i++) {                         // Darw bikes second
    pushMatrix();
    float coloured = map(bikesSmallValues1[i], 0, bikesOverallMax1, 0, 255);  
    float location = map(i, 0, bikesSmallValues1.length, 0, height);    
    color bike = color(255, 255, 255, coloured* 0.15);                         // Bikes are a drop out colour, used to brighten areas of the image
    fill(bike);                                
    noStroke();                                                   
    ellipse(0, location, spacing, size);
    popMatrix();
  }
  for (int i = 0; i < smallValues1.length; i++) {                              // Draw cars third
    pushMatrix();
    float coloured = map(smallValues1[i], 0, overallMax1, 0, 255);  
    float location = map(i, 0, smallValues1.length, 0, height);    
    fill(cars, 0, 0, coloured/alpha);                                          // Cars are red
    noStroke();                                                  
    ellipse(0, location, spacing, redSize);
    popMatrix();
  }
  for (int i = 0; i < vansSmallValues1.length; i++) {                          // Finally, daw Vans last
    pushMatrix();
    float coloured = map(vansSmallValues1[i], 0, vansOverallMax1, 0, 255);  
    float location = map(i, 0, vansSmallValues1.length, 0, height);    
    fill(0, vans, 0, coloured /alpha);                                         // Vans are green
    noStroke();                                                   
    ellipse(0, location, spacing, size);
    popMatrix();
  }
  
  //////// 
  // COLUMN 2                                                                  // Begin next column
  for (int i = 0; i < HGVsSmallValues2.length; i++) {
    pushMatrix();
    float coloured = map(HGVsSmallValues2[i], 0, HGVsOverallMax2, 0, 255);  
    float location = map(i, 0, HGVsSmallValues2.length, 0, height);
    float expScaled = logY(i+1, coloured);
    color HGV = color(0, 0, 255*expScaled, coloured * HGVAlpha);
    fill(HGV);                         
    noStroke();                                                   
    ellipse(spacing, location, spacing, size);
    popMatrix();
  }
  for (int i = 0; i < bikesSmallValues2.length; i++) {
    pushMatrix();
    float coloured = map(bikesSmallValues2[i], 0, bikesOverallMax2, 0, 255);  
    float location = map(i, 0, bikesSmallValues2.length, 0, height);    
    color bike = color(255, 255, 255, coloured* 0.15);
    fill(bike);
    noStroke();                                                   
    ellipse(spacing, location, spacing, size);
    popMatrix();
  }
  for (int i = 0; i < smallValues2.length; i++) {
    pushMatrix();
    float coloured = map(smallValues2[i], 0, overallMax2, 0, 255);  
    float location = map(i, 0, smallValues2.length, 0, height);    
    fill(cars, 0, 0, coloured / alpha);                             
    noStroke();                                                   
    ellipse(spacing, location, spacing, redSize);
    popMatrix();
  }
  for (int i = 0; i < vansSmallValues2.length; i++) {
    pushMatrix();
    float coloured = map(vansSmallValues2[i], 0, vansOverallMax2, 0, 255);  
    float location = map(i, 0, vansSmallValues2.length, 0, height);    
    fill(0, vans, 0, coloured /alpha);                           
    noStroke();                                                   
    ellipse(spacing, location, spacing, size);
    popMatrix();
  }


  ////////
  // COLUMN 3
  for (int i = 0; i < HGVsSmallValues3.length; i++) {    
    pushMatrix();
    float coloured = map(HGVsSmallValues3[i], 0, HGVsOverallMax3, 0, 255);  
    float location = map(i, 0, HGVsSmallValues3.length, 0, height);
    float expScaled = logY(i+1, coloured);
    color HGV = color(0, 0, 255*expScaled, coloured * HGVAlpha);
    fill(HGV);                         
    noStroke();                                                   
    ellipse((spacing*2), location, spacing, size);      
    popMatrix();
  }
  for (int i = 0; i < bikesSmallValues3.length; i++) {    
    pushMatrix();
    float coloured = map(bikesSmallValues3[i], 0, bikesOverallMax3, 0, 255);  
    float location = map(i, 0, bikesSmallValues3.length, 0, height);    
    color bike = color(255, 255, 255, coloured* 0.15);
    fill(bike);               
    noStroke();                                                    
    ellipse((spacing*2), location, spacing, size);      
    popMatrix();
  }
  for (int i = 0; i < smallValues3.length; i++) {    
    pushMatrix();
    float coloured = map(smallValues3[i], 0, overallMax3, 0, 255);  
    float location = map(i, 0, smallValues3.length, 0, height);    
    fill(cars, 0, 0, coloured / alpha);                                 
    noStroke();                                                   
    ellipse((spacing*2), location, spacing, redSize);      
    popMatrix();
  }
  for (int i = 0; i < vansSmallValues3.length; i++) {    
    pushMatrix();
    float coloured = map(vansSmallValues3[i], 0, vansOverallMax3, 0, 255);  
    float location = map(i, 0, vansSmallValues3.length, 0, height);    
    fill(0, vans, 0, coloured /alpha);                                 
    noStroke();                                                   
    ellipse((spacing*2), location, spacing, size);      
    popMatrix();
  }

  ////////
  // COLUMN 4
  for (int i = 0; i < HGVsSmallValues4.length; i++) {   
    pushMatrix();
    float coloured = map(HGVsSmallValues4[i], 0, HGVsOverallMax4, 0, 255);  
    float location = map(i, 0, HGVsSmallValues4.length, 0, height);
    float expScaled = logY(i+1, coloured);
    color HGV = color(0, 0, 255*expScaled, coloured * HGVAlpha);
    fill(HGV);                           
    noStroke();                                                   
    ellipse((spacing*3), location, spacing, size);
    popMatrix();
  }
  for (int i = 0; i < bikesSmallValues4.length; i++) {   
    pushMatrix();
    float coloured = map(bikesSmallValues4[i], 0, bikesOverallMax4, 0, 255);  
    float location = map(i, 0, bikesSmallValues4.length, 0, height);    
    color bike = color(255, 255, 255, coloured* 0.15);
    fill(bike);                           
    noStroke();                                                   
    ellipse((spacing*3), location, spacing, size);
    popMatrix();
  }
  for (int i = 0; i < smallValues4.length; i++) {   
    pushMatrix();
    float coloured = map(smallValues4[i], 0, overallMax4, 0, 255);  
    float location = map(i, 0, smallValues4.length, 0, height);    
    fill(cars, 0, 0, coloured / alpha);                                 
    noStroke();                                                   
    ellipse((spacing*3), location, spacing, redSize);
    popMatrix();
  }
  for (int i = 0; i < vansSmallValues4.length; i++) {   
    pushMatrix();
    float coloured = map(vansSmallValues4[i], 0, vansOverallMax4, 0, 255);  
    float location = map(i, 0, vansSmallValues4.length, 0, height);    
    fill(0, vans, 0, coloured /alpha);                              
    noStroke();                                                   
    ellipse((spacing*3), location, spacing, size);
    popMatrix();
  }

  ////////
  // COLUMN 5
  for (int i = 0; i < HGVsSmallValues5.length; i++) {   
    pushMatrix();
    float coloured = map(HGVsSmallValues5[i], 0, HGVsOverallMax5, 0, 255);  
    float location = map(i, 0, HGVsSmallValues5.length, 0, height);
    float expScaled = logY(i+1, coloured);
    color HGV = color(0, 0, 255*expScaled, coloured * HGVAlpha);
    fill(HGV);                           
    noStroke();                                                   
    ellipse((spacing*4), location, spacing, size);
    popMatrix();
  }
  for (int i = 0; i < bikesSmallValues5.length; i++) {   
    pushMatrix();
    float coloured = map(bikesSmallValues5[i], 0, bikesOverallMax5, 0, 255);  
    float location = map(i, 0, bikesSmallValues5.length, 0, height);    
    color bike = color(255, 255, 255, coloured* 0.15);
    fill(bike);                           
    noStroke();                                                   
    ellipse((spacing*4), location, spacing, size);
    popMatrix();
  }
  for (int i = 0; i < smallValues5.length; i++) {   
    pushMatrix();
    float coloured = map(smallValues5[i], 0, overallMax5, 0, 255);  
    float location = map(i, 0, smallValues5.length, 0, height);    
    fill(cars, 0, 0, coloured / alpha);                                 
    noStroke();                                                   
    ellipse((spacing*4), location, spacing, redSize);
    popMatrix();
  }
  for (int i = 0; i < vansSmallValues5.length; i++) {   
    pushMatrix();
    float coloured = map(vansSmallValues5[i], 0, vansOverallMax5, 0, 255);  
    float location = map(i, 0, vansSmallValues5.length, 0, height);    
    fill(0, vans, 0, coloured /alpha);                              
    noStroke();                                                   
    ellipse((spacing*4), location, spacing, size);
    popMatrix();
  }

  ////////
  // COLUMN 6
  for (int i = 0; i < HGVsSmallValues6.length; i++) {   
    pushMatrix();
    float coloured = map(HGVsSmallValues6[i], 0, HGVsOverallMax6, 0, 255);  
    float location = map(i, 0, HGVsSmallValues6.length, 0, height);
    float expScaled = logY(i+1, coloured);
    color HGV = color(0, 0, 255*expScaled, coloured * HGVAlpha);
    fill(HGV);                           
    noStroke();                                                   
    ellipse((spacing*5), location, spacing, size);
    popMatrix();
  }
  for (int i = 0; i < bikesSmallValues6.length; i++) {   
    pushMatrix();
    float coloured = map(bikesSmallValues6[i], 0, bikesOverallMax6, 0, 255);  
    float location = map(i, 0, bikesSmallValues6.length, 0, height);    
    color bike = color(255, 255, 255, coloured* 0.15);
    fill(bike);                           
    noStroke();                                                   
    ellipse((spacing*5), location, spacing, size);
    popMatrix();
  }
  for (int i = 0; i < smallValues6.length; i++) {   
    pushMatrix();
    float coloured = map(smallValues6[i], 0, overallMax6, 0, 255);  
    float location = map(i, 0, smallValues6.length, 0, height);    
    fill(cars, 0, 0, coloured / alpha);                                 
    noStroke();                                                   
    ellipse((spacing*5), location, spacing, redSize);
    popMatrix();
  }
  for (int i = 0; i < vansSmallValues6.length; i++) {   
    pushMatrix();
    float coloured = map(vansSmallValues6[i], 0, vansOverallMax6, 0, 255);  
    float location = map(i, 0, vansSmallValues6.length, 0, height);    
    fill(0, vans, 0, coloured /alpha);                              
    noStroke();                                                   
    ellipse((spacing*5), location, spacing, size);
    popMatrix();
  }

  ////////
  // COLUMN 7
  for (int i = 0; i < HGVsSmallValues7.length; i++) {   
    pushMatrix();
    float coloured = map(HGVsSmallValues7[i], 0, HGVsOverallMax7, 0, 255);  
    float location = map(i, 0, HGVsSmallValues7.length, 0, height);
    float expScaled = logY(i+1, coloured);
    color HGV = color(0, 0, 255*expScaled, coloured * HGVAlpha);
    fill(HGV);                           
    noStroke();                                                   
    ellipse((spacing*6), location, spacing, size);
    popMatrix();
  }
  for (int i = 0; i < bikesSmallValues7.length; i++) {   
    pushMatrix();
    float coloured = map(bikesSmallValues7[i], 0, bikesOverallMax7, 0, 255);  
    float location = map(i, 0, bikesSmallValues7.length, 0, height);    
    color bike = color(255, 255, 255, coloured* 0.15);
    fill(bike);                           
    noStroke();                                                   
    ellipse((spacing*6), location, spacing, size);
    popMatrix();
  }
  for (int i = 0; i < smallValues7.length; i++) {   
    pushMatrix();
    float coloured = map(smallValues7[i], 0, overallMax7, 0, 255);  
    float location = map(i, 0, smallValues7.length, 0, height);    
    fill(cars, 0, 0, coloured / alpha);                                 
    noStroke();                                                   
    ellipse((spacing*6), location, spacing, redSize);
    popMatrix();
  }
  for (int i = 0; i < vansSmallValues7.length; i++) {   
    pushMatrix();
    float coloured = map(vansSmallValues7[i], 0, vansOverallMax7, 0, 255);  
    float location = map(i, 0, vansSmallValues7.length, 0, height);    
    fill(0, vans, 0, coloured /alpha);                              
    noStroke();                                                   
    ellipse((spacing*6), location, spacing, size);
    popMatrix();
  }

  ////////
  // COLUMN 8
  for (int i = 0; i < HGVsSmallValues8.length; i++) {   
    pushMatrix();
    float coloured = map(HGVsSmallValues8[i], 0, HGVsOverallMax8, 0, 255);  
    float location = map(i, 0, HGVsSmallValues8.length, 0, height);
    float expScaled = logY(i+1, coloured);
    color HGV = color(0, 0, 255*expScaled, coloured * HGVAlpha);
    fill(HGV);                           
    noStroke();                                                   
    ellipse((spacing*7), location, spacing, size);
    popMatrix();
  }
  for (int i = 0; i < bikesSmallValues8.length; i++) {   
    pushMatrix();
    float coloured = map(bikesSmallValues8[i], 0, bikesOverallMax8, 0, 255);  
    float location = map(i, 0, bikesSmallValues8.length, 0, height);    
    color bike = color(255, 255, 255, coloured* 0.15);
    fill(bike);                           
    noStroke();                                                   
    ellipse((spacing*7), location, spacing, size);
    popMatrix();
  }
  for (int i = 0; i < smallValues8.length; i++) {   
    pushMatrix();
    float coloured = map(smallValues8[i], 0, overallMax8, 0, 255);  
    float location = map(i, 0, smallValues8.length, 0, height);    
    fill(cars, 0, 0, coloured / alpha);                                 
    noStroke();                                                   
    ellipse((spacing*7), location, spacing, redSize);
    popMatrix();
  }
  for (int i = 0; i < vansSmallValues8.length; i++) {   
    pushMatrix();
    float coloured = map(vansSmallValues8[i], 0, vansOverallMax8, 0, 255);  
    float location = map(i, 0, vansSmallValues8.length, 0, height);    
    fill(0, vans, 0, coloured /alpha);                              
    noStroke();                                                   
    ellipse((spacing*7), location, spacing, size);
    popMatrix();
  }

  ////////
  // COLUMN 9
  for (int i = 0; i < HGVsSmallValues9.length; i++) {   
    pushMatrix();
    float coloured = map(HGVsSmallValues9[i], 0, HGVsOverallMax9, 0, 255);  
    float location = map(i, 0, HGVsSmallValues9.length, 0, height);
    float expScaled = logY(i+1, coloured);
    color HGV = color(0, 0, 255*expScaled, coloured * HGVAlpha);
    fill(HGV);                           
    noStroke();                                                   
    ellipse((spacing*8), location, spacing, size);
    popMatrix();
  }
  for (int i = 0; i < bikesSmallValues9.length; i++) {   
    pushMatrix();
    float coloured = map(bikesSmallValues9[i], 0, bikesOverallMax9, 0, 255);  
    float location = map(i, 0, bikesSmallValues9.length, 0, height);    
    color bike = color(255, 255, 255, coloured* 0.15);
    fill(bike);                           
    noStroke();                                                   
    ellipse((spacing*8), location, spacing, size);
    popMatrix();
  }
  for (int i = 0; i < smallValues9.length; i++) {   
    pushMatrix();
    float coloured = map(smallValues9[i], 0, overallMax9, 0, 255);  
    float location = map(i, 0, smallValues9.length, 0, height);    
    fill(cars, 0, 0, coloured / alpha);                                 
    noStroke();                                                   
    ellipse((spacing*8), location, spacing, redSize);
    popMatrix();
  }
  for (int i = 0; i < vansSmallValues9.length; i++) {   
    pushMatrix();
    float coloured = map(vansSmallValues9[i], 0, vansOverallMax9, 0, 255);  
    float location = map(i, 0, vansSmallValues9.length, 0, height);    
    fill(0, vans, 0, coloured /alpha);                              
    noStroke();                                                   
    ellipse((spacing*8), location, spacing, size);
    popMatrix();
  }


  ////////
  // COLUMN 10
  for (int i = 0; i < HGVsSmallValues10.length; i++) {   
    pushMatrix();
    float coloured = map(HGVsSmallValues10[i], 0, HGVsOverallMax10, 0, 255);  
    float location = map(i, 0, HGVsSmallValues10.length, 0, height);
    float expScaled = logY(i+1, coloured);
    color HGV = color(0, 0, 255*expScaled, coloured * HGVAlpha);
    fill(HGV);                          
    noStroke();                                                   
    ellipse((spacing*9), location, spacing, size);
    popMatrix();
  }
  for (int i = 0; i < bikesSmallValues10.length; i++) {   
    pushMatrix();
    float coloured = map(bikesSmallValues10[i], 0, bikesOverallMax10, 0, 255);  
    float location = map(i, 0, bikesSmallValues10.length, 0, height);    
    color bike = color(255, 255, 255, coloured* 0.15);
    fill(bike);                           
    noStroke();                                                   
    ellipse((spacing*9), location, spacing, size);
    popMatrix();
  }
  for (int i = 0; i < smallValues10.length; i++) {   
    pushMatrix();
    float coloured = map(smallValues10[i], 0, overallMax10, 0, 255);  
    float location = map(i, 0, smallValues10.length, 0, height);    
    fill(cars, 0, 0, coloured / alpha);                                 
    noStroke();                                                   
    ellipse((spacing*9), location, spacing, redSize);
    popMatrix();
  }
  for (int i = 0; i < vansSmallValues10.length; i++) {   
    pushMatrix();
    float coloured = map(vansSmallValues10[i], 0, vansOverallMax10, 0, 255);  
    float location = map(i, 0, vansSmallValues10.length, 0, height);    
    fill(0, vans, 0, coloured /alpha);                              
    noStroke();                                                   
    ellipse((spacing*9), location, spacing, size);
    popMatrix();
  }

  ////////
  // COLUMN 11
  for (int i = 0; i < HGVsSmallValues11.length; i++) {   
    pushMatrix();
    float coloured = map(HGVsSmallValues11[i], 0, HGVsOverallMax11, 0, 255);  
    float location = map(i, 0, HGVsSmallValues11.length, 0, height);
    float expScaled = logY(i+1, coloured);
    color HGV = color(0, 0, 255*expScaled, coloured * HGVAlpha);
    fill(HGV);                        
    noStroke();                                                   
    ellipse((spacing*10), location, spacing, size);
    popMatrix();
  }
  for (int i = 0; i < bikesSmallValues11.length; i++) {   
    pushMatrix();
    float coloured = map(bikesSmallValues11[i], 0, bikesOverallMax11, 0, 255);  
    float location = map(i, 0, bikesSmallValues11.length, 0, height);    
    color bike = color(255, 255, 255, coloured* 0.15);
    fill(bike);                           
    noStroke();                                                   
    ellipse((spacing*10), location, spacing, size);
    popMatrix();
  }
  for (int i = 0; i < smallValues11.length; i++) {   
    pushMatrix();
    float coloured = map(smallValues11[i], 0, overallMax11, 0, 255);  
    float location = map(i, 0, smallValues11.length, 0, height);    
    fill(cars, 0, 0, coloured / alpha);                                 
    noStroke();                                                   
    ellipse((spacing*10), location, spacing, redSize);
    popMatrix();
  }
  for (int i = 0; i < vansSmallValues11.length; i++) {   
    pushMatrix();
    float coloured = map(vansSmallValues11[i], 0, vansOverallMax11, 0, 255);  
    float location = map(i, 0, vansSmallValues11.length, 0, height);    
    fill(0, vans, 0, coloured /alpha);                              
    noStroke();                                                   
    ellipse((spacing*10), location, spacing, size);
    popMatrix();
  }
  
  fill(255, 255,255, 5);                // Slightly brighten the screen
  rect(0, 0, width, height);
}
