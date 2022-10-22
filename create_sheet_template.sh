#!/bin/bash
echo "Create template for sheet $1 with $2 exercises";
EXERCISE_FOLDER="sheet_$1"
if [ -d "$EXERCISE_FOLDER" ];
then
    echo "Folder ${EXERCISE_FOLDER} already exists..."
    exit 1
fi
cp -r template/sheet $EXERCISE_FOLDER
REPLACEMENT_STR="s#%<HEADER>#\\\section*{Assignment $1}#g"
sed -i.bak "$REPLACEMENT_STR" $EXERCISE_FOLDER/assignment.tex

REPLACEMENT_STR="s#assignment.#assignment_$1.#g"
sed -i.bak "$REPLACEMENT_STR" $EXERCISE_FOLDER/latexmkrc
sed -i.bak "$REPLACEMENT_STR" $EXERCISE_FOLDER/Makefile

for i in $(eval echo {1..$2})
do
    TASK_FOLDER=$EXERCISE_FOLDER/task_$i
    cp -r template/task $TASK_FOLDER
    REPLACEMENT_STR="s#%<HEADER>#\\\question \\\textbf{Title}#g"
    sed -i.bak "$REPLACEMENT_STR" $TASK_FOLDER/task.tex
    REPLACEMENT_STR="s#%<task${i}>#\\\input{task_$i/task.tex}#g"
    sed -i.bak "$REPLACEMENT_STR" $EXERCISE_FOLDER/assignment.tex
done
mv $EXERCISE_FOLDER/assignment.tex $EXERCISE_FOLDER/assignment_$1.tex
find $EXERCISE_FOLDER -name "*.bak" -type f -delete