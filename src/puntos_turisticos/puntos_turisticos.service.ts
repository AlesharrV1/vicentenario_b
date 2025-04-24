import { Injectable } from '@nestjs/common';
import { CreatePuntosTuristicoDto } from './dto/create-puntos_turistico.dto';
import { UpdatePuntosTuristicoDto } from './dto/update-puntos_turistico.dto';

@Injectable()
export class PuntosTuristicosService {
  create(createPuntosTuristicoDto: CreatePuntosTuristicoDto) {
    return 'This action adds a new puntosTuristico';
  }

  findAll() {
    return `This action returns all puntosTuristicos`;
  }

  findOne(id: number) {
    return `This action returns a #${id} puntosTuristico`;
  }

  update(id: number, updatePuntosTuristicoDto: UpdatePuntosTuristicoDto) {
    return `This action updates a #${id} puntosTuristico`;
  }

  remove(id: number) {
    return `This action removes a #${id} puntosTuristico`;
  }
}
