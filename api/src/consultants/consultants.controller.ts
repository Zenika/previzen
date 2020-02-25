import { Controller, Body, Get, Post, Patch, Delete, Param } from '@nestjs/common';
import { ConsultantsService } from './consultants.service';

@Controller('consultants')
export class ConsultantsController {
    constructor(private readonly consultantsService: ConsultantsService) {}

    @Post()
    createConsultants(
        @Body('id_agency') id_agency: number,
        @Body('first_name_consultant') first_name_consultant: string,
        @Body('last_name_consultant') last_name_consultant: string,
        @Body('starts_after_month_consultant') starts_after_month_consultant: number,
        @Body('starts_after_year_consultant') starts_after_year_consultant: number,
        @Body('leaves_after_month_consultant') leaves_after_month_consultant: number,
        @Body('leaves_after_year_consultant') leaves_after_year_consultant: number
        ) {
        const generatedId = this.consultantsService.insertConsultant(
            id_agency,
            first_name_consultant,
            last_name_consultant,
            starts_after_month_consultant,
            starts_after_year_consultant,
            leaves_after_month_consultant,
            leaves_after_year_consultant
            );
        return { id_consultant: generatedId };
    }

    @Get()
    getAllConsultants() {
        return this.consultantsService.getConsultants();
    }

    @Get(':id')
    getConsultant(@Param('id') consulId) {
        return this.consultantsService.getConsultant(consulId);
    }

    @Patch(':id') 
    updateConsultant(
        @Param('id') consulId: string,
        @Body('first_name_consultant') first_name_consultant: string,
        @Body('last_name_consultant') last_name_consultant: string,
        @Body('starts_after_month_consultant') starts_after_month_consultant: number,
        @Body('starts_after_year_consultant') starts_after_year_consultant: number,
        @Body('leaves_after_month_consultant') leaves_after_month_consultant: number,
        @Body('leaves_after_year_consultant') leaves_after_year_consultant: number,
    ) {
        this.consultantsService.updateConsultant(
            consulId,
            first_name_consultant,
            last_name_consultant,
            starts_after_month_consultant,
            starts_after_year_consultant,
            leaves_after_month_consultant,
            leaves_after_year_consultant
        );
        return `Consultant's profile has been updated`;
    }

    @Delete(':id')
    removeConsultant(
        @Param('id') consulId: string
    ) {
        this.consultantsService.deleteConsultant(
            consulId
        )
        return `Consultant's profile has been deleted`;
    }
}
