
require(itsadug) # mgcv lazy-loaded

options(show.signif.stars=FALSE)

rm(list=ls()) # clear all
combined_analysis = read.csv('combined_analysis.csv')
combined_analysis$InterestAreaAndCategory = factor(combined_analysis$InterestAreaAndCategory,
    levels=c('B.dative_NP', 'B.dative_PP', 'A.dative_NP', 'A.dative_PP',
        'A.voice_passive', 'A.voice_active', 'B.preposition_typical',
        'B.voice_active', 'B.preposition_atypical', 'B.voice_passive',
        'A.preposition_atypical', 'A.preposition_typical'))

summary(combined_analysis.gam <- bam(is_first ~
    InterestAreaAndCategory +
    s(Item, bs='re') +
    s(ParticipantAndInterestAreaPosition, bs='re'),
    data=combined_analysis,
    family='binomial',
    method='ML'))


