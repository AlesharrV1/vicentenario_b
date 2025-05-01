import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { PuntosTuristico } from './entities/puntos_turistico.entity';
import { CreatePuntosTuristicoDto } from './dto/create-puntos_turistico.dto';
import { UpdatePuntosTuristicoDto } from './dto/update-puntos_turistico.dto';

@Injectable()
export class PuntosTuristicosService {
    constructor(
        @InjectRepository(PuntosTuristico)
        private puntosTuristicosRepository: Repository<PuntosTuristico>,
    ) {}

    async create(createPuntosTuristicoDto: CreatePuntosTuristicoDto): Promise<PuntosTuristico> {
        const puntoTuristico = this.puntosTuristicosRepository.create(createPuntosTuristicoDto);
        return await this.puntosTuristicosRepository.save(puntoTuristico);
    }

    async findAll(): Promise<PuntosTuristico[]> {
        return await this.puntosTuristicosRepository.find();
    }

    async findOne(id: string): Promise<PuntosTuristico | null> {
      return await this.puntosTuristicosRepository.findOneBy({ PuntoTurisco_ID: id });
  }

    async update(
        id: string,
        updatePuntosTuristicoDto: UpdatePuntosTuristicoDto,
    ): Promise<PuntosTuristico | null>{
        await this.puntosTuristicosRepository.update(id, updatePuntosTuristicoDto);
        return this.findOne(id);
    }

    async remove(id: string): Promise<void> {
        await this.puntosTuristicosRepository.delete(id);
    }
}