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

  async findAll() {
    try {
      return await this.historiasRepository.find({
        where: { estado: true },
      });
    } catch (error) {
      throw new Error(error);
    }
  }

  async findOne(id: string): Promise<Historia> {
    if (!isUUID(id)) {
      throw new NotFoundException(`Historia with id: ${id} not found`);
    }
    const historia = await this.historiasRepository.findOneBy({ id });
    if (!historia) {
      throw new NotFoundException(`Historia with id: ${id} not found`);
    }
    return historia;
  }
  update(id: number, updateHistoriaDto: UpdateHistoriaDto) {
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
}
