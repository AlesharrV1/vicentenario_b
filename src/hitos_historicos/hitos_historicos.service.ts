import { Injectable } from '@nestjs/common';
import { CreateHitosHistoricoDto } from './dto/create-hitos_historico.dto';
import { UpdateHitosHistoricoDto } from './dto/update-hitos_historico.dto';

@Injectable()
export class HitosHistoricosService {
  create(createHitosHistoricoDto: CreateHitosHistoricoDto) {
    return 'This action adds a new hitosHistorico';
  }

  findAll() {
    return `This action returns all hitosHistoricos`;
  }

  findOne(id: number) {
    return `This action returns a #${id} hitosHistorico`;
  }

  update(id: number, updateHitosHistoricoDto: UpdateHitosHistoricoDto) {
    return `This action updates a #${id} hitosHistorico`;
  }

  remove(id: number) {
    return `This action removes a #${id} hitosHistorico`;
  }
}
