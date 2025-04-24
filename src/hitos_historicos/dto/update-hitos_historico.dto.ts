import { PartialType } from '@nestjs/mapped-types';
import { CreateHitosHistoricoDto } from './create-hitos_historico.dto';

export class UpdateHitosHistoricoDto extends PartialType(CreateHitosHistoricoDto) {}
