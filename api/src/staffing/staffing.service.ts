import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Staffing } from './staffing.entity';
import { Repository } from 'typeorm';

@Injectable()
export class StaffingService {
  constructor(
    @InjectRepository(Staffing)
    private readonly staffingRepository: Repository<Staffing>,
  ) { }

  findAll(): Promise<Staffing[]> {
    return this.staffingRepository.find({
      join: {
        alias: 'staffing',
        leftJoinAndSelect: {
          consultant: "staffing.idConsultant",
          customer: "staffing.idCustomer"
        },
      },
    });
  }

  findOne(id_staffing: string): Promise<Staffing> {
    return this.staffingRepository.findOne(id_staffing, {
      join: {
        alias: 'staffing',
        leftJoinAndSelect: {
          consultant: "staffing.idConsultant",
          customer: "staffing.idCustomer"
        },
      },
    });
  }

  create(staffing: Staffing): Promise<Staffing> {
    return this.staffingRepository.save(staffing);
  }

  update(id_staffing: string, staffing: Staffing): Promise<Staffing> {
    staffing.idStaffing = parseInt(id_staffing);
    return this.staffingRepository.save(staffing);
  }

  async remove(id_staffing: string): Promise<void> {
    await this.staffingRepository.delete(id_staffing);
  }
}
