import {
  Body,
  Controller,
  Delete,
  Get,
  Param,
  Post,
  Put,
} from '@nestjs/common';
import { StaffingService } from './staffing.service';
import { Staffing } from './staffing.entity';

@Controller('staffing')
export class StaffingController {
  constructor(private StaffingService: StaffingService) {}

  @Get()
  findAll() {
    console.log(StaffingService.name + ' - Retrieving all consultants...');
    return this.StaffingService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id_staffing: string) {
    console.log(
      StaffingService.name +
        ' - Retrieving one staffing where id = ' +
        id_staffing,
    );
    return this.StaffingService.findOne(id_staffing);
  }

  @Post()
  create(@Body() staffing: Staffing) {
    console.log(
      StaffingController.name +
        ' - A new Consultant will be created with those parameters:',
    );
    console.table(staffing);
    return this.StaffingService.create(staffing);
  }

  @Put(':id')
  update(@Param('id') id_staffing: string, @Body() staffing: Staffing) {
    console.log(
      StaffingController.name +
        ' - A Consultant will be updated with those parameters, where id = ' +
        id_staffing,
    );
    console.table(staffing);
    return this.StaffingService.update(id_staffing, staffing);
  }

  @Delete(':id')
  remove(@Param('id') id_staffing: string) {
    console.log(
      StaffingController.name +
        ' - A Consultant will be removed with those parameters, where id = ' +
        id_staffing,
    );
    return this.StaffingService.remove(id_staffing);
  }
}
