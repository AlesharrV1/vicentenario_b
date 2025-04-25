import { Injectable } from '@nestjs/common';
import { CreateHistoriaDto } from './dto/create-historia.dto';
import { UpdateHistoriaDto } from './dto/update-historia.dto';
import { Repository } from 'typeorm';
import { Historia } from './entities/historia.entity';
import { InjectRepository } from '@nestjs/typeorm';

@Injectable()
export class HistoriasService {
  constructor(
    @InjectRepository(Historia)
    private historiasRepository:Repository<Historia>,
  ) {}
  async create(createHistoriaDto: CreateHistoriaDto) {
    const nuevaHistoria = this.historiasRepository.create(createHistoriaDto);
    return await this.historiasRepository.save(nuevaHistoria);
  }

  findAll() {
    return `This action returns all historias`;
  }

  findOne(id: number) {
    return `This action returns a #${id} historia`;
  }

  update(id: number, updateHistoriaDto: UpdateHistoriaDto) {
    return `This action updates a #${id} historia`;
  }

  remove(id: number) {
    return `This action removes a #${id} historia`;
  }
  
}
