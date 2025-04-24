import { Module } from '@nestjs/common';
import { PuntosTuristicosService } from './puntos_turisticos.service';
import { PuntosTuristicosController } from './puntos_turisticos.controller';

@Module({
  controllers: [PuntosTuristicosController],
  providers: [PuntosTuristicosService],
})
export class PuntosTuristicosModule {}
