import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
// import { Consultant } from 'src/entity/consultants.entity';
import { ConsultantsService } from './consultants.service';
import { ConsultantsController } from './consultants.controller';

@Module({
    // imports: [TypeOrmModule.forFeature([Consultant])],
    providers: [ConsultantsService],
    controllers: [ConsultantsController]
})
export class ConsultantsModule {}
