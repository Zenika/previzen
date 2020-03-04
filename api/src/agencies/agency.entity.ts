import {
  Column,
  Entity,
  Index,
  OneToMany,
  PrimaryGeneratedColumn,
} from 'typeorm';
import { Consultant } from '../consultants/consultant.entity';

@Index('agency_pkey', ['idAgency'], { unique: true })
@Entity('agency', { schema: 'public' })
export class Agency {
  @PrimaryGeneratedColumn({ type: 'integer', name: 'id_agency' })
  idAgency: number;

  @Column('text', { name: 'name_agency' })
  nameAgency: string;

  @Column('text', { name: 'name_manager', nullable: true })
  nameManager: string | null;

  @Column('text', { name: 'city_agency' })
  cityAgency: string;

  @Column('text', { name: 'country_agency' })
  countryAgency: string;

  @OneToMany(
    () => Consultant,
    consultant => consultant.idAgency,
  )
  consultants: Consultant[];
}
