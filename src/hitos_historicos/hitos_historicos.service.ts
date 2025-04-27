import { Injectable, NotFoundException } from '@nestjs/common';
import { CreateHitosHistoricoDto } from './dto/create-hitos_historico.dto';
import { UpdateHitosHistoricoDto } from './dto/update-hitos_historico.dto';
import { InjectRepository } from '@nestjs/typeorm';
import { HitosHistorico } from './entities/hitos_historico.entity';
import { Repository } from 'typeorm';
import { HistoriasService } from 'src/historias/historias.service';

@Injectable()
export class HitosHistoricosService {
  constructor(
    @InjectRepository(HitosHistorico)
    private hitosHistoricosRepository: Repository<HitosHistorico>,
    private historiasService: HistoriasService,
  ) {}

  async create(createHitosHistoricoDto: CreateHitosHistoricoDto) {
    const historia = await this.historiasService.findOneById(
      createHitosHistoricoDto.historiaid,
    );

    if (!historia) {
      throw new NotFoundException(
        `Historia with id: ${createHitosHistoricoDto.historiaid} not found`,
      );
    }
    const nuevoHito = this.hitosHistoricosRepository.create({
      titulo: createHitosHistoricoDto.titulo,
      descripcion: createHitosHistoricoDto.descripcion,
      fecha: createHitosHistoricoDto.fecha,
      historia: historia,
    });

    return await this.hitosHistoricosRepository.save(nuevoHito);
  }

  async findAll(): Promise<HitosHistorico[]> {
    try {
      return await this.hitosHistoricosRepository.find({
        relations: ['historia'], // Incluye relaciones si es necesario
      });
    } catch (error) {
      throw new NotFoundException(
        `Error al obtener los hitos históricos: ${error.message}`,
      );
    }
  }
  async findOne(id: string) {
    const hito = await this.hitosHistoricosRepository.findOne({
      where: { id_hito_historico: id },
      relations: ['historia'], // Incluye relaciones si es necesario
    });

    if (!hito) {
      throw new NotFoundException(`Hito with id: ${id} not found`);
    }

    return hito;

  }

  update(id: number, updateHitosHistoricoDto: UpdateHitosHistoricoDto) {
    return `This action updates a #${id} hitosHistorico`;
  }

  async remove(id: string) {
    const hito = await this.findOne(id);
    if (!hito) {
      throw new NotFoundException(`Hito with id: ${id} not found`);
    }
    await this.hitosHistoricosRepository.remove(hito);
    return `hito removed`;
  }
}
