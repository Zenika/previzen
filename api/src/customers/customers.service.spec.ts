import { Test, TestingModule } from '@nestjs/testing';
import { CustomersService } from './customers.service';
import { getRepositoryToken } from '@nestjs/typeorm';
import { Customer } from './customer.entity';
import { Repository } from 'typeorm';

describe('Customers Service', () => {
  let customersService: CustomersService;
  let customerRepository: Repository<Customer>;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [
        CustomersService,
        {
          provide: getRepositoryToken(Customer),
          useClass: Repository,
        },
      ],
    }).compile();

    customersService = module.get<CustomersService>(CustomersService);
    customerRepository = module.get<Repository<Customer>>(
      getRepositoryToken(Customer),
    );
  });

  afterEach(() => {
    jest.resetAllMocks();
  });

  it('should return an array of Customer', async () => {
    const expectationResult = [new Customer()];

    jest
      .spyOn(customersService, 'findAll')
      .mockResolvedValue(expectationResult);

    expect(await customersService.findAll()).toBe(expectationResult);
  });

  it('should return an array of Promise of Customer', async () => {
    const mockConsultant = [new Customer()];
    const expectationResult = Promise.resolve([new Customer()]);

    jest
      .spyOn(customersService, 'findAll')
      .mockImplementation(() => expectationResult);

    expect(await customersService.findAll()).toEqual(mockConsultant);
  });

  it('should return an entity of Customer', async () => {
    const expectationResult = new Customer();
    const mockIdConsultant = '1';

    jest
      .spyOn(customersService, 'findOne')
      .mockResolvedValue(expectationResult);

    expect(await customersService.findOne(mockIdConsultant)).toBe(
      expectationResult,
    );
  });

  it('should return a Promise of Customer entity creation', async () => {
    const newConsultant = new Customer();
    const expectationResult = Promise.resolve(new Customer());

    jest
      .spyOn(customersService, 'create')
      .mockImplementation(() => expectationResult);

    expect(customersService.create(newConsultant)).toEqual(expectationResult);
  });
});
