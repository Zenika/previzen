import {
  Controller,
  Get,
  Param,
  Delete,
  Post,
  Body,
  Put,
} from '@nestjs/common';
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
    console.log(
      ConsultantsController.name +
        ' - Retrieving one consultant where id = ' +
        id_consultant,
    );
    return this.consultantsService.findOne(id_consultant);
  }

  @Post()
  async create(@Body() consultant: Consultant) {
    console.log(
      ConsultantsController.name +
        ' - A new Consultant will be created with those parameters:',
    );
    console.table(consultant);
    return await this.consultantsService.create(consultant);
  }

  @Put(':id')
  update(@Param('id') id_consultant: string, @Body() consultant: Consultant) {
    console.log(
      ConsultantsController.name +
        ' - A Consultant will be updated with those parameters, where id = ' +
        id_consultant,
    );
    console.table(consultant);
    return this.consultantsService.update(id_consultant, consultant);
  }

  @Delete(':id')
  remove(@Param('id') id_consultant: string) {
    console.log(
      ConsultantsController.name +
        ' - A Consultant will be removed with those parameters, where id = ' +
        id_consultant,
    );
    return this.consultantsService.remove(id_consultant);
  }
}
