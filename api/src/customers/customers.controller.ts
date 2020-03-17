import {Controller, Get, Param} from '@nestjs/common';
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

    @Get(':id')
    findOne(@Param('id') id_customer: string) {
        console.log(CustomersService.name + ' - Retrieving one customer where id = ' + id_customer)
        return this.customersService.findOne(id_customer)
    }
}
