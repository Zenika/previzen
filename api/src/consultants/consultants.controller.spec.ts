import { ConsultantsService } from './consultants.service';
import { Repository } from 'typeorm';
import { Consultant } from './consultant.entity';
import { Test, TestingModule } from '@nestjs/testing';
import { getRepositoryToken } from '@nestjs/typeorm';

describe('Consultants Controller', () => {
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
    }).compile();

    consultantsService = module.get<ConsultantsService>(ConsultantsService);
    consultantRepository = module.get<Repository<Consultant>>(
      getRepositoryToken(Consultant),
    );
  });

  it('should return an array of Consultant', async () => {
    const consultantTest = new Consultant();
    const result = Promise.resolve([consultantTest]);
    jest.spyOn(consultantsService, 'findAll').mockImplementation(() => result);
  });

  it('should return a Consultant', async () => {
    const consultantTest = new Consultant();
    const result = Promise.resolve(consultantTest);
    jest.spyOn(consultantsService, 'findOne').mockImplementation(() => result);
  });
});
