import {Injectable} from '@nestjs/common';
import {InjectRepository} from '@nestjs/typeorm';
import {Consultant} from './consultant.entity';
import {Repository} from 'typeorm';

@Injectable()
export class ConsultantsService {
    constructor(
        @InjectRepository(Consultant)
        private readonly consultantsRepository: Repository<Consultant>,
    ) {
    }

    findAll(): Promise<Consultant[]> {
        return this.consultantsRepository.find();
    }

    findOne(id_consultant: string): Promise<Consultant> {
        return this.consultantsRepository.findOne(id_consultant);
    }

    create(consultant: Consultant): Promise<Consultant> {
        const newConsultant = new Consultant();
        newConsultant.idAgency.idAgency = consultant.idAgency.idAgency;
        newConsultant.firstNameConsultant = consultant.firstNameConsultant;
        newConsultant.lastNameConsultant = consultant.lastNameConsultant;
        newConsultant.startsAfterMonthConsultant = consultant.startsAfterMonthConsultant;
        newConsultant.startsAfterYearConsultant = consultant.startsAfterYearConsultant;
        newConsultant.leavesAfterMonthConsultant = consultant.leavesAfterMonthConsultant;
        newConsultant.leavesAfterYearConsultant = consultant.leavesAfterYearConsultant;

        // console.log() intended to track activity, delete it when it's done
        console.table(newConsultant);
        return this.consultantsRepository.save(newConsultant);
    }

    async remove(id_consultant: string): Promise<void> {
        await this.consultantsRepository.delete(id_consultant);
    }
}
