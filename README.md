# MRIs to Meshes

Input: Freesurfer directory with completed subjects
Output: 3D mesh file containing brain regions and electrodes

Each individual brain region is it's own mesh and can be queried/modified/disabled. Colormap is taking directly from Freesurfer's lookup table.

The gLTF binary file format allows for optimized viewing directly in browsers and VR/AR devices.

### Dependencies:

- Select Freesurfer binaries 
- Various [Brainder](https://brainder.org/) scripts for mesh generation
    - Matlab/Octave
- Blender (Freesurfer OBJ to FBX/gLTF)
    - Comes with a python interpreter

### Instructions:

- In the docker-compose.yml file edit the environment and volumes field:
    - environment:
        - Subject=Name of freesurfer subject
    - volumes:
        - path to $SUBJECTS_DIR

### electrodes.tsv:
| name              | x         | y       | z       |
| ----------------- | --------- | ------- | ------- |
| electrodeGroupA'1 | 4.52036   | 61.73   | 66.4995 |
| electrodeGroupA'2 | 1.85841   | 63.8435 | 66.9489 |
| electrodeGroupA'3 | -2.14716  | 65.0158 | 67.3797 |
| electrodeGroupB'1 | -5.17384  | 65.0651 | 68.1047 |

### reconstruction.glb:
- Brain
    - Gyri
        - all of the left and right hemisphere aparc regions
    - SubcorticalStructs
        - all of the aseg rois
    - WhiteMatter
        - Left-Cerebral-White-Matter
        - Right-Cerebral-White-Matter
- Electrodes
    - electrodeGroupA
        - electrodeGroupA1