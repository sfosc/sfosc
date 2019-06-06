#! /usr/bin/env python
from __future__ import print_function
import bisect
import frontmatter
import pprint
import os
import subprocess

print('Retreiving input filenames and ordering them...')
md = ['content/_index.md']
for (root, dirs, files) in os.walk('content'):
    flist = []
    for d in dirs:
        f = root+'/'+d+'/_index.md'
        page = frontmatter.load(f)
        weight = page['weight'] if 'weight' in page else 0
        flist.append((f, weight))

    for f in files:
        if f == '_index.md':
            continue
        f = root+'/'+f
        page = frontmatter.load(f)
        weight = page['weight'] if 'weight' in page else 0
        flist.append((f, weight))

    flist.sort(key = lambda x: x[1])
    oflist = [ft[0] for ft in flist]
    if len(oflist) == 0:
        continue

    index = bisect.bisect(md, oflist[0])
    for f in oflist:
        md.insert(index, f)
        index += 1
    pprint.pprint(oflist)
    pprint.pprint(md)
    raw_input('')
pprint.pprint(md)

print('Generating epub...')
subprocess.call(["pandoc", "-o", "sfosc.epub"]+md)
