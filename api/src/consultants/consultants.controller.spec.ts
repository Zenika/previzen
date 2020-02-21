import { Test, TestingModule } from '@nestjs/testing';
import { ConsultantsController } from './consultants.controller';
import { ConsultantsService } from './consultants.service';

describe('ConsultantsController', () => {
  let consultantsController: ConsultantsController;
  let consultantsService: ConsultantsService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [ConsultantsController],
      providers: [ConsultantsService]
    }).compile();

    consultantsController = module.get<ConsultantsController>(ConsultantsController);
    consultantsService = module.get<ConsultantsService>(ConsultantsService);
  });

  describe('getConsultants', () => {
    it('(GET) should get consultants', async () => {
      const result = [];
      jest.spyOn(consultantsService, 'getConsultants').mockImplementation(() => result);
    expect(consultantsController.getAllConsultants()).toBe(result);
    });
  });
});
