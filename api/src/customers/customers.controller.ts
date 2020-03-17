import {Controller, Get} from '@nestjs/common';
import {CustomersService} from "./customers.service";

@Controller('customers')
export class CustomersController {
    constructor(private customersService: CustomersService) {
    }

    @Get()
    findAll() {
        console.log(CustomersService.name + ' - Retrieving all consultants...',);
        return this.customersService.findAll();
    }
}
