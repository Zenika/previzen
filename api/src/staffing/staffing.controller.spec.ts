import { StaffingService } from './staffing.service';
import { Repository } from 'typeorm';
import { Staffing } from './staffing.entity';
import { Test, TestingModule } from '@nestjs/testing';
import { getRepositoryToken } from '@nestjs/typeorm';
import { StaffingController } from './staffing.controller';

describe('Staffing Controller', () => {
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
    const mockStaffing = [new Staffing()];

    jest.spyOn(staffingController, 'findAll').mockResolvedValue(mockStaffing);

    expect(await staffingController.findAll()).toBe(mockStaffing);
  });

  it('should return an array of Promise of Staffing', async () => {
    const mockStaffing = [new Staffing()];
    const expectationResult = Promise.resolve([new Staffing()]);

    jest
      .spyOn(staffingController, 'findAll')
      .mockImplementation(() => expectationResult);

    expect(await staffingController.findAll()).toEqual(mockStaffing);
  });

  it('should return an entity of Staffing', async () => {
    const expectationResult = new Staffing();
    const mockIdStaffing = '1';

    jest
      .spyOn(staffingController, 'findOne')
      .mockResolvedValue(expectationResult);

    expect(await staffingController.findOne(mockIdStaffing)).toBe(
      expectationResult,
    );
  });

  it('should return a Promise of Staffing entity creation', async () => {
    const newStaffing = new Staffing();
    const expectationResult = Promise.resolve(new Staffing());

    jest
      .spyOn(staffingController, 'create')
      .mockImplementation(() => expectationResult);

    expect(staffingController.create(newStaffing)).toEqual(expectationResult);
  });
});
