import { Injectable, NotFoundException } from '@nestjs/common';
import { Consultant } from './consultants.model';

@Injectable()
export class ConsultantsService {
    consultants: Consultant[] = [];
    insertConsultant(
            id_agency: number,
            first_name_consultant: string,
            last_name_consultant: string,
            starts_after_month_consultant: number,
            starts_after_year_consultant: number,
            leaves_after_month_consultant: number,
            leaves_after_year_consultant: number,
        ) {
        const consulId = Date.now();
        const newConsultant = new Consultant(
                consulId,
                id_agency,
                first_name_consultant,
                last_name_consultant,
                starts_after_month_consultant,
                starts_after_year_consultant,
                leaves_after_month_consultant,
                leaves_after_year_consultant,
            );
        this.consultants.push(newConsultant);
        return consulId
    }

    getConsultants() {
        return [...this.consultants];
    }

    getConsultant(consulId: string) {
        const consultant = this.findConsultant(consulId)[0];
        return { ...consultant };
    }

    updateConsultant(
            consulId: string,
            first_name_consultant: string,
            last_name_consultant: string,
            starts_after_month_consultant: number,
            starts_after_year_consultant: number,
            leaves_after_month_consultant: number,
            leaves_after_year_consultant: number,
        ) {
        const [consultant, index] = this.findConsultant(consulId);
        const updateConsultant = { ...consultant };
        if (last_name_consultant) {
            updateConsultant.last_name_consultant = last_name_consultant;
        }
        if (first_name_consultant) {
            updateConsultant.first_name_consultant = first_name_consultant;
        }
        if (starts_after_month_consultant) {
            updateConsultant.starts_after_month_consultant = starts_after_month_consultant;
        }
        if (starts_after_year_consultant) {
            updateConsultant.starts_after_year_consultant = starts_after_year_consultant;
        }
        if (leaves_after_month_consultant) {
            updateConsultant.leaves_after_month_consultant = leaves_after_month_consultant;
        }
        if (leaves_after_year_consultant) {
            updateConsultant.leaves_after_year_consultant = leaves_after_year_consultant;
        }
          this.consultants[index] = updateConsultant;
        }

    deleteConsultant(consulId: string) {
        const index = this.findConsultant(consulId)[1];
        this.consultants.splice(index, 1);
    }

    private findConsultant(id: string): [Consultant, number] {
        const consultantIndex = this.consultants.findIndex(cons => cons.id_consultant === parseInt(id));
        const consultant = this.consultants[consultantIndex];
        if (!consultant) {
          throw new NotFoundException;
        }
        return [consultant, consultantIndex];
      }
}
