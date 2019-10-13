
require(itsadug) # mgcv lazy-loaded

options(show.signif.stars=FALSE)

########################
### GAZE PATH LENGTH ###
########################

### PREPOSITION ###

rm(list=ls()) # clear all
preposition_path_data = read.csv('preposition_path_data.csv')
preposition_path_data$Category = relevel(preposition_path_data$Category,
    ref='natural')
preposition_path_data$CanonicalFirst = relevel(preposition_path_data$CanonicalFirst,
    ref='yes')

summary(preposition_path_data.gam <- bam(path_power_transformed ~
    Category * CanonicalFirst +
    s(Item, bs='re') +
    s(Participant, bs='re') +
    s(Participant, CanonicalFirst, bs='re') +
    s(TrialScaled, Participant, bs='fs', m=1),
    data=preposition_path_data))

### VOICE ###

rm(list=ls()) # clear all
voice_path_data = read.csv('voice_path_data.csv')
voice_path_data$Category = relevel(voice_path_data$Category,
    ref='natural')
voice_path_data$CanonicalFirst = relevel(voice_path_data$CanonicalFirst,
    ref='yes')

summary(voice_path_data.gam <- bam(path_power_transformed ~
    Category * CanonicalFirst +
    s(Item, bs='re') +
    s(TrialScaled, Participant, bs='fs', m=1),
    data=voice_path_data))

### DATIVE ###

rm(list=ls()) # clear all
dative_path_data = read.csv('dative_path_data.csv')
dative_path_data$Category = relevel(dative_path_data$Category,
    ref='natural')
dative_path_data$CanonicalFirst = relevel(dative_path_data$CanonicalFirst,
    ref='yes')

summary(dative_path_data.gam <- bam(path_power_transformed ~
    Category * CanonicalFirst +
    s(Item, bs='re') +
    s(TrialScaled, Participant, bs='fs', m=1),
    data=dative_path_data))

##################
### PUPIL SIZE ###
##################

### PREPOSITION ###

rm(list=ls()) # clear all
preposition_pupil_data = read.csv('preposition_pupil_data.csv')
preposition_pupil_data$CanonicalFirst = relevel(preposition_pupil_data$CanonicalFirst,
    ref='yes')

summary(preposition_pupil_data.gam <- bam(pupil_power_transformed ~
    CanonicalFirst +
    s(Item, bs='re') +
    s(Participant, bs='re') +
    s(Participant, CanonicalFirst, bs='re') +
    s(TrialScaled, Participant, bs='fs', m=1),
    data=preposition_pupil_data))

### VOICE ###

rm(list=ls()) # clear all
voice_pupil_data = read.csv('voice_pupil_data.csv')
voice_pupil_data$Category = relevel(voice_pupil_data$Category,
    ref='natural')
voice_pupil_data$CanonicalFirst = relevel(voice_pupil_data$CanonicalFirst,
    ref='yes')

summary(voice_pupil_data.gam <- bam(pupil_power_transformed ~
    Category * CanonicalFirst +
    InterestArea +
    s(Item, bs='re') +
    s(Participant, bs='re') +
    s(Participant, CanonicalFirst, bs='re') +
    s(TrialScaled, Participant, bs='fs', m=1),
    data=voice_pupil_data))

### DATIVE ###

rm(list=ls()) # clear all
dative_pupil_data = read.csv('dative_pupil_data.csv')
dative_pupil_data$Category = relevel(dative_pupil_data$Category,
    ref='natural')
dative_pupil_data$CanonicalFirst = relevel(dative_pupil_data$CanonicalFirst,
    ref='yes')

summary(dative_pupil_data.gam <- bam(pupil_power_transformed ~
    Category * CanonicalFirst +
    InterestArea +
    s(Item, bs='re') +
    s(Participant, bs='re') +
    s(Participant, CanonicalFirst, bs='re') +
    s(TrialScaled, Participant, bs='fs', m=1),
    data=dative_pupil_data))


