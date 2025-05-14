import { Injectable, NotFoundException } from '@nestjs/common';
import { CreateHistoriaDto } from './dto/create-historia.dto';
import { UpdateHistoriaDto } from './dto/update-historia.dto';
import { Repository } from 'typeorm';
import { Historia } from './entities/historia.entity';
import { InjectRepository } from '@nestjs/typeorm';
import { validate as isUUID } from 'uuid';
@Injectable()
export class HistoriasService {
  constructor(
    @InjectRepository(Historia)
    private historiasRepository: Repository<Historia>,
  ) {}
  async create(createHistoriaDto: CreateHistoriaDto) {
    const nuevaHistoria = this.historiasRepository.create(createHistoriaDto);
    return await this.historiasRepository.save(nuevaHistoria);
  }

  async findAll(): Promise<Historia[]> {
    return this.historiasRepository.find({
      relations: ['hitos_historicos', 'imagenes'],
    });
  }
//no se esta utilizando el findOne 
  async findOne(id: string): Promise<Historia> {
    if (!isUUID(id)) {
      throw new NotFoundException(`Historia with id: ${id} not found`);
    }
    const historia = await this.historiasRepository.findOneBy({
      id_historia: id,
    });
    if (!historia) {
      throw new NotFoundException(`Historia with id: ${id} not found`);
    }
    return historia;
  }
  update(id: string, updateHistoriaDto: UpdateHistoriaDto) {
    const historia = this.findOne(id);
    if (!historia) {
      throw new NotFoundException(`Historia with id: ${id} not found`);
    }
    this.historiasRepository.update(id, updateHistoriaDto);
    return `This action updates a #${id} historia`;
  }

  async remove(id: string) {
    const historia = await this.findOne(id);
    if (!historia) {
      throw new NotFoundException(`Historia with id: ${id} not found`);
    }
    await this.historiasRepository.remove(historia);
    return `historia removed`;
  }
  // historias.service.ts
  async findOneById(id: string): Promise<Historia> {
    const historia = await this.historiasRepository.findOne({
      where: { id_historia: id },
      relations: ['hitos_historicos'], // Incluye los hitos históricos relacionados
    });

    if (!historia) {
      throw new NotFoundException(`Historia with id: ${id} not found`);
    }

    return historia;
  }
}
