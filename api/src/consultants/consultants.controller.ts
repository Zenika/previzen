import { Controller, Body, Get, Post, Patch, Delete } from '@nestjs/common';
import { ConsultantsService } from './consultants.service';

@Controller('consultants')
export class ConsultantsController {
    constructor(private readonly consultantsService: ConsultantsService) {}
    @Post()
    createConsultants(
        @Body('first_name') first_name: string,
        @Body('last_name') last_name: string,
        @Body('starts_after_month') starts_after_month: number,
        @Body('starts_after_years') starts_after_years: number,
        @Body('leaves_after_month') leaves_after_month: number,
        @Body('leaves_after_years') leaves_after_years: number,
        ) {
        const generatedId = this.consultantsService.insertConsultant(
            first_name,
            last_name,
            starts_after_month,
            starts_after_years,
            leaves_after_month,
            leaves_after_years
            );
        return { id: generatedId }
    }
    @Get()
    getAllConsultants() {
        return this.consultantsService.getConsultants();
    }
    @Patch()
    updateConsultant(): string {
        return 'Consultant updated'
    }
    @Delete()
    deleteConsultant(): string {
        return 'Consultant deleted'
    }
}
