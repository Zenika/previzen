import {Injectable} from '@nestjs/common';
import {InjectRepository} from '@nestjs/typeorm';
import {Agency} from './agency.entity';
import {Repository} from 'typeorm';

@Injectable()
export class AgenciesService {
    constructor(
        @InjectRepository(Agency)
        private readonly agenciesRepository: Repository<Agency>,
    ) {
    }

    create(agency: Agency): Promise<Agency> {
        let newAgency = new Agency;

        newAgency.nameAgency = agency.nameAgency;
        newAgency.nameManager = agency.nameManager;
        newAgency.cityAgency = agency.cityAgency;
        newAgency.countryAgency = agency.countryAgency;

        return this.agenciesRepository.save(newAgency)
    }

    findAll(): Promise<Agency[]> {
        this.agenciesRepository.find().then(value => console.table(value));
        return this.agenciesRepository.find()
    }

    findOne(id_agency: string): Promise<Agency> {
        return this.agenciesRepository.findOne(id_agency);
    }

    async remove(id_agency: string): Promise<void> {
        await this.agenciesRepository.delete(id_agency);
    }
}
