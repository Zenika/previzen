import { Controller, Get } from '@nestjs/common';
import { AppService } from './app.service';

@Controller()
export class AppController {
  constructor(private readonly appService: AppService) {}

  /*
  Check function to verifying that the Nest.js API is running.
  @return message of the API.
   */
  @Get()
  getRunningCheckMessage(): string {
    return this.appService.getRunningCheckMessage();
  }
}
