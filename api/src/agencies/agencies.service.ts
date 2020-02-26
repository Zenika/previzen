import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Agency } from './agency.entity';
import { Repository } from 'typeorm';

@Injectable()
export class AgenciesService {
  constructor(
    @InjectRepository(Agency)
    private readonly agenciesRepository: Repository<Agency>,
  ) {}

  findAll(): Promise<Agency[]> {
    return this.agenciesRepository.find();
  }

  findOne(id_agency: string): Promise<Agency> {
    return this.agenciesRepository.findOne(id_agency);
  }

  async remove(id_agency: string): Promise<void> {
    await this.agenciesRepository.delete(id_agency);
  }
}
