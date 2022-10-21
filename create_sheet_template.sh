#!/bin/bash
echo "Create template for sheet $1 with $2 exercises";
EXERCISE_FOLDER="sheet_$1"
cp -r template/sheet $EXERCISE_FOLDER
echo $EXERCISE_FOLDER
REPLACEMENT_STR="s#%<HEADER>#\\\section*{Assignment $1}#g"
echo $REPLACEMENT_STR
sed -i.bak "$REPLACEMENT_STR" $EXERCISE_FOLDER/assignment.tex

for i in $(eval echo {1..$2})
do
    TASK_FOLDER=$EXERCISE_FOLDER/task_$i
    cp -r template/task $TASK_FOLDER
    REPLACEMENT_STR="s#%<HEADER>#\\\question \\\textbf{Title}#g"
    echo $REPLACEMENT_STR
    sed -i.bak "$REPLACEMENT_STR" $TASK_FOLDER/task.tex

    REPLACEMENT_STR="s#%<task${i}>#\\\input{task_$i/task.tex}#g"
    echo $REPLACEMENT_STR
    sed -i.bak "$REPLACEMENT_STR" $EXERCISE_FOLDER/assignment.tex
done
#sed -i -e 's/abc/XYZ/g' /tmp/file.txt
"s#%<HEADER>#\section*{Assignment ${i}}#g"