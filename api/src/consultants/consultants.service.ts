import { Injectable } from '@nestjs/common';
import { Consultant } from './consultants.model';

@Injectable()
export class ConsultantsService {
    private consultants: Consultant[] = [];
    insertConsultant(
            first_name: string,
            last_name: string,
            starts_after_month: number,
            starts_after_years: number,
            leaves_after_month: number,
            leaves_after_years: number
        ) {
        const consulId = Date.now();
        const newConsultant = new Consultant(consulId, first_name, last_name, starts_after_month, starts_after_years, leaves_after_month, leaves_after_years);
        this.consultants.push(newConsultant);
        return consulId.toString();
    }

    getConsultants() {
        return [...this.consultants];
    }
}
