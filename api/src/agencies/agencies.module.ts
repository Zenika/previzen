import {Module} from '@nestjs/common';
import {TypeOrmModule} from "@nestjs/typeorm";
import {Agency} from "./agency.entity";
import {AgenciesService} from './agencies.service';

@Module({
    imports: [TypeOrmModule.forFeature([Agency])],
    providers: [AgenciesService]
})

export class AgenciesModule {
}
