# Construal in language: a visual-world approach to the effects of linguistic alternations on event perception and conception

<br>

This repository contains scripts for the analyses reported in

> Divjak, D., Milin, P., and Medimorec, S. (2020). Construal in language: A visual-world approach to the effects of linguistic alternations on event perception and conception. *Cognitive Linguistics, 31*(1).

    <HTTP WILL BE ADDED SOON>

The paper-package is split into `R` script files which are hosted here on **GitHub** and the supporting datasets in `csv` format are available at

    [University of Birmingham UBIRA eData platform](https://doi.org/10.25500/edata.bham.00000385)

The study contains several analyses, as is typical for studies that report eye-movement data. Each part of the analysis is kept in a separate `R` script file and a corresponding data file. Script and data files parallel the analytic steps in the following order:

<table border="1" cellspacing="1" cellpadding="0">
    <tbody>
        <tr>
            <td width="140">
                <p align="center">
                    Paper section
                </p>
            </td>
            <td width="229">
                <p align="center">
                    R scripts
                </p>
            </td>
            <td width="232">
                <p align="center">
                    Data files
                </p>
            </td>
        </tr>
        <tr>
            <td width="140" valign="top">
                <p>
                    3.1 Pre-analysing the effect of the experimental
                    manipulation
                </p>
            </td>
            <td width="229" valign="top">
                <p>
                    3.1_ExperimentalManipulation.R
                </p>
            </td>
            <td width="232" valign="top">
                <p>
                    preposition_path_data.csv
                </p>
                <p>
                    voice_path_data.csv
                </p>
                <p>
                    dative_path_data.csv
                </p>
                <p>
                    preposition_pupil_data.csv
                </p>
                <p>
                    voice_pupil_data.csv
                </p>
                <p>
                    dative_pupil_data.csv
                </p>
            </td>
        </tr>
        <tr>
            <td width="140" valign="top">
                <p>
                    3.2 Order of access
                </p>
            </td>
            <td width="229" valign="top">
                <p>
                    3.2_OrderOfAccess.R
                </p>
            </td>
            <td width="232" valign="top">
                <p>
                    preposition_order_data.csv
                </p>
                <p>
                    voice_order_data.csv
                </p>
                <p>
                    dative_order_data.csv
                </p>
            </td>
        </tr>
        <tr>
            <td width="140" valign="top">
                <p>
                    3.3 First run gaze duration
                </p>
                <p>
                    3.4 Total gaze duration per interest area
                </p>
            </td>
            <td width="229" valign="top">
                <p>
                    3.3-4_Durations.R
                </p>
            </td>
            <td width="232" valign="top">
                <p>
                    preposition_first_dwell_data.csv
                </p>
                <p>
                    voice_first_dwell_data.csv
                </p>
                <p>
                    dative_first_dwell_data.csv
                </p>
                <p>
                    preposition_total_dwell_data.csv
                </p>
                <p>
                    voice_total_dwell_data.csv
                </p>
                <p>
                    dative_total_dwell_data.csv
                </p>
            </td>
        </tr>
        <tr>
            <td width="140" valign="top">
                <p>
                    Supplemental materials B
                </p>
            </td>
            <td width="229" valign="top">
                <p>
                    SuplB_CombinedAnalysis.R
                </p>
            </td>
            <td width="232" valign="top">
                <p>
                    combined_analysis.csv
                </p>
            </td>
        </tr>
    </tbody>
</table>

<br>

## Data description

### Dependent variables

`path_power_transformed` - power-transformed (Box-Cox) gaze path length

`pupil_power_transformed` - power-transformed (Box-Cox) average pupil size

`order_of_access` - order of access of the respective interest area

`first_dwell_power_transformed` - power-transformed (Box-Cox) first run dwell time (i.e., gaze duration)

`total_dwell_power_transformed` - power-transformed (Box-Cox) total dwell duration (i.e., total fixation duration)

### Independent Variables

`TrialScaled` - scaled (z-transformed) order of the trial

`Category` - category of constructions (*natural* for naturalistic viewing; PREPOSITION: *typical* and *atypical*; VOICE: *active* and *passive*; DATIVE: *NP* and *PP*)

`CanonicalFirst` - whether the canonical construction (*typical*, *active*, *NP*) is presented before its atypical partner (*atypical*, *passive*, *PP*); this is a binary or dummy coded variable

`InterestArea` - interest area labels (*A*, *B*, *C*)

***Combined independent variables***

`InterestAreaAndCategory` - interaction (combination) of the interest area and the category

### Random Effect Variables

`Item` - experimental items (image/sentence)

`Participant` - participant ID

***Combined random effect variables***

`ParticipantAndInterestAreaPosition` - interaction (combination) of participant and position of the interest area (e.g., *U*, *D*, *L*, *R*, *NO*)

- - -

For further inquires contact: p.milin@bham.ac.uk
