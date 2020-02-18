import { Controller, Get, Post, Patch, Delete } from '@nestjs/common';

@Controller('consultants')
export class ConsultantsController {
    @Get()
    getConsultants(): string {
        return 'Consultants list'
    }
    @Post()
    createConsultants(): string {
        return 'Consultant added'
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
