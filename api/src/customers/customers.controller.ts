import { Body, Controller, Get, Param, Post } from '@nestjs/common';
import { CustomersService } from './customers.service';
import { Customer } from './customer.entity';

@Controller('customers')
export class CustomersController {
  constructor(private customersService: CustomersService) {}

  @Get()
  findAll() {
    console.log(CustomersService.name + ' - Retrieving all consultants...');
    return this.customersService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id_customer: string) {
    console.log(
      CustomersService.name +
        ' - Retrieving one customer where id = ' +
        id_customer,
    );
    return this.customersService.findOne(id_customer);
  }

  @Post()
  create(@Body() customer: Customer) {
    console.log(
      CustomersController.name +
        ' - A new Consultant will be created with those parameters:',
    );
    console.table(customer);
    return this.customersService.create(customer);
  }
}
