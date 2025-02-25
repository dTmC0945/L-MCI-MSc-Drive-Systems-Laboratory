## Table of Contents <span class="tag" tag-name="TOC_2"><span class="smallcaps">TOC_2</span></span>

- [Lecture Information](#lecture-information)
- [Requirements and the Learning
  Outcomes](#requirements-and-the-learning-outcomes)
- [Grading of the Lecture](#grading-of-the-lecture)
- [Lecture Sources](#lecture-sources)
- [Content and Unit Distribution](#content-and-unit-distribution)
- [Lecture Table of Contents](#lecture-table-of-contents)
- [Related Links](#related-links)

## Lecture Information

The goal of this lecture is to introduce to you the interesting world of
machine control with the use of experimental methods. The student will
apply control methods to motor by using embedded devices and analyse
experimental results with simulations.

A detailed view of the lecture information is as follows.

| INDEX | DESCRIPTION | VALUE | STATUS |
|----|----|----|----|
| 1 | Official Name | Antriebssysteme Labor |  |
| 2 | Lecture Code | ATS | A |
| 3 | Module Code | MECH-M-2-ATS-ATS-LB | A |
| 4 | Degree | M.Sc | A |
| 5 | Program Name | Mechatronik Smart Technologies | A |
| 6 | Lecture Name | Drive System Laboratory |  |
| 7 | Semester | 2 | A |
| 8 | Season | SS | A |
| 9 | Room Type | Laboratory |  |
| 10 | Assignments | Laboratory Report | A |
| 11 | Lecturer(s) | Daniel T. McGuiness, Ph.D, Prof. Bernhard Hollaus, Ph.D |  |
| 12 | Module Responsible | DaM | A |
| 13 | Software | Simulink, MATLAB |  |
| 14 | Hardware | Cypress CY8CKIT |  |
| 15 | SWS Total | 1 | A |
| 16 | SWS Teaching | 0 |  |
| 17 | SWS Tutorial | 0 |  |
| 18 | SWS Laboratory | 1 |  |
| 19 | SWS Project Work | 0 |  |
| 20 | UE Total | 15 | A |
| 26 | ECTS | 2 | A |
| 27 | Lecture Type | LB | A |

## Requirements and the Learning Outcomes

The requirements and the outcome for the lecture are given as follows.

The student should be comfortable with working in an electrical
laboratory and have practical experience working with MATLAB and
SIMULINK along with basic knowledge using the C programming language

| INDEX | REQUIREMENTS | TAUGHT LECTURE | CODE | DEGREE | OUTCOME |
|----|----|----|----|----|----|
| 1 | Laplace Transform | Higher Mathematics I | HMA | M.Sc | Fourier Analysis |
| 2 | Integral Calculus | Higher Mathematics I | HMA | M.Sc | MATLAB/SIMULINK Programming |
| 3 | Solid-State Motors | Drive Systems | ATS | M.Sc | Embedded Programming |
| 4 | Differential Calculus | Higher Mathematics I | HMA | M.Sc | Practical Experience |
| 5 | Poly-phase Circuits | Drive Technology | ANT | B.Sc | Control Analysis |

## Grading of the Lecture

As this lecture is Experiment based, the student is required to present
a lab report showcasing all the requirement as dictated by the
Laboratory Manual. The author of this repo has also authored a LaTeX
template conforming to the MCI standard (mcidoc) which can be found
[here](https://github.com/dTmC0945/C-MCI-LaTeX-Class-mcidoc).

| ASSIGNMENT TYPE   | VALUE |
|-------------------|-------|
| Laboratory Report | 100   |
| SUM               | 100   |

## Lecture Sources

The following are a table of documentation which are useful resources
which goes well with the lectures.

| INDEX | AUTHOR | TITLE | PUBLISHER |
|----|----|----|----|
| 1 | Mohan Ned. | Advanced electric drives: analysis control and modeling using MATLAB/Simulink | John Wiley & Sons 2014. |
| 2 | Krause Paul C. et. al. | Analysis of electric machinery and drive systems | Vol. 2 IEEE Press 2002. |
| 3 | Pyrhonen Juha et. al | Design of rotating electrical machines | John Wiley & Sons 2013. |
| 4 | Stephen J. Chapman. | Electric Machinery Fundamentals (5th Edition) | (2012). |
| 5 | Fitzgerald A. E. et. al. | Electric Machinery. | McGraw Hill (2003). |
| 6 | Hughes A. et. al. | Electric Motors and Drives: Fundamentals Types and Applications | Newnes 2019. |
| 7 | Melkebeek A. | Electrical Machines and Drives: Fundamentals and Advanced Modelling | Springer 2018. |
| 8 | Wildi T. | Electrical machines, drives, and power systems | Pearson Education 2006. |
| 9 | Veltman A. et. al. | Fundamentals of Electrical Drives | Springer 2007. |

## Content and Unit Distribution

The content and unit distribution of the lecture is as follows where a
unit is defined as 45 min lecture.

| ORDER | TOPIC                     | UNITS | SELF STUDY |
|-------|---------------------------|-------|------------|
| 1     | Measurement Board         | 3     | 6          |
| 2     | BLDC Control with Sensors | 4     | 8          |
| 3     | Sensorless BLDC Control   | 4     | 8          |
| 4     | Sensorless FOC of PMSM    | 4     | 8          |
| 5     | SUM                       | 15    | 30         |

## Lecture Table of Contents

The structure of the M.Sc Drive Systems Laboratory can be grouped into
four (4) parts which are as follows:

| TOPIC | DESCRIPTION |
|----|----|
| Measurement Board | Introduction to the equipment to be used, initial setup and measurement. |
| BLDC Control with Sensors | Study of BLDC control using block commutation technique and simulation work. |
| Sensorless BLDC Control | Study of BLDC control using sensorles techniques and simulation work. |
| Sensorless FOC of PMSM | Study of PMSM control using field oriented control and simulation work. |

Below is the detailed structure of the lecture:

- Measurement Board
  - Measurement Boards
    - Motor Side Measurement Board
    - Load Side Measurement Board
    - Motor-Load System
  - CY8CKIT-037 Motor Control Evaluation Kit
  - CY8CKIT-042 Pioneer Kit
  - Preparing the Setup
  - Required Measurements and Assessments
  - A Digression: Describing Phases
- BLDC Control with Sensors
  - Preliminary Information
    - Commutation Technique
    - Motor Design
  - The Experiment
    - Configuration of the Hardware and Software
    - Embedded Code Configuration
    - Simulation Framework
  - Required Measurements and Assessments
- Sensorless BLDC Control
  - Preliminary Information
    - Sensorless BLDC Control
  - The Experiment
    - Configuration of the Hardware and Software
    - Simulation Framework
  - Required Measurements and Assessments
- Sensorless FOC of PMSM
  - Preliminary Information
    - Field Oriented Control
    - Sensorless Motor Control
      - At Low Speeds
      - At Working Speeds
  - The Experiment
    - Configuration of the Hardware and Software
    - Simulation Framework
  - Required Measurements and Assessments
- Lab Report Requirements
  - Introduction
  - A Good Lab Report Structure
  - Documentation Standard
- Simulink Schematics
- MATLAB Codes

(-DTMc 2025)
