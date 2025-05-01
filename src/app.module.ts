import { Module } from '@nestjs/common';
import { PuntosTuristicosModule } from './puntos_turisticos/puntos_turisticos.module';
import { HistoriasModule } from './historias/historias.module';
import { HitosHistoricosModule } from './hitos_historicos/hitos_historicos.module';
import { SeedModule } from './seed/seed.module';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ConfigModule } from '@nestjs/config';
import { ImagenesModule } from './imagenes/imagenes.module';
import { CloudinaryModule } from './cloudinary/cloudinary.module';

@Module({
  imports: [
    ConfigModule.forRoot({isGlobal: true}),
    TypeOrmModule.forRoot({
      type: 'postgres',
      host: 'localhost',
      port: 5432,
      username: 'udinova',
      password: 'udinova',
      database: 'vicentenario_db',
      synchronize: true,
      autoLoadEntities: true,
    }),
    PuntosTuristicosModule,
    HistoriasModule,
    HitosHistoricosModule,
    SeedModule,
    ImagenesModule,
    CloudinaryModule
  ],
  controllers: [],
  providers: [],
})
export class AppModule {}
