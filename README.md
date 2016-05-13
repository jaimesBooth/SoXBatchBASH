SoXBatchBASH
============
Version 20160513

[//]: # (## Description (Elevator Statement))

BASH script to batch convert audio files to CD standard audio (44.1 kHz, 16 bit) using [SoX's](http://sox.sourceforge.net/ "SoX's Homepage") very high quality sample rate converter. Any readable audio files in the SoXBatchBASHInput/ directory are processed and saved to the SoXBatchBASHOutput/ directory.


## Rational
Sample rate conversion comparisons by [Infinite Wave](http://src.infinitewave.ca/ "SRC Comparison Infinite Wave") suggest that the open-source SoX often offers a better quality re-sampling algorithm than some of the commercial digital audio processing software.

![alt text](http://src.infinitewave.ca/images/Sweep/SoX14_VHQ_LP.png "Sweep SoX_VHQ_LP courtesy of Infinite Wave")


[//]: # (## New and special in this release)

This script uses SoX's linear phase (on by default, -L flag) very high quality sample rate conversion (-v flag). Dither with noise shaping (-s flag) is added to avoid audible quantisation noise due to bit depth reduction to 16 bit.


## Requirements
[//]: # (Hardware and software requirements)
Computer running (Debian based) Linux with [SoX](http://sox.sourceforge.net/ "SoX's Homepage") installed. BASH shell installed to `/bin/bash`.

Tested using SoX v14.4.1, GNU bash v4.3.11(1) and Ubuntu 14.04 x64.


## Installation
[//]: # (Installation instructions, getting started tips, and documentation)
1. Confirm BASH executable is located @ `/bin/bash`.
  ```bash
  whereis bash

  $ bash: /bin/bash
  ```

2. Confirm SoX is installed.
  ```bash
  sox --version
  ```

  If SoX is not installed on your system please [install the latest version](https://sourceforge.net/projects/sox/files/sox/ "SoX's SourceForge Download Page") following the instructions included in the SoX download.

3. Download the SoXBatchBASH project from the GitHub repository.

  ```bash
  git clone https://github.com/jaimesBooth/SoXBatchBASH
  ```

4. Change working directory to the SoXBatchBASH directory containing the script:

  ```bash
  cd SoXBatchBASH/
  ```

5. Make the BASH script executable:

  ```bash
  chmod u+x SoXBatchBASH.sh
  ```

6. Run the script:

  ```bash
  ./SoXBatchBASH.sh
  ```

  On first run the script creates the Input and Output Directories `SoXBatchBASHInput/` and `SoXBatchBASHOutput/`.

7. Place the audio files to sample rate convert in the Input folder `SoXBatchBASHInput/`.

8. Run the script to convert any readable audio files in `SoXBatchBASHInput/` :

  ```bash
  ./SoXBatchBASH.sh
  ```

  Converted files are saved to `SoXBatchBASHOutput/`.

[//]: # (## Important known problems)

## Version History

|Version        | Description     |
| :----------:  | :-------------: |
|20160513    | README improvements. Addidtion of sweep image. |
|20160402     | README improvements. |
|20160331     | First README version. |
|< 20160331   | Initial Script development. |

[//]: # (## Pricing information)

## Contact Information

[//]: # (## Date or copyright date, and other legal information)
[//]: # (## License)

Copyright 2016 [Jaimes Booth](http://nz.linkedin.com/in/jaimesbooth "Jaimes Booth on LinkedIn").


Licensed under an [GNU General Public License](https://gnu.org/licenses/gpl.html "GNU General Public License").

This program is free software. You can redistribute it and/or modify it under the terms of the [GNU General Public License](https://gnu.org/licenses/gpl.html "GNU General Public License") as published by the Free Software Foundation. Either version 2, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY. Without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the [GNU General Public License](https://gnu.org/licenses/gpl.html "GNU General Public License") for more details.

<!--
Readme Template
===============
http://www.mactech.com/articles/mactech/Vol.14/14.10/WritingAReadMeFile/index.html
http://stackoverflow.com/questions/2304863/how-to-write-a-good-readme
http://git.savannah.gnu.org/cgit/make.git/tree/README.template
http://svn.apache.org/repos/asf/httpd/httpd/trunk/README

## Product name and version number

## Company name

## Elevator statement

## New and special in this release

## Hardware and software requirements

## Installation instructions, getting started tips, and documentation

## Important known problems

## Version history

## Pricing information

## Contact information

## Date or copyright date, and other legal information


# ReadMe Checklist

Creating a great ReadMe file requires far more perspiration than talent. Here's a checklist to sweat over as you finish a ReadMe file; if the document meets the requirements on this list, it's probably ready to ship.

    The ReadMe file makes it a complete no-brainer to figure out your company's name (or the programmer's name), the application's name, and the version number.
    The ReadMe file includes the release date of the software.
    The ReadMe file contains reasonably complete contact information.
    Readers of the file can easily determine pricing information (for some commercial software, this criteria isn't necessary, but for shareware it's terrifically important).
    The first screen of the document has a description of what the software is and why it's cool.
    The ReadMe file mentions new features in this particular release of the program.
    The ReadMe file notes system and hardware requirements for the software.
    The ReadMe file contains installation instructions, tips and tricks, documentation, and a version history (or if it doesn't, it refers readers to other documents that do contain this information).
    The application's name is spelled consistently throughout the ReadMe file (make sure you have also spelled the company name consistently).
    The file format is SimpleText (or, if not, you have a good reason for using something else).
    If feasible, the document is unlocked so that readers can freely copy information and access URLs.
    The file's name is descriptive (ReadMe alone is not sufficiently descriptive).
    The font styles and overall layout are appropriate for onscreen reading.
    You have followed the seven steps to writing success outlined in this article.
-->
