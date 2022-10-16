set -e

PROJECT_DIR="/Users/colbyn/Developer/all-school-notes"
COMPILER_DIR="/Users/colbyn/Projects/subscript-root/subscript-compiler"
OUTPUT_DIR="/Users/colbyn/Developer/all-school-notes/docs"

cd $COMPILER_DIR

./scripts/build.sh

cargo run --release -- build --project-dir $PROJECT_DIR --route-prefix="all-school-notes" --output-dir=$OUTPUT_DIR


cd $PROJECT_DIR

git add . && git commit -m "update site" && git push