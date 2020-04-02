import {
  Column,
  Entity,
  Index,
  PrimaryGeneratedColumn,
  JoinColumn,
  ManyToOne,
} from 'typeorm';

import { Customer } from '../customers/customer.entity';
import { Consultant } from '../consultants/consultant.entity';

@Index('staffing_pkey', ['idStaffing'], { unique: true })
@Entity('staffing', { schema: 'public' })
export class Staffing {
  @PrimaryGeneratedColumn({ type: 'integer', name: 'id_staffing' })
  idStaffing: number;

  @Column('integer', { name: 'month_staffing' })
  monthStaffing: number;

  @Column('integer', { name: 'year_staffing' })
  yearStaffing: number;

  @Column('double precision', { name: 'duration_staffing', precision: 53 })
  durationStaffing: number;

  @Column('integer', { name: 'price_staffing' })
  priceStaffing: number;

  @ManyToOne(() => Customer, (customer) => customer.staffings)
  @JoinColumn([{ name: 'id_customer', referencedColumnName: 'idCustomer' }])
  idCustomer: Customer;

  @ManyToOne(() => Consultant, (consultant) => consultant.staffings)
  @JoinColumn([{ name: 'id_consultant', referencedColumnName: 'idConsultant' }])
  idConsultant: Consultant;
}
