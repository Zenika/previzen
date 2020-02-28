import { Controller, Get, Param } from '@nestjs/common';
import { ConsultantsService } from './consultants.service';

@Controller('consultants')
export class ConsultantsController {
  constructor(private consultantsService: ConsultantsService) {}

  @Get()
  findAll() {
    console.log(ConsultantsController.name + ' - Retrieving all consultants...');
    return this.consultantsService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id_consultant: string) {
    console.log(ConsultantsController.name + ' - Retrieving one consultant...');
    return this.consultantsService.findOne(id_consultant);
  }
}
