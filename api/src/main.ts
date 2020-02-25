import {NestFactory} from '@nestjs/core';
import {AppModule} from './app.module';

const applicationPort = 3000;

async function bootstrap() {
    const app = await NestFactory.create(AppModule, {cors: true});
    app.enableCors();
    await app.listen(applicationPort);
}

bootstrap();
