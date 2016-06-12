#!/usr/bin/env python
from __future__ import print_function

import re
import os
import sys
import warnings
import subprocess


root_dir = "/tmp/pssh"


def main(argv):
    rr = argv[1]

    if not os.path.isdir(root_dir):
        os.mkdir(root_dir)

    with warnings.catch_warnings():
        warnings.simplefilter("ignore")
        tmp_dir = os.tempnam(root_dir)

    print("Results stored into {!r}".format(tmp_dir))

    env_opts = os.environ['PSSH_OPTS'].split(" ") if 'PSSH_OPTS' in os.environ else []
    cmd = ["/usr/bin/parallel-ssh", "-o", tmp_dir] + env_opts + sys.argv[2:]

    proc = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    code = proc.wait()
    if code != 0:
        print("Error cmd exits with code {}\n    {!r}".format(code, " ".join(cmd)))
        print("Stderr :", proc.stderr.read().rstrip())
        return 1

    # subprocess.check_call(cmd)

    for fname in os.listdir(tmp_dir):
        path = os.path.join(tmp_dir, fname)
        for line in open(path):
            if re.search(rr, line):
                print(fname, line[:-1] if line.endswith("\n") else line)
    return 0


if __name__ == "__main__":
    exit(main(sys.argv))
