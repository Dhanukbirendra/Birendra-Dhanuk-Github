double fact(int);
double pow(double, double);
double hermite(int n, double x) {
  int s;
  double sum;
  sum = 0.0;
  if(n%2 == 0) {
    for(s=0; s<=n/2; s++) {
      sum+=pow(-1.0,(double)s)*pow(2.0*x,(double)n-2.0*(double)s)*fact(n)/
           (fact(n-2*s)*fact(s));
    }

  } else {
    for(s=0; s<=(n-1)/2; s++) {
      sum+=pow(-1.0,(double)s)*pow(2.0*x,(double)n-2.0*(double)s)*fact(n)/
           (fact(n-2*s)*fact(s));
    }
  }
  return sum*fact(n);
 }

