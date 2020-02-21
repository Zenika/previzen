import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { ConsultantsService } from './consultants/consultants.service';
import { ConsultantsController } from './consultants/consultants.controller';
import { ConsultantsModule } from './consultants/consultants.module';

@Module({
  imports: [
    ConsultantsModule,
  ],
  controllers: [
    AppController,
    ConsultantsController
  ],
  providers: [
    AppService,
    ConsultantsService
  ],
})
export class AppModule { }
