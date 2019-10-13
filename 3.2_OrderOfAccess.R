
require(itsadug) # mgcv lazy-loaded

options(show.signif.stars=FALSE)

### PREPOSITION ###

rm(list=ls()) # clear all
preposition_order_data = read.csv('preposition_order_data.csv')
preposition_order_data$InterestAreaAndCategory = relevel(preposition_order_data$InterestAreaAndCategory,
    ref='A.natural')
preposition_order_data$CanonicalFirst = relevel(preposition_order_data$CanonicalFirst,
    ref='yes')

summary(preposition_order_data.gam <- bam(order_of_access ~
    InterestAreaAndCategory + CanonicalFirst +
    s(Item, bs='re'),
    data=preposition_order_data,
    family=ocat(R=3)))

### VOICE ###

rm(list=ls()) # clear all
voice_order_data = read.csv('voice_order_data.csv')
voice_order_data$InterestAreaAndCategory = relevel(voice_order_data$InterestAreaAndCategory,
    ref='A.natural')
voice_order_data$CanonicalFirst = relevel(voice_order_data$CanonicalFirst,
    ref='yes')

summary(voice_order_data.gam <- bam(order_of_access ~
    InterestAreaAndCategory + CanonicalFirst +
    s(Item, bs='re') +
    s(ParticipantAndInterestAreaPosition, bs='re') +
    s(ParticipantAndInterestAreaPosition, CanonicalFirst, bs='re'),
    data=voice_order_data,
    family=ocat(R=3)))

### DATIVE ###

rm(list=ls()) # clear all
dative_order_data = read.csv('dative_order_data.csv')
dative_order_data$InterestAreaAndCategory = relevel(dative_order_data$InterestAreaAndCategory,
    ref='A.natural')
dative_order_data$CanonicalFirst = relevel(dative_order_data$CanonicalFirst,
    ref='yes')

summary(dative_order_data.gam <- bam(order_of_access ~
    InterestAreaAndCategory + CanonicalFirst +
    s(Item, bs='re') +
    s(ParticipantAndInterestAreaPosition, bs='re') +
    s(ParticipantAndInterestAreaPosition, CanonicalFirst, bs='re'),
    data=dative_order_data,
    family=ocat(R=3)))


