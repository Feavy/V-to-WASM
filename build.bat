v -os linux main.v -o main.c
if not exist "dist" mkdir dist
emcc -O -std=gnu11 -w -D__linux__ -s -lm -o dist/main.js placeholders.c main.c