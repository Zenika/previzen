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
    return this.consultantsRepository.find();
  }

  findOne(id_consultant: string): Promise<Consultant> {
    return this.consultantsRepository.findOne(id_consultant);
  }

  async remove(id_consultant: string): Promise<void> {
    await this.consultantsRepository.delete(id_consultant);
  }
}
