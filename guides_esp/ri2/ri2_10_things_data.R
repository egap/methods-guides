rm(list = ls())

library(fabricatr)
library(randomizr)
library(ri2)
library(readr)
library(dplyr)
set.seed(343)

sat <- function(x){x <- round(x); x[x>1600] <- 1600; return(x)}

dat <-
  fabricate(
    schools = add_level(20, 
                        high_quality = rbinom(N, 1, .5), 
                        professionalism = sample(1:10, N, replace = TRUE)),
    students = add_level(10, 
                         PSAT = sat(rnorm(N, mean = 1000, sd = 200)),
                         D0 = rep(0, N),
                         D1 = rbinom(n = N, size = 1, prob = .90),
                         Y0 = sat(PSAT + 10*professionalism + rnorm(N, 0, 30)),
                         Y1 = sat(Y0 + 50 + 50 * high_quality),
                         Y2 = sat(Y0 + 75 + rnorm(N, 0, 25))
    )
  )


# complete ----------------------------------------------------------------

declaration <- declare_ra(N = nrow(dat))

complete_dat <-
  within(dat, {
    Z <- conduct_ra(declaration)
    D <- D0 * (1 - Z) + D1 * Z
    Y <- Y0 * (1 - D) + Y1 * D
  }) %>%
  select(-Y0, -Y1, -Y2, -D0, -D1)
  

# blocked -----------------------------------------------------------------

declaration <- declare_ra(blocks = dat$schools)

blocked_dat <-
  within(dat, {
    Z <- conduct_ra(declaration)
    D <- D0 * (1 - Z) + D1 * Z
    Y <- Y0 * (1 - D) + Y1 * D
  }) %>%
  select(-Y0, -Y1, -Y2, -D0, -D1)


# Clustered ---------------------------------------------------------------

declaration <- declare_ra(clusters = dat$schools)

clustered_dat <-
  within(dat, {
    Z <- conduct_ra(declaration)
    D <- D0 * (1 - Z) + D1 * Z
    Y <- Y0 * (1 - D) + Y1 * D
  }) %>%
  select(-Y0, -Y1, -Y2, -D0, -D1)



# Three arm ---------------------------------------------------------------

declaration <- declare_ra(N = 200, condition_names = c("Control", "Treatment 1", "Treatment 2"))

three_arm_dat <-
  within(dat, {
    Z <- conduct_ra(declaration)
    Y <- rep(NA, 200)
    Y[Z == "Control"] <- Y0[Z == "Control"]
    Y[Z == "Treatment 1"] <- Y0[Z == "Treatment 1"]
    Y[Z == "Treatment 2"] <- Y0[Z == "Treatment 2"]
  }) %>%
  select(-Y0, -Y1, -Y2, -D0, -D1)



write_csv(complete_dat, "complete_dat.csv")
write_csv(blocked_dat, "blocked_dat.csv")
write_csv(clustered_dat, "clustered_dat.csv")
write_csv(three_arm_dat, "three_arm_dat.csv")

