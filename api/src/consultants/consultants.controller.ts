import { Controller, Body, Get, Post, Patch, Delete, Param, Put, Req, HttpException, HttpStatus } from '@nestjs/common';
import { ConsultantsService } from './consultants.service';

@Controller('consultants')
export class ConsultantsController {
    constructor(private readonly consultantsService: ConsultantsService) {}

    @Post()
    createConsultants(
        @Body('first_name') first_name: string,
        @Body('last_name') last_name: string,
        @Body('starts_after_month') starts_after_month: number,
        @Body('starts_after_year') starts_after_year: number,
        @Body('leaves_after_month') leaves_after_month: number,
        @Body('leaves_after_year') leaves_after_year: number
        ) {
        const generatedId = this.consultantsService.insertConsultant(
            first_name,
            last_name,
            starts_after_month,
            starts_after_year,
            leaves_after_month,
            leaves_after_year
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
        @Body('starts_after_year') starts_after_year: number,
        @Body('leaves_after_month') leaves_after_month: number,
        @Body('leaves_after_year') leaves_after_year: number,
    ) {
        this.consultantsService.updateConsultant(
            consulId,
            first_name,
            last_name,
            starts_after_month,
            starts_after_year,
            leaves_after_month,
            leaves_after_year
        );
        return `Consultant's profile has been updated`;
    }

    @Put(':id')


    @Delete(':id')
    removeConsultant(
        @Param('id') consulId: string
    ) {
        this.consultantsService.deleteConsultant(
            consulId
        );
        return `Consultant's profile has been deleted`;
    }
}
