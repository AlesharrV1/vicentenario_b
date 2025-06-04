import { Module } from '@nestjs/common';
import { HistoriasService } from './historias.service';
import { HistoriasController } from './historias.controller';
import { Type } from 'class-transformer';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Historia } from './entities/historia.entity';
import { AuthModule } from 'src/auth/auth.module';

@Module({
  imports: [TypeOrmModule.forFeature([Historia]), AuthModule],
  controllers: [HistoriasController],
  providers: [HistoriasService],
  exports: [HistoriasService],
})
export class HistoriasModule {}
