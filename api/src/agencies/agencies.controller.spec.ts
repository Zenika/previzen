import { Test, TestingModule } from '@nestjs/testing';
import { AgenciesController } from './agencies.controller';
import { Repository } from 'typeorm';
import { getRepositoryToken } from '@nestjs/typeorm';
import { AgenciesService } from './agencies.service';
import { Agency } from './agency.entity';

describe('Agencies Controller', () => {
  let agenciesController: AgenciesController;
  let agenciesService: AgenciesService;
  let agencyRepository: Repository<Agency>;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [
        AgenciesService,
        {
          provide: getRepositoryToken(Agency),
          useClass: Repository,
        },
      ],
      controllers: [AgenciesController],
    }).compile();

    agenciesController = module.get(AgenciesController);
    agenciesService = module.get<AgenciesService>(AgenciesService);
    agencyRepository = module.get<Repository<Agency>>(
      getRepositoryToken(Agency),
    );
  });

  afterAll(() => {
    jest.resetAllMocks();
  });

  it('should return an array of Agency', async () => {
    const mockConsultant = [new Agency()];

    jest.spyOn(agenciesController, 'findAll').mockResolvedValue(mockConsultant);

    expect(await agenciesController.findAll()).toBe(mockConsultant);
  });

  it('should return an array of Promise of Agency', async () => {
    const mockConsultant = [new Agency()];
    const expectationResult = Promise.resolve([new Agency()]);

    jest
      .spyOn(agenciesController, 'findAll')
      .mockImplementation(() => expectationResult);

    expect(await agenciesController.findAll()).toEqual(mockConsultant);
  });

  it('should return an entity of Agency', async () => {
    const expectationResult = new Agency();
    const mockIdConsultant = '1';

    jest
      .spyOn(agenciesController, 'findOne')
      .mockResolvedValue(expectationResult);

    expect(await agenciesController.findOne(mockIdConsultant)).toBe(
      expectationResult,
    );
  });

  it('should return a Promise of Agency entity creation', async () => {
    const newConsultant = new Agency();
    const expectationResult = Promise.resolve(new Agency());

    jest
      .spyOn(agenciesController, 'create')
      .mockImplementation(() => expectationResult);

    expect(agenciesController.create(newConsultant)).toEqual(expectationResult);
  });
});
