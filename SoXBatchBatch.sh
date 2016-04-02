#!/bin/bash
#
#############################################################################
# SoXBatchBASH
# Batch convert audio files in the SoXBatchBASHInput/ directory to
# 44.1kHz/16bit using SoX's (http://sox.sourceforge.net/) high quality
# sample rate converter. Output files are saved to SoXBatchBASHOutput/.
#
# Jaimes Booth 20160331
#############################################################################

echo ""
echo "Batch sample rate converts audio files in SoXBatchBASHInput/"
echo "to 44.1kHz\/16bit and saves to SoXBatchBASHOutput/"
echo ""

#Default conversion sample-rate.
SAMPLERATE="44100"

# Default conversion bit depth.
BITDEPTH="16"

# Check for input folder. Create if doesn't exist.
# -p flag silences the warning that folder already exists. Contents are not over ridden.
mkdir -p SoXBatchBASHInput/

# Create output folder. -p flag silences the warning if folder already exists.
mkdir -p SoXBatchBASHOutput/

INPUTDIR="SoXBatchBASHInput/"

OUTPUTDIR="SoXBatchBASHOutput/"

# TUI file chooser
# dialog --title "text" --fselect /path/to/dir height width
# FILE=$(dialog --stdout --title "Please choose a file" --fselect $HOME/ 14 48)
# echo "${FILE} file chosen."

# Create array of input audio files for processing.
INARRAY=SoXBatchBASHInput/*

# Process the input audio files.
for f in $INARRAY
do

  # Get current input audio file path.
  INPUTPATH=$f

  # Get name of intput file to modify as name of the output.
  FILENOPATH="${INPUTPATH##*/}"
  FILENOEXT="${FILENOPATH%.*}"
  OUTPUTFILE="$FILENOEXT""_44_16.wav"

  # Check if input audio file already exists in output - don't overwrite.
  if [ -a $OUTPUTFILE ]
  then
    echo "$OUTPUTFILE already exists"
    echo "Exiting"
    echo ""
  else
    # Print selected file to screen.
    echo ""${INPUTPATH}" file selected."

    # Process input file.
    #sox $INPUTFILE -b 16 $OUTPUTFILE rate -v 44100 dither -s
    # use backticks " ` ` " to execute shell command
    # echo `sox "$INPUTDIR$INPUTFILE" -b 16 "$OUTPUTDIR$OUTPUTFILE" rate -v 44100 dither -s`
    # http://sox.sourceforge.net/sox.html#OPTIONS
    # Very high quality sample rate conversion (-v).
    # Linear Phase (-L) is default.
    # Dither noise shaping (-s)
    echo `sox "$INPUTPATH" --bits $BITDEPTH "$OUTPUTDIR$OUTPUTFILE" --rate -v $SAMPLERATE dither -s`

    echo "Processing of "$INPUTPATH" complete."
    echo "$OUTPUTFILE file saved to $OUTPUTDIR"
  fi
done
