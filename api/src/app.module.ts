import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Connection } from 'typeorm';
import { Consultant } from './consultants/consultant.entity';
import { Agency } from './agencies/agency.entity';
import { AgenciesModule } from './agencies/agencies.module';
import { AppService } from './app.service';
import { AppController } from './app.controller';
import { ConsultantsModule } from './consultants/consultants.module';
import { CustomersModule } from './customers/customers.module';
import { Customer } from './customers/customer.entity';
import { StaffingModule } from './staffing/staffing.module';
import { Staffing } from './staffing/staffing.entity';

@Module({
  imports: [
    TypeOrmModule.forRoot({
      type: 'postgres',
      host: 'localhost',
      port: 5432,
      username: 'application',
      password: 'password',
      database: 'previzen',
      entities: [Consultant, Customer, Agency, Staffing],
      synchronize: false,
    }),
    AgenciesModule,
    ConsultantsModule,
    CustomersModule,
    StaffingModule
  ],
  providers: [AppService],
  controllers: [AppController],
})
export class AppModule {
  constructor(private readonly connection: Connection) {}
}
