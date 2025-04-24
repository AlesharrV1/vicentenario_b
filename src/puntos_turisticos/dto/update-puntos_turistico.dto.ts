import { PartialType } from '@nestjs/mapped-types';
import { CreatePuntosTuristicoDto } from './create-puntos_turistico.dto';

export class UpdatePuntosTuristicoDto extends PartialType(CreatePuntosTuristicoDto) {}
