import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Customer } from './customer.entity';
import { Repository } from 'typeorm';

@Injectable()
export class CustomersService {
  constructor(
    @InjectRepository(Customer)
    private readonly customersRepository: Repository<Customer>,
  ) {}

  findAll(): Promise<Customer[]> {
    return this.customersRepository.find();
  }

  findOne(id_customer: string): Promise<Customer> {
    return this.customersRepository.findOne(id_customer);
  }

  create(customer: Customer): Promise<Customer> {
    return this.customersRepository.save(customer);
  }

  update(id_customer: string, customer: Customer): Promise<Customer> {
    customer.idCustomer = parseInt(id_customer);
    return this.customersRepository.save(customer);
  }

  async remove(id_customer: string): Promise<void> {
    await this.customersRepository.delete(id_customer);
  }
}
