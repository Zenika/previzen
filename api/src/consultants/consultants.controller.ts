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
    return this.consultantsService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id_consultant: string) {
    return this.consultantsService.findOne(id_consultant);
  }

  @Post()
  async create(@Body() newConsultant: Consultant): Promise<any> {
    return await this.consultantsService.create(newConsultant);
  }

  @Put(':id')
  async update(
    @Param('id') id_consultant,
    @Body() consultant: Consultant,
  ): Promise<any> {
    consultant.idConsultant = Number(id_consultant);
    return await this.consultantsService.update(consultant);
  }

  @Delete(':id')
  async delete(@Param('id') id_consultant: string) {
    return await this.consultantsService.remove(id_consultant);
  }
}
