#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]){
  FILE *fp, *fp2;
  char str[1024];
  
  if(argc <= 1){
    printf("Input file name!!\n");
  }  
  if((fp = fopen(argv[1], "a")) == NULL){
    printf("Cannot open %s", argv[1]);
  }else if((fp2 = fopen("libmincaml.S", "r")) == NULL){
    printf("Cannot open libmincaml.S");
  }else{
    while(fgets(str, 1024, fp2) != NULL){
      fputs(str, fp);
    }
    fputs("min_caml_end:", fp);
  }
  fclose(fp);
  fclose(fp2);
  return 0;
}
