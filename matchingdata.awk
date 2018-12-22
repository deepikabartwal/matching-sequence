#! /usr/bin/awk

BEGIN{
  FS=" "
}

($1==1){
  junction=substr($2,length($2)-3,length($2))
  array1[junction]=$2
} 

($1==2) {
  junction=substr($2,1,4)
  array2[junction]=substr($2,5,length($2))
}

END{
  for(key in array1)  
    for(alpha in array2){
      if(key==alpha){
        print array1[key]array2[alpha]
      }
    }
  }
