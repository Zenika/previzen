import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Consultant } from './consultant.entity';
import { Repository } from 'typeorm';

@Injectable()
export class ConsultantsService {
  constructor(
    @InjectRepository(Consultant)
    private readonly consultantsRepository: Repository<Consultant>,
  ) {}

  findAll(): Promise<Consultant[]> {
    return this.consultantsRepository.find({
      join: {
        alias: 'agency',
        leftJoinAndSelect: {
          id_agency: 'agency.idAgency',
        },
      },
    });
  }

  findOne(id_consultant: string): Promise<Consultant> {
    return this.consultantsRepository.findOne(id_consultant, {
      join: {
        alias: 'agency',
        leftJoinAndSelect: {
          id_agency: 'agency.idAgency',
        },
      },
    });
  }

  create(consultant: Consultant): Promise<Consultant> {
    return this.consultantsRepository.save(consultant);
  }

  update(id_consultant: string, consultant: Consultant) {
    consultant.idConsultant = parseInt(id_consultant);
    return this.consultantsRepository.save(consultant);
  }

  async remove(id_consultant: string): Promise<void> {
    await this.consultantsRepository.delete(id_consultant);
  }
}