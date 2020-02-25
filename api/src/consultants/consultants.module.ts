import {Module} from '@nestjs/common';
import {ConsultantsService} from './consultants.service';
import {ConsultantsController} from './consultants.controller';
import {TypeOrmModule} from "@nestjs/typeorm";
import {Consultant} from "./consultant.entity";

@Module({
    imports: [TypeOrmModule.forFeature([Consultant])],
    providers: [ConsultantsService],
    controllers: [ConsultantsController]
})
export class ConsultantsModule {
}
