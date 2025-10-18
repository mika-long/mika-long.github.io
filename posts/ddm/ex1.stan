data {
  int<lower=0> N;
  vector[N] x;
}
generated quantities {
  // draw mu and sigma from prior 
  real mu = normal_rng(4, 2);
  real sigma = normal_rng(5, 1); 
  // mu = normal_rng(4, 2); 
  // sigma = normal_rng(3, 1); 
  
  // generated simulated data 
  array[N] real y_sim; 
  for (n in 1:N){
    y_sim[n] = normal_rng(mu, sigma);
  }
}
