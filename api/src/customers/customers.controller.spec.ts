import { Test, TestingModule } from '@nestjs/testing';
import { CustomersController } from './customers.controller';
import { CustomersService } from './customers.service';
import { getRepositoryToken } from '@nestjs/typeorm';
import { Customer } from './customer.entity';
import { Repository } from 'typeorm';

describe('Customers Controller', () => {
  let customersController: CustomersController;
  let customersService: CustomersService;
  let customersRepository: Repository<Customer>;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [
        CustomersService,
        {
          provide: getRepositoryToken(Customer),
          useClass: Repository,
        },
      ],
      controllers: [CustomersController],
    }).compile();

    customersController = module.get<CustomersController>(CustomersController);
    customersService = module.get<CustomersService>(CustomersService);
    customersRepository = module.get<Repository<Customer>>(
      getRepositoryToken(Customer),
    );
  });

  afterEach(() => {
    jest.resetAllMocks();
  });

  it('should return an array of Customers', async () => {
    const mockConsultant = [new Customer()];

    jest
      .spyOn(customersController, 'findAll')
      .mockResolvedValue(mockConsultant);

    expect(await customersController.findAll()).toBe(mockConsultant);
  });

  it('should return an array of Promise of Customer', async () => {
    const mockConsultant = [new Customer()];
    const expectationResult = Promise.resolve([new Customer()]);

    jest
      .spyOn(customersController, 'findAll')
      .mockImplementation(() => expectationResult);

    expect(await customersController.findAll()).toEqual(mockConsultant);
  });

  it('should return an entity of Customer', async () => {
    const expectationResult = new Customer();
    const mockIdConsultant = '1';

    jest
      .spyOn(customersController, 'findOne')
      .mockResolvedValue(expectationResult);

    expect(await customersController.findOne(mockIdConsultant)).toBe(
      expectationResult,
    );
  });

  it('should return a Promise of Customer entity creation', async () => {
    const newConsultant = new Customer();
    const expectationResult = Promise.resolve(new Customer());

    jest
      .spyOn(customersController, 'create')
      .mockImplementation(() => expectationResult);

    expect(customersController.create(newConsultant)).toEqual(
      expectationResult,
    );
  });
});
