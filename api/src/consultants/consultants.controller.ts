import { Controller, Body, Get, Post, Patch, Delete, Param } from '@nestjs/common';
import { ConsultantsService } from './consultants.service';
import { response } from 'express';

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
        @Body('leaves_after_years') leaves_after_years: number
        ) {
        const generatedId = this.consultantsService.insertConsultant(
            first_name,
            last_name,
            starts_after_month,
            starts_after_years,
            leaves_after_month,
            leaves_after_years
            );
        return { id: generatedId };
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
        @Body('first_name') first_name: string,
        @Body('last_name') last_name: string,
        @Body('starts_after_month') starts_after_month: number,
        @Body('starts_after_years') starts_after_years: number,
        @Body('leaves_after_month') leaves_after_month: number,
        @Body('leaves_after_years') leaves_after_years: number
    ) {
        this.consultantsService.updateConsultant(
            consulId,
            first_name,
            last_name,
            starts_after_month,
            starts_after_years,
            leaves_after_month,
            leaves_after_years
        );
    }

    @Delete() // TODO
    deleteConsultant(): string {
        return 'Consultant deleted'
    }
}
