import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getCheckHealthMessage(): string {
    return 'PreviZen Nest.js API is running';
  }
}
