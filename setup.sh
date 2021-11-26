#!/bin/sh

# You'll have to have mujoco 210 installed beforehand

python3 -m venv venv
. venv/bin/activate
git clone https://github.com/HorizonRobotics/alf
cd alf
pip install -e .

cd ..
mkdir logs
pip3 install -U 'mujoco-py<2.2,>=2.1'
python -m alf.bin.train --conf=oac_humanoid_conf.py --root_dir=logs
