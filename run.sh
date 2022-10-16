set -e

PROJECT_DIR="/Users/colbyn/Developer/all-school-notes"
COMPILER_DIR="/Users/colbyn/Projects/subscript-root/subscript-compiler"

cd $COMPILER_DIR

./scripts/build.sh

cargo run --release -- build --project-dir $PROJECT_DIR --watch
