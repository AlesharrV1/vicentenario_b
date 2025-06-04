import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
  ParseUUIDPipe,
} from '@nestjs/common';
import { HistoriasService } from './historias.service';
import { CreateHistoriaDto } from './dto/create-historia.dto';
import { UpdateHistoriaDto } from './dto/update-historia.dto';
import { Auth } from 'src/auth/decorators';
import { ValidRoles } from 'src/auth/interfaces';

@Controller('historias')
export class HistoriasController {
  constructor(private readonly historiasService: HistoriasService) {}
  @Auth(ValidRoles.admin)
  @Post()
  create(@Body() createHistoriaDto: CreateHistoriaDto) {
    return this.historiasService.create(createHistoriaDto);
  }

  @Get()
  findAll() {
    return this.historiasService.findAll();
  }

  @Get(':id')
  findOne(@Param('id', new ParseUUIDPipe()) id: string) {
    return this.historiasService.findOneById(id);
  }
  @Auth(ValidRoles.admin)
  @Patch(':id')
  update(
    @Param('id', new ParseUUIDPipe()) id: string,
    @Body() updateHistoriaDto: UpdateHistoriaDto,
  ) {
    return this.historiasService.update(id, updateHistoriaDto);
  }
  @Auth(ValidRoles.admin)
  @Delete(':id')
  remove(@Param('id', new ParseUUIDPipe()) id: string) {
    return this.historiasService.remove(id);
  }
}
