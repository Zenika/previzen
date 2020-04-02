import { Test, TestingModule } from '@nestjs/testing';
import { StaffingService } from './staffing.service';
import { StaffingController } from './staffing.controller';
import { Repository } from 'typeorm';
import { Staffing } from './staffing.entity';
import { getRepositoryToken } from '@nestjs/typeorm';

describe('Staffing Service', () => {
  let staffingController: StaffingController;
  let staffingService: StaffingService;
  let staffingRepository: Repository<Staffing>;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [
        StaffingService,
        {
          provide: getRepositoryToken(Staffing),
          useClass: Repository,
        },
      ],
      controllers: [StaffingController],
    }).compile();

    staffingController = module.get(StaffingController);
    staffingService = module.get<StaffingService>(StaffingService);
    staffingRepository = module.get<Repository<Staffing>>(
      getRepositoryToken(Staffing),
    );
  });

  afterEach(() => {
    jest.resetAllMocks();
  });

  it('should return an array of Staffing', async () => {
    const expectationResult = [new Staffing()];

    jest.spyOn(staffingService, 'findAll').mockResolvedValue(expectationResult);

    expect(await staffingService.findAll()).toBe(expectationResult);
  });

  it('should return an array of Promise of Staffing', async () => {
    const mockStaffing = [new Staffing()];
    const expectationResult = Promise.resolve([new Staffing()]);

    jest
      .spyOn(staffingService, 'findAll')
      .mockImplementation(() => expectationResult);

    expect(await staffingService.findAll()).toEqual(mockStaffing);
  });

  it('should return an entity of Staffing', async () => {
    const expectationResult = new Staffing();
    const mockIdStaffing = '1';

    jest.spyOn(staffingService, 'findOne').mockResolvedValue(expectationResult);

    expect(await staffingService.findOne(mockIdStaffing)).toBe(
      expectationResult,
    );
  });

  it('should return a Promise of Staffing entity creation', async () => {
    const newStaffing = new Staffing();
    const expectationResult = Promise.resolve(new Staffing());

    jest
      .spyOn(staffingService, 'create')
      .mockImplementation(() => expectationResult);

    expect(staffingService.create(newStaffing)).toEqual(expectationResult);
  });
});
