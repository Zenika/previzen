import { Test, TestingModule } from '@nestjs/testing';
import { ConsultantsService } from './consultants.service';
import { ConsultantsController } from './consultants.controller';
import { Consultant } from './consultants.model';

describe('ConsultantsService', () => {
  let service: ConsultantsService;
  let controller: ConsultantsController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [ConsultantsController],
      providers: [ConsultantsService]
    }).compile();

    service = module.get<ConsultantsService>(ConsultantsService);
    controller = module.get<ConsultantsController>(ConsultantsController);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });

  describe('get consultants', () => {
    it('getConsultants', async () => {
      expect(await service.getConsultants()).toEqual(controller.getAllConsultants());
    });
  });
});
