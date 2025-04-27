import { Type } from 'class-transformer';
import { IsBoolean, IsNotEmpty, IsOptional, IsString, ValidateNested } from 'class-validator';
import { CreateHitosHistoricoDto } from 'src/hitos_historicos/dto/create-hitos_historico.dto';

export class CreateHistoriaDto {
  @IsString()
  @IsNotEmpty()
  titulo: string;

  @IsString()
  @IsNotEmpty()
  descripcion: string;
  @IsOptional()
  @IsBoolean()
  estado: boolean;

  @ValidateNested({ each: true })
  @Type(() => CreateHitosHistoricoDto)
  hitos_historicos: CreateHitosHistoricoDto[];
}
