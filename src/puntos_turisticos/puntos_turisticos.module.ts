import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { PuntosTuristicosService } from './puntos_turisticos.service';
import { PuntosTuristicosController } from './puntos_turisticos.controller';
import { PuntosTuristico } from './entities/puntos_turistico.entity';
import { AuthModule } from 'src/auth/auth.module';

@Module({
    imports: [TypeOrmModule.forFeature([PuntosTuristico]),AuthModule],
    controllers: [PuntosTuristicosController],
    providers: [PuntosTuristicosService],
    exports: [PuntosTuristicosService, TypeOrmModule],
})
export class PuntosTuristicosModule {}