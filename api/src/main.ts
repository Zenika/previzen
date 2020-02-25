import {NestFactory} from '@nestjs/core';
import {AppModule} from './app.module';

const applicationPort = 3000;

async function bootstrap() {
    const app = await NestFactory.create(AppModule, {cors: true});
    app.enableCors();
    await app.listen(applicationPort);

    printHostSystemInformation();
}


function printHostSystemInformation() {

    const os = require('os');

    let hostInformation = [os.hostname(), os.platform(), os.arch()];

    console.log('\nNest.js API is running on: ');
    console.log(hostInformation);
    console.log('\nTotal memory system in gigabyte:');
    console.log((os.totalmem() / 1000000000));
    console.log('\nCPU information: ');
    console.log(os.cpus()[1]);
}

bootstrap();
