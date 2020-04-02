import {
  Column,
  Entity,
  Index,
  PrimaryGeneratedColumn,
  OneToOne,
} from 'typeorm';

import { Staffing } from '../staffing/staffing.entity';

@Index('customer_pkey', ['idCustomer'], { unique: true })
@Entity('customer', { schema: 'public' })
export class Customer {
  @PrimaryGeneratedColumn({ type: 'integer', name: 'id_customer' })
  idCustomer: number;

  @Column('text', { name: 'name_customer' })
  nameCustomer: string;

  @OneToOne(() => Staffing, (staffing) => staffing.idCustomer)
  staffing: Staffing;
}