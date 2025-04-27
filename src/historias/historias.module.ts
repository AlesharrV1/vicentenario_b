import { Module } from '@nestjs/common';
import { HistoriasService } from './historias.service';
import { HistoriasController } from './historias.controller';
import { Type } from 'class-transformer';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Historia } from './entities/historia.entity';

@Module({
  imports: [TypeOrmModule.forFeature([Historia])],
  controllers: [HistoriasController],
  providers: [HistoriasService],
  exports: [HistoriasService],
})
export class HistoriasModule {}
