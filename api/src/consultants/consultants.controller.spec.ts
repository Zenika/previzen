import { ConsultantsService } from './consultants.service';
import { Repository } from 'typeorm';
import { Consultant } from './consultant.entity';
import { Test, TestingModule } from '@nestjs/testing';
import { getRepositoryToken } from '@nestjs/typeorm';
import { ConsultantsController } from './consultants.controller';

describe('Consultants Controller', () => {
  let consultantsController: ConsultantsController;
  let consultantsService: ConsultantsService;
  let consultantRepository: Repository<Consultant>;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [
        ConsultantsService,
        {
          provide: getRepositoryToken(Consultant),
          useClass: Repository,
        },
      ],
      controllers: [ConsultantsController],
    }).compile();

    consultantsController = module.get(ConsultantsController);
    consultantsService = module.get<ConsultantsService>(ConsultantsService);
    consultantRepository = module.get<Repository<Consultant>>(
      getRepositoryToken(Consultant),
    );
  });

  afterAll(() => {
    jest.resetAllMocks();
  });

  it('should return an entity of Consultant', async () => {
    const consultantTest = new Consultant();
    const result = Promise.resolve(consultantTest);
    jest.spyOn(consultantsService, 'findOne').mockImplementation(() => result);
  });

  it('should return an entity of Consultant', async () => {
    const expectedResult = new Consultant();
    const mockNumberToSatisfyParameters = '0';

    jest.spyOn(consultantsService, 'findOne').mockResolvedValue(expectedResult);

    expect(
      await consultantsController.findOne(mockNumberToSatisfyParameters),
    ).toBe(expectedResult);
  });

  it('should return an array of Consultant', async () => {
    const consultantTest = new Consultant();
    const result = Promise.resolve([consultantTest]);
    jest.spyOn(consultantsService, 'findAll').mockImplementation(() => result);
  });
});
