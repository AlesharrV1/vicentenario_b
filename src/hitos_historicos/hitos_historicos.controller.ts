import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { HitosHistoricosService } from './hitos_historicos.service';
import { CreateHitosHistoricoDto } from './dto/create-hitos_historico.dto';
import { UpdateHitosHistoricoDto } from './dto/update-hitos_historico.dto';

@Controller('hitos-historicos')
export class HitosHistoricosController {
  constructor(private readonly hitosHistoricosService: HitosHistoricosService) {}

  @Post()
  create(@Body() createHitosHistoricoDto: CreateHitosHistoricoDto) {
    return this.hitosHistoricosService.create(createHitosHistoricoDto);
  }

  @Get()
  findAll() {
    return this.hitosHistoricosService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.hitosHistoricosService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateHitosHistoricoDto: UpdateHitosHistoricoDto) {
    return this.hitosHistoricosService.update(+id, updateHitosHistoricoDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.hitosHistoricosService.remove(+id);
  }
}
