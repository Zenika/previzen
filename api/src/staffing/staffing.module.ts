import { Module } from '@nestjs/common';
import { StaffingService } from './staffing.service';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Staffing } from './staffing.entity';
import { StaffingController } from './staffing.controller';

@Module({
  imports: [TypeOrmModule.forFeature([Staffing])],
  providers: [StaffingService],
  controllers: [StaffingController],
})
export class StaffingModule {}
