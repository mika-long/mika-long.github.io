data {
  int<lower=0> N;
  vector[N] x;
}
generated quantities {
  // generated simulated data 
  array[N] real y_sim; 
  for (n in 1:N){
    y_sim[n] = normal_rng(mu, sigma);
  }
}