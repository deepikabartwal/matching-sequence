#! /usr/bin/awk

BEGIN{
  FS=" "
}
{
  if($1==1){
    array1[substr($2,length($2)-3,length($2))]=$2
  }
  else{
    array2[substr($2,1,4)]=substr($2,5,length($2))
}
}
END{
  for(key in array1)  
  for(alpha in array2){
    if(key==alpha){
      print array1[key]array2[alpha]
  }
}
}
