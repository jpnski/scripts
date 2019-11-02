#! /bin/bash

pip freeze > tmp_list.txt
pip install -r tmp_list.txt --upgrade
rm tmp_list.txt
