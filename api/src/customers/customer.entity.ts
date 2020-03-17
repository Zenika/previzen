import {
  Column,
  Entity,
  Index,
  OneToMany,
  PrimaryGeneratedColumn,
} from 'typeorm';

@Index('customer_pkey', ['idCustomer'], { unique: true })
@Entity('customer', { schema: 'public' })
export class Customer {
  @PrimaryGeneratedColumn({ type: 'integer', name: 'id_customer' })
  idCustomer: number;

  @Column('text', { name: 'name_customer' })
  nameCustomer: string;
}
