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
import { PuntosTuristicosService } from './puntos_turisticos.service';
import { CreatePuntosTuristicoDto } from './dto/create-puntos_turistico.dto';
import { UpdatePuntosTuristicoDto } from './dto/update-puntos_turistico.dto';

@Controller('puntos-turisticos')
export class PuntosTuristicosController {
  constructor(private readonly puntosTuristicosService: PuntosTuristicosService) {}

  @Post()
  create(@Body() createPuntosTuristicoDto: CreatePuntosTuristicoDto) {
      return this.puntosTuristicosService.create(createPuntosTuristicoDto);
  }

  @Get()
  findAll() {
      return this.puntosTuristicosService.findAll();
  }

  @Get(':id')
  findOne(@Param('id', ParseUUIDPipe) id: string) {
      return this.puntosTuristicosService.findOne(id);
  }

  @Patch(':id')
  update(
      @Param('id', ParseUUIDPipe) id: string,
      @Body() updatePuntosTuristicoDto: UpdatePuntosTuristicoDto,
  ) {
      return this.puntosTuristicosService.update(id, updatePuntosTuristicoDto);
  }

  @Delete(':id')
  remove(@Param('id', ParseUUIDPipe) id: string) {
      return this.puntosTuristicosService.remove(id);
  }
}