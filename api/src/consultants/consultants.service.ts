import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Consultant } from './consultant.entity';
import { Repository } from 'typeorm';

@Injectable()
export class ConsultantsService {
  constructor(
    @InjectRepository(Consultant)
    private readonly consultantsRepository: Repository<Consultant>,
  ) { }

  async findAll(): Promise<Consultant[]> {
    return await this.consultantsRepository.find({
      join: {
        alias: 'agency',
        leftJoinAndSelect: {
          id_agency: 'agency.idAgency',
        },
      },
    });
  }

  async findOne(id_consultant: string): Promise<Consultant> {
    return await this.consultantsRepository.findOne(id_consultant, {
      join: {
        alias: 'agency',
        leftJoinAndSelect: {
          id_agency: 'agency.idAgency',
        },
      },
    });
  }

  async create(consultant: Consultant): Promise<Consultant> {
    return await this.consultantsRepository.save(consultant);
  }

  async update(id_consultant: string, consultant: Consultant) {
    consultant.idConsultant = parseInt(id_consultant);
    return await this.consultantsRepository.save(consultant);
  }

  async remove(id_consultant: string) {
    return await this.consultantsRepository.delete(id_consultant);
  }
}
