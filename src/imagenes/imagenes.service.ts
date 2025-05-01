import { Injectable, NotFoundException, Inject, BadRequestException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Imagene } from './entities/imagene.entity';
import { CreateImageneDto } from './dto/create-imagene.dto';
import { HistoriasService } from '../historias/historias.service';
import { PuntosTuristicosService } from '../puntos_turisticos/puntos_turisticos.service';
import { CloudinaryService } from '../cloudinary/cloudinary.service';


@Injectable()
export class ImagenesService {
  constructor(
    @InjectRepository(Imagene)
    private readonly imagenRepo: Repository<Imagene>,
    private readonly cloudinaryService: CloudinaryService,
    private readonly historiaService: HistoriasService,
    private readonly puntoService: PuntosTuristicosService,
  ) {}

  async create(
    dto: CreateImageneDto,
    file: Express.Multer.File,
  ): Promise<Imagene> {
    // Validar que al menos una relación esté presente
    if (!dto.Historia_ID && !dto.PuntosTuristico_ID) {
      throw new BadRequestException(
        'Debe proporcionar al menos un ID de Historia o Punto Turístico',
      );
    }

    // Validar que el archivo exista
    if (!file) {
      throw new BadRequestException('No se proporcionó ningún archivo de imagen');
    }

    try {
      // Subir imagen a Cloudinary
      const cloudinaryResponse = await this.cloudinaryService.uploadFile(file);

      // Crear nueva entidad de imagen
      const nuevaImagen = this.imagenRepo.create({
        URL: cloudinaryResponse.secure_url,
        Estado: dto.Estado || 1,
        Fecha_Subida: new Date(),
      });

      // Establecer relaciones si existen
      if (dto.Historia_ID) {
        const historia = await this.historiaService.findOne(dto.Historia_ID);
        nuevaImagen.historia = historia;
      }

      if (dto.PuntosTuristico_ID) {
        const punto = await this.puntoService.findOne(dto.PuntosTuristico_ID);
        nuevaImagen.punto_turistico = punto;
      }

      // Guardar en base de datos
      return await this.imagenRepo.save(nuevaImagen);
    } catch (error) {
      throw new BadRequestException(
        `Error al subir la imagen: ${error.message}`,
      );
    }
  }

  async findAll() {
    return this.imagenRepo.find({
      relations: ['historia', 'punto_turistico'],
    });
  }

  async findOne(id: string) {
    const imagen = await this.imagenRepo.findOne({
      where: { imagen_ID: id },
      relations: ['historia', 'punto_turistico'],
    });
    if (!imagen) throw new NotFoundException('Imagen no encontrada');
    return imagen;
  }

  async update(id: string, dto: Partial<CreateImageneDto>) {
    const imagen = await this.findOne(id);

    if (dto.Historia_ID) {
      const historia = await this.historiaService.findOne(dto.Historia_ID);
      if (!historia) throw new NotFoundException('Historia no encontrada');
      imagen.historia = historia;
    }

    if (dto.PuntosTuristico_ID) {
      const punto = await this.puntoService.findOne(dto.PuntosTuristico_ID);
      if (!punto) throw new NotFoundException('Punto turístico no encontrado');
      imagen.punto_turistico = punto;
    }

    Object.assign(imagen, dto);
    return this.imagenRepo.save(imagen);
  }

  async remove(id: string) {
    const imagen = await this.findOne(id);
    return this.imagenRepo.remove(imagen);
  }

  async removeByOculto(id: string) {
    const imagen = await this.findOne(id);
    imagen.Estado = 0;
    return this.imagenRepo.save(imagen);
  }

  async findByPuntoTuristico(puntoID: string) {
    return this.imagenRepo.find({
      where: {
        punto_turistico: { PuntoTurisco_ID: puntoID },
        Estado: 1,
      },
      relations: ['punto_turistico'],
    });
  }

  async findByHistoria(historiaID: string) {
    return this.imagenRepo.find({
      where: {
        historia: { id_historia: historiaID },
        Estado: 1,
      },
      relations: ['historia'],
    });
  }
}
