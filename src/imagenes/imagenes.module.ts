import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ImagenesService } from './imagenes.service';
import { ImagenesController } from './imagenes.controller';
import { Imagene } from './entities/imagene.entity';
import { HistoriasModule } from '../historias/historias.module';
import { PuntosTuristicosModule } from '../puntos_turisticos/puntos_turisticos.module';
import { CloudinaryModule } from '../cloudinary/cloudinary.module';


@Module({
  imports: [
    TypeOrmModule.forFeature([Imagene]),
    HistoriasModule,
    PuntosTuristicosModule,
    CloudinaryModule
  ],
  controllers: [ImagenesController],
  providers: [ImagenesService],
})
export class ImagenesModule {}
