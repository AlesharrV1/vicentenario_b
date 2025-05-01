import { ImagenesService } from './imagenes.service';
import { CreateImageneDto } from './dto/create-imagene.dto';
import {
  Controller,
  Post,
  Get,
  Param,
  Body,
  Patch,
  Delete,
  ParseUUIDPipe,
  UploadedFile,
  UseInterceptors
} from '@nestjs/common';
import { FileInterceptor } from '@nestjs/platform-express';


@Controller('imagenes')

export class ImagenesController {
  constructor(
    private readonly imagenesService: ImagenesService,
  ) {}

  @Post()
  @UseInterceptors(FileInterceptor('file'))
  uploadImage(
    @UploadedFile() file: Express.Multer.File,
    @Body() dto: CreateImageneDto,
  ) {
    return this.imagenesService.create(dto, file);
  }

  @Get()
  findAll() {
    return this.imagenesService.findAll();
  }

  @Get(':id')
  findOne(@Param('id', new ParseUUIDPipe()) id: string) {
    return this.imagenesService.findOne(id);
  }

  @Patch(':id')
  update(
    @Param('id', new ParseUUIDPipe()) id: string,
    @Body() dto: Partial<CreateImageneDto>
  ) {
    return this.imagenesService.update(id, dto);
  }

  @Delete(':id')
  remove(@Param('id', new ParseUUIDPipe()) id: string) {
    return this.imagenesService.remove(id);
  }

  @Patch('ocultar/:id')
  removeByOculto(@Param('id', new ParseUUIDPipe()) id: string) {
    return this.imagenesService.removeByOculto(id);
  }

  @Get('por-historia/:historiaID')
  findByHistoria(@Param('historiaID', new ParseUUIDPipe()) historiaID: string) {
    return this.imagenesService.findByHistoria(historiaID);
  }

  @Get('por-punto-turistico/:puntoID')
  findByPuntoTuristico(@Param('puntoID', new ParseUUIDPipe()) puntoID: string) {
    return this.imagenesService.findByPuntoTuristico(puntoID);
  }
}
