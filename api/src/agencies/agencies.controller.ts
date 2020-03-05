import { Body, Controller, Get, Param, Post, Put } from '@nestjs/common';
import { AgenciesService } from './agencies.service';
import { Agency } from './agency.entity';

@Controller('agencies')
export class AgenciesController {
  constructor(private agenciesService: AgenciesService) {}

  @Get()
  findAll() {
    console.log(AgenciesController.name + ' - Retrieving all agencies...');
    return this.agenciesService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id_agency: string) {
    console.log(
      AgenciesController.name +
        ' - Retrieving one agency where id = ' +
        id_agency,
    );
    return this.agenciesService.findOne(id_agency);
  }

  @Post()
  create(@Body() agency: Agency) {
    console.log(
      AgenciesController.name +
        ' - A new Agency will be created with those parameters:',
    );
    console.table(agency);
    return this.agenciesService.create(agency);
  }

  @Put(':id')
  update(@Param('id') id_agency: string, @Body() agency: Agency) {
    console.log(
      AgenciesController.name +
        ' - An Agency will be updated with those parameters, where id = ' +
        id_agency,
    );
    console.table(agency);
    return this.agenciesService.update(id_agency, agency);
  }
}
