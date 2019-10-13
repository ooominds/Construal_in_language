
require(itsadug) # mgcv lazy-loaded

options(show.signif.stars=FALSE)

############################
### FIRST RUN DWELL TIME ###
############################

### PREPOSITION ###

rm(list=ls()) # clear all
preposition_first_dwell_data = read.csv('preposition_first_dwell_data.csv')
preposition_first_dwell_data$Category = relevel(preposition_first_dwell_data$Category,
    ref='natural')
preposition_first_dwell_data$InterestArea = relevel(preposition_first_dwell_data$InterestArea,
    ref='A')
preposition_first_dwell_data$CanonicalFirst = relevel(preposition_first_dwell_data$CanonicalFirst,
    ref='yes')

summary(preposition_first_dwell_data.gam <-
        bam(first_dwell_power_transformed ~
    CanonicalFirst +
    Category * InterestArea +
    s(Item, bs='re') +
    s(TrialScaled, Participant, bs='fs', m=1),
    data=preposition_first_dwell_data))

### VOICE ###

rm(list=ls()) # clear all
voice_first_dwell_data = read.csv('voice_first_dwell_data.csv')
voice_first_dwell_data$Category = relevel(voice_first_dwell_data$Category,
    ref='natural')
voice_first_dwell_data$InterestArea = relevel(voice_first_dwell_data$InterestArea,
    ref='A')
voice_first_dwell_data$CanonicalFirst = relevel(voice_first_dwell_data$CanonicalFirst,
    ref='yes')

summary(voice_first_dwell_data.gam <-
        bam(first_dwell_power_transformed ~
    CanonicalFirst +
    Category + InterestArea +
    s(Item, bs='re') +
    s(TrialScaled, Participant, bs='fs', m=1),
    data=voice_first_dwell_data))

### DATIVE ###

rm(list=ls()) # clear all
dative_first_dwell_data = read.csv('dative_first_dwell_data.csv')
dative_first_dwell_data$Category = relevel(dative_first_dwell_data$Category,
    ref='natural')
dative_first_dwell_data$InterestArea = relevel(dative_first_dwell_data$InterestArea,
    ref='A')
dative_first_dwell_data$CanonicalFirst = relevel(dative_first_dwell_data$CanonicalFirst,
    ref='yes')

summary(dative_first_dwell_data.gam <-
        bam(first_dwell_power_transformed ~
    CanonicalFirst +
    Category + InterestArea +
    s(Item, bs='re') +
    s(TrialScaled, Participant, bs='fs', m=1),
    data=dative_first_dwell_data))

###########################
### IA TOTAL DWELL TIME ###
###########################

### PREPOSITION ###

rm(list=ls()) # clear all
preposition_total_dwell_data = read.csv('preposition_total_dwell_data.csv')
preposition_total_dwell_data$Category = relevel(preposition_total_dwell_data$Category,
    ref='natural')
preposition_total_dwell_data$InterestArea = relevel(preposition_total_dwell_data$InterestArea,
    ref='A')
preposition_total_dwell_data$CanonicalFirst = relevel(preposition_total_dwell_data$CanonicalFirst,
    ref='yes')

summary(preposition_total_dwell_data.gam <-
        bam(total_dwell_power_transformed ~
    CanonicalFirst +
    Category * InterestArea +
    s(Item, bs='re') +
    s(TrialScaled, Participant, bs='fs', m=1),
    data=preposition_total_dwell_data))

### VOICE ###

rm(list=ls()) # clear all
voice_total_dwell_data = read.csv('voice_total_dwell_data.csv')
voice_total_dwell_data$Category = relevel(voice_total_dwell_data$Category,
    ref='natural')
voice_total_dwell_data$InterestArea = relevel(voice_total_dwell_data$InterestArea,
    ref='A')
voice_total_dwell_data$CanonicalFirst = relevel(voice_total_dwell_data$CanonicalFirst,
    ref='yes')

summary(voice_total_dwell_data.gam <-
        bam(total_dwell_power_transformed ~
    Category +
    s(Item, bs='re') +
    s(TrialScaled, Participant, bs='fs', m=1),
    data=voice_total_dwell_data))

### DATIVE ###

rm(list=ls()) # clear all
dative_total_dwell_data = read.csv('dative_total_dwell_data.csv')
dative_total_dwell_data$Category = relevel(dative_total_dwell_data$Category,
    ref='natural')
dative_total_dwell_data$InterestArea = relevel(dative_total_dwell_data$InterestArea,
    ref='A')
dative_total_dwell_data$CanonicalFirst = relevel(dative_total_dwell_data$CanonicalFirst,
    ref='yes')

summary(dative_total_dwell_data.gam <-
        bam(total_dwell_power_transformed ~
    CanonicalFirst +
    Category + InterestArea +
    s(Item, bs='re') +
    s(TrialScaled, Participant, bs='fs', m=1),
    data=dative_total_dwell_data))


