# SFND Radar Generation and Detection (using MATLAB)
<img src="images/project_layout.png"/>
The objective of the project is to design, simulate and evaluate radar signal generation and detection. The scipt is written in MATLAB m-scripts.

## Target Generation and Detection
<img src="images/signal_propagation.png"/>

## Dependencies for Running Locally

- MATLAB R2017a or later. Tested with MATLAB R2019b
- Automated Driving Toolbox for MATLAB

## MATLAB Download
To complete the project, you will need to download MATLAB on your computer, if you haven't already. To get started, you can follow these steps:

1. If you do not already have a MathWorks account, create one [here](https://www.mathworks.com/mwaccount/register). Be sure to verify your email (check your Junk/Spam folders) before moving on to step 2.
2. Download the installer [here](https://www.mathworks.com/licensecenter/classroom/udacity_sf_radar/).
3. Run the installer – it will guide you through the steps for your OS.

## Implementation steps for the 2D CFAR process.

1. Configure the FMCW waveform based on the system requirements.
2. Define the range and velocity of target and simulate its displacement.
3. For the same simulation loop process the transmit and receive signal to determine the beat signal
4. Perform Range FFT on the received signal to determine the Range
5. Towards the end, perform the CFAR processing on the output of 2nd FFT to display the target.

## Selection of Training, Guard cells and offset.

<img src="images/CFAR_cells.png"/>

- Number of Training cells = ?
- Number of Guard cells = ?
- Threshold Factor (Offset) = ?

### Selection of training cells
The number of training cells should be decided based on the environment. _If a dense traffic scenario then the fewer training cells should be used_, as closely spaced targets can impact the noise estimate.

### Selection of guard cells
The number of guard cells should be decided based on the _leakage of the target signal out of the cell under test_. If target reflections are strong they often get into surrounding bins.

### Selection of offset
If the signal strength is defined in logarithmic form then add this offset value to the average noise estimate, else multiply it.

## Steps taken to suppress the non-thresholded cells at the edges.
