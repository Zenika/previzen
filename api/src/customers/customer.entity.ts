import {
  Column,
  Entity,
  Index,
  PrimaryGeneratedColumn,
  OneToMany,
} from 'typeorm';

import { Staffing } from '../staffing/staffing.entity';

@Index('customer_pkey', ['idCustomer'], { unique: true })
@Entity('customer', { schema: 'public' })
export class Customer {
  @PrimaryGeneratedColumn({ type: 'integer', name: 'id_customer' })
  idCustomer: number;

  @Column('text', { name: 'name_customer' })
  nameCustomer: string;

  @OneToMany(() => Staffing, (staffings) => staffings.idCustomer)
  staffings: Staffing;
}
