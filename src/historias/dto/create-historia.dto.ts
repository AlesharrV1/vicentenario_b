import { IsBoolean, IsOptional, IsString } from 'class-validator';

export class CreateHistoriaDto {
  @IsString()
  titulo: string;
  @IsOptional()
  @IsBoolean()
  estado: boolean;
}
