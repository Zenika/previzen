import { Body, Controller, Get, Param, Post } from '@nestjs/common';
import { ConsultantsService } from './consultants.service';
import { Consultant } from './consultant.entity';

@Controller('consultants')
export class ConsultantsController {
  constructor(private consultantsService: ConsultantsService) {}

  @Get()
  findAll() {
    console.log(
      ConsultantsController.name + ' - Retrieving all consultants...',
    );
    return this.consultantsService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id_consultant: string) {
    console.log(ConsultantsController.name + ' - Retrieving one consultant...');
    return this.consultantsService.findOne(id_consultant);
  }

  @Post()
  create(@Body() consultant: Consultant) {
    console.log(
      ConsultantsController.name +
        ' - A new Consultant will be created with those parameters:',
    );
    console.table(consultant);
    return this.consultantsService.create(consultant);
  }
}
