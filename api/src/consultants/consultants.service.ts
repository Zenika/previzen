import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Consultant } from './consultant.entity';
import { Repository, DeleteResult, UpdateResult } from 'typeorm';

@Injectable()
export class ConsultantsService {
  constructor(
    @InjectRepository(Consultant)
    private readonly consultantsRepository: Repository<Consultant>,
  ) {}

  async findAll(): Promise<Consultant[]> {
    return await this.consultantsRepository.find();
  };

  async findOne(id_consultant: string): Promise<Consultant> {
    return await this.consultantsRepository.findOne(id_consultant);
  };

  async create(consultant: Consultant): Promise<Consultant> {
    return await this.consultantsRepository.save(consultant);
  };

  async update(consultant: Consultant): Promise<UpdateResult> {
    return await this.consultantsRepository.update(consultant.idConsultant, consultant);
  };

  async remove(id_consultant: string): Promise<DeleteResult> {
    return await this.consultantsRepository.delete(id_consultant);
  };
}
