import {
  Column,
  Entity,
  Index,
  PrimaryGeneratedColumn,
  OneToOne,
  JoinColumn,
} from 'typeorm';

import { Customer } from '../customers/customer.entity';
import { Consultant } from '../consultants/consultant.entity';

@Index('staffing_pkey', ['idStaffing'], { unique: true })
@Entity('staffing', { schema: 'public' })
export class Staffing {
  @PrimaryGeneratedColumn({ type: 'integer', name: 'id_staffing' })
  idStaffing: number;

  @Column('text', { name: 'month_staffing' })
  monthStaffing: number;

  @Column('text', { name: 'year_staffing' })
  yearStaffing: number;

  @Column('text', { name: 'duration_staffing' })
  durationStaffing: number;

  @Column('text', { name: 'price_staffing' })
  priceStaffing: number;

  @OneToOne(() => Customer, (customer) => customer.staffing)
  @JoinColumn([{ name: 'id_customer', referencedColumnName: 'idCustomer' }])
  idCustomer: Customer;

  @OneToOne(() => Consultant, (consultant) => consultant.staffing)
  @JoinColumn([{ name: 'id_consultant', referencedColumnName: 'idConsultant' }])
  idConsultant: Consultant;
}
