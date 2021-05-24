v -os linux main.v -o main.c
if not exist "dist" mkdir dist
emcc -Os -std=gnu11 -w -D__linux__ -s EXPORTED_FUNCTIONS=_main,_main__hello -lm --js-library library.js -o dist/main.js placeholders.c main.c