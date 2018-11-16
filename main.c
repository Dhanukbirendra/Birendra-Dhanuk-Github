#include<stdio.h>
FILE *fout1;
double hermite(int, double);

int main() {
  int i;
  double x;
  fout1=fopen("hermite.dat","w"); 
  for(i=-225;i<=350;i++){
    x=0.01*(double)i;
      fprintf(fout1,"%5.3lf %5.3lf %24.15lf %24.15lf %24.15lf %24.15lf\n",x, hermite(1,x),hermite(2,x),hermite(3,x),hermite(4,x),hermite(5,x));
	}
  fclose(fout1);
 }
 
