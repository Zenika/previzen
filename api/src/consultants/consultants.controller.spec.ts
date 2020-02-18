import { Test, TestingModule } from '@nestjs/testing';
import { ConsultantsController } from './consultants.controller';

describe('Consultants Controller', () => {
  let controller: ConsultantsController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [ConsultantsController],
    }).compile();

    controller = module.get<ConsultantsController>(ConsultantsController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
