#! /usr/bin/awk 

BEGIN{
  FS=" "
}
($1==1){
  junction=substr($2,length($2)-3)
  sequence1[junction]=substr($2,1,length($2)-4)
}
($1==2){
  if(junction==substr($2,1,4)
     print sequence1[junction]$2
}
