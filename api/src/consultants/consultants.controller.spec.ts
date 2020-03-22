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

  afterEach(() => {
    jest.resetAllMocks();
  });

  it('should return an array of Consultant', async () => {
    const mockConsultant = [new Consultant()];

    jest
      .spyOn(consultantsController, 'findAll')
      .mockResolvedValue(mockConsultant);

    expect(await consultantsController.findAll()).toBe(mockConsultant);
  });

  it('should return an array of Promise of Consultant', async () => {
    const mockConsultant = [new Consultant()];
    const expectationResult = Promise.resolve([new Consultant()]);

    jest
      .spyOn(consultantsController, 'findAll')
      .mockImplementation(() => expectationResult);

    expect(await consultantsController.findAll()).toEqual(mockConsultant);
  });

  it('should return an entity of Consultant', async () => {
    const expectationResult = new Consultant();
    const mockIdConsultant = '1';

    jest
      .spyOn(consultantsController, 'findOne')
      .mockResolvedValue(expectationResult);

    expect(await consultantsController.findOne(mockIdConsultant)).toBe(
      expectationResult,
    );
  });

  it('should return a Promise of Consultant entity creation', async () => {
    const newConsultant = new Consultant();
    const expectationResult = Promise.resolve(new Consultant());

    jest
      .spyOn(consultantsController, 'create')
      .mockImplementation(() => expectationResult);

    expect(consultantsController.create(newConsultant)).toEqual(
      expectationResult,
    );
  });
});
