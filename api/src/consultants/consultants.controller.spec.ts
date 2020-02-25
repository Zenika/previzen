import { Test, TestingModule } from '@nestjs/testing';
import { ConsultantsController } from './consultants.controller';
import { ConsultantsService } from './consultants.service';

describe('ConsultantsController', () => {
  let controller: ConsultantsController;
  let service: ConsultantsService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [ConsultantsController],
      providers: [ConsultantsService]
    }).compile();

    controller = module.get<ConsultantsController>(ConsultantsController);
    service = module.get<ConsultantsService>(ConsultantsService);
  });

  describe('get consultants', () => {
    it('getAllConsultants', async () => {
      expect(await controller.getAllConsultants());
    });
  });
});
