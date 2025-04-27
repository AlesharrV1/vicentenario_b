import { Module } from '@nestjs/common';
import { HitosHistoricosService } from './hitos_historicos.service';
import { HitosHistoricosController } from './hitos_historicos.controller';
import { Type } from 'class-transformer';
import { HitosHistorico } from './entities/hitos_historico.entity';
import { TypeOrmModule } from '@nestjs/typeorm';
import { HistoriasModule } from 'src/historias/historias.module';

@Module({
  imports: [TypeOrmModule.forFeature([HitosHistorico]), HistoriasModule],
  controllers: [HitosHistoricosController],
  providers: [HitosHistoricosService],
})
export class HitosHistoricosModule {}
