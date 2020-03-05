import { Test, TestingModule } from '@nestjs/testing';
import { AgenciesService } from './agencies.service';
import { Repository } from 'typeorm';
import { getRepositoryToken } from '@nestjs/typeorm';
import { AgenciesController } from './agencies.controller';
import { Agency } from './agency.entity';

describe('Agencies Service', () => {
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
    const expectationResult = [new Agency()];

    jest.spyOn(agenciesService, 'findAll').mockResolvedValue(expectationResult);

    expect(await agenciesService.findAll()).toBe(expectationResult);
  });

  it('should return an array of Promise of Agency', async () => {
    const mockConsultant = [new Agency()];
    const expectationResult = Promise.resolve([new Agency()]);

    jest
      .spyOn(agenciesService, 'findAll')
      .mockImplementation(() => expectationResult);

    expect(await agenciesService.findAll()).toEqual(mockConsultant);
  });

  it('should return an entity of Agency', async () => {
    const expectationResult = new Agency();
    const mockIdConsultant = '1';

    jest.spyOn(agenciesService, 'findOne').mockResolvedValue(expectationResult);

    expect(await agenciesService.findOne(mockIdConsultant)).toBe(
      expectationResult,
    );
  });

  it('should return a Promise of Agency entity creation', async () => {
    const newConsultant = new Agency();
    const expectationResult = Promise.resolve(new Agency());

    jest
      .spyOn(agenciesService, 'create')
      .mockImplementation(() => expectationResult);

    expect(agenciesService.create(newConsultant)).toEqual(expectationResult);
  });
});
