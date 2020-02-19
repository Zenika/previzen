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
            leaves_after_years: number,
        ) {
        const consulId = Date.now();
        const newConsultant = new Consultant(
                consulId,
                first_name,
                last_name,
                starts_after_month,
                starts_after_years,
                leaves_after_month,
                leaves_after_years,
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

    updateConsultant(
            consultantId: string,
            first_name: string,
            last_name: string,
            starts_after_month: number,
            starts_after_years: number,
            leaves_after_month: number,
            leaves_after_years: number,
        ) {
        const [consultant, index] = this.findConsultant(consultantId);
        const updateConsultant = { ...consultant };
        if (last_name) {
            updateConsultant.last_name = last_name;
        }
        if (first_name) {
            updateConsultant.first_name = first_name;
        }
        if (starts_after_month) {
            updateConsultant.starts_after_month = starts_after_month;
        }
        if (starts_after_years) {
            updateConsultant.starts_after_years = starts_after_years;
        }
        if (leaves_after_month) {
            updateConsultant.leaves_after_month = leaves_after_month;
        }
        if (leaves_after_years) {
            updateConsultant.leaves_after_years = leaves_after_years;
        }
          this.consultants[index] = updateConsultant;
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
