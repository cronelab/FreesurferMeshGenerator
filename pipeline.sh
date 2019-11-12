#!/bin/bash

#PREP RECON
mkdir $SUBJECTS_DIR/$1/mri
mkdir $SUBJECTS_DIR/$1/CT
mkdir $SUBJECTS_DIR/$1/electrodes
mkdir $SUBJECTS_DIR/$1/Meshes
mkdir $SUBJECTS_DIR/$1/Meshes/subcortical
mkdir $SUBJECTS_DIR/$1/mri/orig
mkdir $SUBJECTS_DIR/$1/label
mkdir $SUBJECTS_DIR/$1/label/gyri
mkdir $SUBJECTS_DIR/$1/obj
mv $SUBJECTS_DIR/$1/CT.nii $SUBJECTS_DIR/$1/CT/CT.nii
mv $SUBJECTS_DIR/$1/T1.nii $SUBJECTS_DIR/$1/mri/orig/T1.nii
mri_convert $SUBJECTS_DIR/$1/mri/orig/T1.nii $SUBJECTS_DIR/$1/mri/orig/001.mgz

./scripts/reconall.sh $1
python ./scripts/coreg.py $1
./scripts/aseg2srf.sh -s $1

./scripts/srf2obj $SUBJECTS_DIR/$1/ascii/aseg_002.srf > $SUBJECTS_DIR/$1/obj/Left-Cerebral-White-Matter.obj
./scripts/srf2obj $SUBJECTS_DIR/$1/ascii/aseg_003.srf > $SUBJECTS_DIR/$1/obj/Left-Cerebral-Cortex.obj
./scripts/srf2obj $SUBJECTS_DIR/$1/ascii/aseg_004.srf > $SUBJECTS_DIR/$1/obj/Left-Lateral-Ventricle.obj
./scripts/srf2obj $SUBJECTS_DIR/$1/ascii/aseg_005.srf > $SUBJECTS_DIR/$1/obj/Left-Inf-Lat-Vent.obj
./scripts/srf2obj $SUBJECTS_DIR/$1/ascii/aseg_007.srf > $SUBJECTS_DIR/$1/obj/Left-Cerebellum-White-Matter.obj
./scripts/srf2obj $SUBJECTS_DIR/$1/ascii/aseg_008.srf > $SUBJECTS_DIR/$1/obj/Left-Cerebellum-Cortex.obj
./scripts/srf2obj $SUBJECTS_DIR/$1/ascii/aseg_010.srf > $SUBJECTS_DIR/$1/obj/Left-Thalamus-Proper.obj
./scripts/srf2obj $SUBJECTS_DIR/$1/ascii/aseg_011.srf > $SUBJECTS_DIR/$1/obj/Left-Caudate.obj
./scripts/srf2obj $SUBJECTS_DIR/$1/ascii/aseg_012.srf > $SUBJECTS_DIR/$1/obj/Left-Putamen.obj
./scripts/srf2obj $SUBJECTS_DIR/$1/ascii/aseg_013.srf > $SUBJECTS_DIR/$1/obj/Left-Pallidum.obj
./scripts/srf2obj $SUBJECTS_DIR/$1/ascii/aseg_014.srf > $SUBJECTS_DIR/$1/obj/3rd-Ventricle.obj
./scripts/srf2obj $SUBJECTS_DIR/$1/ascii/aseg_015.srf > $SUBJECTS_DIR/$1/obj/4th-Ventricle.obj
./scripts/srf2obj $SUBJECTS_DIR/$1/ascii/aseg_016.srf > $SUBJECTS_DIR/$1/obj/Brain-Stem.obj
./scripts/srf2obj $SUBJECTS_DIR/$1/ascii/aseg_017.srf > $SUBJECTS_DIR/$1/obj/Left-Hippocampus.obj
./scripts/srf2obj $SUBJECTS_DIR/$1/ascii/aseg_018.srf > $SUBJECTS_DIR/$1/obj/Left-Amygdala.obj
./scripts/srf2obj $SUBJECTS_DIR/$1/ascii/aseg_024.srf > $SUBJECTS_DIR/$1/obj/CSF.obj
./scripts/srf2obj $SUBJECTS_DIR/$1/ascii/aseg_026.srf > $SUBJECTS_DIR/$1/obj/Left-Accumbens-area.obj
./scripts/srf2obj $SUBJECTS_DIR/$1/ascii/aseg_028.srf > $SUBJECTS_DIR/$1/obj/Left-VentralDC.obj
./scripts/srf2obj $SUBJECTS_DIR/$1/ascii/aseg_030.srf > $SUBJECTS_DIR/$1/obj/Left-vessel.obj
./scripts/srf2obj $SUBJECTS_DIR/$1/ascii/aseg_031.srf > $SUBJECTS_DIR/$1/obj/Left-choroid-plexus.obj
./scripts/srf2obj $SUBJECTS_DIR/$1/ascii/aseg_041.srf > $SUBJECTS_DIR/$1/obj/Right-Cerebral-White-Matter.obj
./scripts/srf2obj $SUBJECTS_DIR/$1/ascii/aseg_042.srf > $SUBJECTS_DIR/$1/obj/Right-Cerebral-Cortex.obj
./scripts/srf2obj $SUBJECTS_DIR/$1/ascii/aseg_043.srf > $SUBJECTS_DIR/$1/obj/Right-Lateral-Ventricle.obj
./scripts/srf2obj $SUBJECTS_DIR/$1/ascii/aseg_044.srf > $SUBJECTS_DIR/$1/obj/Right-Inf-Lat-Vent.obj
./scripts/srf2obj $SUBJECTS_DIR/$1/ascii/aseg_046.srf > $SUBJECTS_DIR/$1/obj/Right-Cerebellum-White-Matter.obj
./scripts/srf2obj $SUBJECTS_DIR/$1/ascii/aseg_047.srf > $SUBJECTS_DIR/$1/obj/Right-Cerebellum-Cortex.obj
./scripts/srf2obj $SUBJECTS_DIR/$1/ascii/aseg_049.srf > $SUBJECTS_DIR/$1/obj/Right-Thalamus-Proper.obj
./scripts/srf2obj $SUBJECTS_DIR/$1/ascii/aseg_050.srf > $SUBJECTS_DIR/$1/obj/Right-Caudate.obj
./scripts/srf2obj $SUBJECTS_DIR/$1/ascii/aseg_051.srf > $SUBJECTS_DIR/$1/obj/Right-Putamen.obj
./scripts/srf2obj $SUBJECTS_DIR/$1/ascii/aseg_052.srf > $SUBJECTS_DIR/$1/obj/Right-Pallidum.obj
./scripts/srf2obj $SUBJECTS_DIR/$1/ascii/aseg_053.srf > $SUBJECTS_DIR/$1/obj/Right-Hippocampus.obj
./scripts/srf2obj $SUBJECTS_DIR/$1/ascii/aseg_054.srf > $SUBJECTS_DIR/$1/obj/Right-Amygdala.obj
./scripts/srf2obj $SUBJECTS_DIR/$1/ascii/aseg_058.srf > $SUBJECTS_DIR/$1/obj/Right-Accumbens-area.obj
./scripts/srf2obj $SUBJECTS_DIR/$1/ascii/aseg_060.srf > $SUBJECTS_DIR/$1/obj/Right-VentralDC.obj
./scripts/srf2obj $SUBJECTS_DIR/$1/ascii/aseg_063.srf > $SUBJECTS_DIR/$1/obj/Right-choroid-plexus.obj
./scripts/srf2obj $SUBJECTS_DIR/$1/ascii/aseg_077.srf > $SUBJECTS_DIR/$1/obj/WM-hypointensities.obj
./scripts/srf2obj $SUBJECTS_DIR/$1/ascii/aseg_085.srf > $SUBJECTS_DIR/$1/obj/Optic-Chiasm.obj
./scripts/srf2obj $SUBJECTS_DIR/$1/ascii/aseg_251.srf > $SUBJECTS_DIR/$1/obj/CC_Posterior.obj
./scripts/srf2obj $SUBJECTS_DIR/$1/ascii/aseg_252.srf > $SUBJECTS_DIR/$1/obj/CC_Mid_Posterior.obj
./scripts/srf2obj $SUBJECTS_DIR/$1/ascii/aseg_253.srf > $SUBJECTS_DIR/$1/obj/CC_Central.obj
./scripts/srf2obj $SUBJECTS_DIR/$1/ascii/aseg_254.srf > $SUBJECTS_DIR/$1/obj/CC_Mid_Anterior.obj
./scripts/srf2obj $SUBJECTS_DIR/$1/ascii/aseg_255.srf > $SUBJECTS_DIR/$1/obj/CC_Anterior.obj


# #annotation2label
mri_annotation2label --subject $1 --hemi "lh" --surface pial --outdir $SUBJECTS_DIR/$1/label/gyri
mri_annotation2label --subject $1 --hemi "rh" --surface pial --outdir $SUBJECTS_DIR/$1/label/gyri

#convert the BIS mgrid to a .mat
matlab -nojvm -nodesktop -batch "mgridConverter ${1}"

# #Take all the objs and electrodes and create a fbx from them
/usr/local/blender/blender --background --python scripts/blenderTest.py
