import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getRunningCheckMessage(): string {
    return 'PreviZen Nest.js API is running';
  }
}
