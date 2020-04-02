import {
  Column,
  Entity,
  Index,
  JoinColumn,
  ManyToOne,
  PrimaryGeneratedColumn,
  OneToOne,
} from 'typeorm';

import { Agency } from '../agencies/agency.entity';
import { Staffing } from '../staffing/staffing.entity';

@Index('consultant_pkey', ['idConsultant'], { unique: true })
@Entity('consultant', { schema: 'public' })
export class Consultant {
  @PrimaryGeneratedColumn({ type: 'integer', name: 'id_consultant' })
  idConsultant: number;

  @Column('text', { name: 'first_name_consultant' })
  firstNameConsultant: string;

  @Column('text', { name: 'last_name_consultant' })
  lastNameConsultant: string;

  @Column('integer', { name: 'starts_after_month_consultant' })
  startsAfterMonthConsultant: number;

  @Column('integer', { name: 'starts_after_year_consultant' })
  startsAfterYearConsultant: number;

  @Column('integer', { name: 'leaves_after_month_consultant', nullable: true })
  leavesAfterMonthConsultant: number | null;

  @Column('integer', { name: 'leaves_after_year_consultant', nullable: true })
  leavesAfterYearConsultant: number | null;

  @ManyToOne(() => Agency, (agency) => agency.consultants)
  @JoinColumn([{ name: 'id_agency', referencedColumnName: 'idAgency' }])
  idAgency: Agency;

  @OneToOne(() => Staffing, (staffing) => staffing.idConsultant)
  staffing: Staffing;
}
