
require('tidyverse')

berkeley <- read.table("~/Downloads/berkeley.txt", header=TRUE, colClasses=c("factor", "numeric", "character", "numeric", "character"))

berkeley2 <- berkeley %>%
  mutate(MAdmitted=as.numeric(str_extract(MAdmitted, "\\d+")),
         FAdmitted=as.numeric(str_extract(FAdmitted, "\\d+"))) %>%
  mutate(Mprop = 0.01*MAdmitted,
         Fprop = 0.01*FAdmitted) %>%
  mutate(MAdmitted = as.integer(MApplicants*0.01*MAdmitted),
         FAdmitted = as.integer(FApplicants*0.01*FAdmitted)) %>% 
  mutate(MRejected = MApplicants - MAdmitted,
         FRejected = FApplicants-FAdmitted) %>%
  mutate(TApplicants=MApplicants+FApplicants,
         TAdmitted=MAdmitted+FAdmitted)

berkeley2 %>% select(MApplicants, Mprop, FApplicants, Fprop)
 
# null hypothesis
#  - gender of applicant is independent of admission decision

# Simpson's paradox
# - find a test that says one thing for a group, but opposite thing for subgroup


mat <- matrix(berkeley2 %>% 
                filter(Department=="Berkeley") %>% 
                select(MRejected, MAdmitted, FRejected, FAdmitted) %>%
                unlist(), ncol=2)

chisq.test(mat)

matA <- matrix(berkeley2 %>% 
                 filter(Department=="A") %>% 
                 select(MRejected, MAdmitted, FApplicants, FRejected) %>%
                 unlist(), ncol=2)
chisq.test(matA)

# can look at what is greater or smaller and say that is the direction of the effect


matB <- matrix(berkeley2 %>% 
                 filter(Department=="B") %>% 
                 select(MRejected, MAdmitted, FApplicants, FRejected) %>%
                 unlist(), ncol=2)
chisq.test(matB)


matC <- matrix(berkeley2 %>% 
                 filter(Department=="C") %>% 
                 select(MRejected, MAdmitted, FRejected, FAdmitted) %>%
                 unlist(), ncol=2)
chisq.test(matC)

matD <- matrix(berkeley2 %>% 
                 filter(Department=="D") %>% 
                 select(MRejected, MAdmitted, FRejected, FAdmitted) %>%
                 unlist(), ncol=2)
chisq.test(matD)


matE <- matrix(berkeley2 %>% 
                 filter(Department=="E") %>% 
                 select(MRejected, MAdmitted, FRejected, FAdmitted) %>%
                 unlist(), ncol=2)
chisq.test(matE)

matF <- matrix(berkeley2 %>% 
                 filter(Department=="F") %>% 
                 select(MRejected, MAdmitted, FRejected, FAdmitted) %>%
                 unlist(), ncol=2)
chisq.test(matF)
