npm init -y ^
&& npm install --save-dev typescript ^
&& npm install --save-dev ts-node ^
&& npm install --save-dev @types/node ^
&& tsc --init ^
&& sed -i 's/"scripts": {/"scripts": {  "dev": "nodemon --exec .\/node_modules\/.bin\/ts-node src\/index",/' package.json ^
&& mkdir src ^
&& echo   {"watch": ["src"],"ext":"ts","exec":"ts-node"} > nodemon.json ^
&& echo console.log('Hola!');  > src\index.ts
