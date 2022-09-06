# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


import argparse, hashlib, os, subprocess, sys, time
import sys
import shlex
import subprocess
import requests, sys
import re
import requests
from requests.auth import HTTPBasicAuth
import json
import datetime
import pandas as pd
from dateutil.relativedelta import relativedelta, MO
import pandas as pd
import glob
import os
parser = argparse.ArgumentParser(prog='concatenate_pangolin.py', formatter_class=argparse.RawDescriptionHelpFormatter,
                                     epilog="""
        + ============================================================ +
        |  European Nucleotide Archive (ENA) data flow monitoring Tool  |
        |                                                              |
        |             Tool to to fetch data from NCBI or ENA           |
        + =========================================================== +  """)

parser.add_argument('-f', '--file', help='csv files input directory', type=str, required=True)
parser.add_argument('-o', '--output', help='output directory', type=str, required=True)
args = parser.parse_args()

def concat_csv():
    files = os.path.join(args.file, "pango_lineages.*.csv")
    files = glob.glob(files)
    df = pd.concat(map(pd.read_csv, files), ignore_index=True)
    df.to_csv(f'{args.output}', index=False)
    print(f'Concatenate all csv files in {args.file} into {args.output}')


concat_csv()
