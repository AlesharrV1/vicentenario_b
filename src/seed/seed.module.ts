import { Module } from '@nestjs/common';
import { SeedService } from './seed.service';
import { SeedController } from './seed.controller';

import { PuntosTuristicosModule } from 'src/puntos_turisticos/puntos_turisticos.module';

@Module({
  controllers: [SeedController],
  providers: [SeedService],
  imports: [PuntosTuristicosModule],
})
export class SeedModule {}
