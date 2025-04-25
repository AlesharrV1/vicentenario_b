import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { PuntosTuristicosService } from './puntos_turisticos.service';
import { PuntosTuristicosController } from './puntos_turisticos.controller';
import { PuntosTuristico } from './entities/puntos_turistico.entity';

@Module({
    imports: [TypeOrmModule.forFeature([PuntosTuristico])],
    controllers: [PuntosTuristicosController],
    providers: [PuntosTuristicosService],
    exports: [PuntosTuristicosService],
})
export class PuntosTuristicosModule {}