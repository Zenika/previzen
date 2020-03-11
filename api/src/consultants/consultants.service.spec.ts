import { Test, TestingModule } from '@nestjs/testing';
import { ConsultantsService } from './consultants.service';
import { ConsultantsController } from './consultants.controller';
import { Repository } from 'typeorm';
import { Consultant } from './consultant.entity';
import { getRepositoryToken } from '@nestjs/typeorm';

describe('Consultants Service', () => {
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
    const expectationResult = [new Consultant()];

    jest
      .spyOn(consultantsService, 'findAll')
      .mockResolvedValue(expectationResult);

    expect(await consultantsService.findAll()).toBe(expectationResult);
  });

  it('should return an array of Promise of Consultant', async () => {
    const mockConsultant = [new Consultant()];
    const expectationResult = Promise.resolve([new Consultant()]);

    jest
      .spyOn(consultantsService, 'findAll')
      .mockImplementation(() => expectationResult);

    expect(await consultantsService.findAll()).toEqual(mockConsultant);
  });

  it('should return an entity of Consultant', async () => {
    const expectationResult = new Consultant();
    const mockIdConsultant = '1';

    jest
      .spyOn(consultantsService, 'findOne')
      .mockResolvedValue(expectationResult);

    expect(await consultantsService.findOne(mockIdConsultant)).toBe(
      expectationResult,
    );
  });

  it('should return a Promise of Consultant entity creation', async () => {
    const newConsultant = new Consultant();
    const expectationResult = Promise.resolve(new Consultant());

    jest
      .spyOn(consultantsService, 'create')
      .mockImplementation(() => expectationResult);

    expect(consultantsService.create(newConsultant)).toEqual(expectationResult);
  });
});
