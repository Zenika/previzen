import { Injectable, NotFoundException } from '@nestjs/common';
import { Consultant } from './consultants.model';

@Injectable()
export class ConsultantsService {
    consultants: Consultant[] = [];
    insertConsultant(
            first_name: string,
            last_name: string,
            starts_after_month: number,
            starts_after_years: number,
            leaves_after_month: number,
            leaves_after_years: number
        ) {
        const consulId = Date.now();
        const newConsultant = new Consultant(
                consulId,
                first_name,
                last_name,
                starts_after_month,
                starts_after_years,
                leaves_after_month,
                leaves_after_years
            );
        this.consultants.push(newConsultant);
        return consulId
    }

    getConsultants() {
        return [...this.consultants];
    }

    getConsultant(consultantId: string) {
        const consultant = this.findConsultant(consultantId)[0];
        return { ...consultant };
    }

    private findConsultant(id: string): [Consultant, number] {
        const consultantIndex = this.consultants.findIndex(cons => cons.id === parseInt(id));
        const consultant = this.consultants[consultantIndex];
        if (!consultant) {
          throw new NotFoundException;
        }
        return [consultant, consultantIndex];
      }
}
