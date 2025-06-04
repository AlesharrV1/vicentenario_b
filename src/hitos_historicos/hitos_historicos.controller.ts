import { Controller, Get, Post, Body, Patch, Param, Delete, ParseUUIDPipe } from '@nestjs/common';
import { HitosHistoricosService } from './hitos_historicos.service';
import { CreateHitosHistoricoDto } from './dto/create-hitos_historico.dto';
import { UpdateHitosHistoricoDto } from './dto/update-hitos_historico.dto';
import { Auth } from 'src/auth/decorators';
import { ValidRoles } from 'src/auth/interfaces';

@Controller('hitos-historicos')
export class HitosHistoricosController {
  constructor(private readonly hitosHistoricosService: HitosHistoricosService) {}
  @Auth(ValidRoles.admin)
  @Post()
  create(@Body() createHitosHistoricoDto: CreateHitosHistoricoDto) {
    return this.hitosHistoricosService.create(createHitosHistoricoDto);
  }

  @Get()
  findAll() {
    return this.hitosHistoricosService.findAll();
  }

  @Get(':id')
  findOne(@Param('id',new ParseUUIDPipe()) id: string) {
    return this.hitosHistoricosService.findOne(id);
  }
  @Auth(ValidRoles.admin)
  @Patch(':id')
  update(@Param('id') id: string, @Body() updateHitosHistoricoDto: UpdateHitosHistoricoDto) {
    return this.hitosHistoricosService.update(+id, updateHitosHistoricoDto);
  }
  @Auth(ValidRoles.admin)
  @Delete(':id')
  remove(@Param('id',new ParseUUIDPipe()) id: string) {
    return this.hitosHistoricosService.remove(id);
  }
}
