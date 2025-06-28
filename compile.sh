#!/bin/bash

echo 'Compiling document using typst'
typst compile --font-path fonts/ --ignore-system-fonts new_resume.typ
echo 'Done'
