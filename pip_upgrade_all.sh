#! /bin/bash

python -m pip freeze > tmp_list.txt
python -m pip install -r tmp_list.txt --upgrade
rm tmp_list.txt
