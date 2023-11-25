rem Silicon Media - 2023
@echo off

if "%1"=="" (
    echo Uso: %0 [nombre_del_directorio]
    exit /b 1
)
 
mkdir %1
cd %1

mkdir src
echo  {"watch": ["src"],"ext":"ts","exec":"ts-node"} > nodemon.json 
echo  console.log('Hola!');  > src\index.ts

npm init -y ^
&& npm install --save-dev typescript ^
&& npm install --save-dev ts-node ^
&& npm install --save-dev @types/node ^
&& tsc --init ^
&& sed -i 's/"scripts": {/"scripts": {  "dev": "nodemon --exec .\/node_modules\/.bin\/ts-node src\/index",/' package.json

cd ..

