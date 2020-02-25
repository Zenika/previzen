import {Module} from '@nestjs/common';
import {TypeOrmModule} from "@nestjs/typeorm";
import {Connection} from "typeorm";
import {Consultant} from "./consultants/consultant.entity";
import {Agency} from "./agencies/agency.entity";
import {AgenciesModule} from './agencies/agencies.module';

@Module({
    imports: [
        TypeOrmModule.forRoot({
            type: 'postgres',
            host: 'localhost',
            port: 5432,
            username: 'application',
            password: 'password',
            database: 'previzen',
            entities: [Consultant, Agency],
            synchronize: true,
        }),
        AgenciesModule
    ]
})
export class AppModule {
    constructor(private readonly connection: Connection) {
    }
}
