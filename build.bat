v -os linux main.v -o main.c
if not exist "static" mkdir static
clang -w -Ofast -D__linux__ -target wasm32-unknown-wasi --sysroot C:\Users\Feavy\AppData\Local\WASI\share\wasi-sysroot -D_WASI_EMULATED_SIGNAL -lwasi-emulated-signal -Iinclude -Wl,--allow-undefined -o static/main.wasm main.c placeholders.c