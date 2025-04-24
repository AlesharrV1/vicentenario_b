import { Module } from '@nestjs/common';
import { HitosHistoricosService } from './hitos_historicos.service';
import { HitosHistoricosController } from './hitos_historicos.controller';

@Module({
  controllers: [HitosHistoricosController],
  providers: [HitosHistoricosService],
})
export class HitosHistoricosModule {}
