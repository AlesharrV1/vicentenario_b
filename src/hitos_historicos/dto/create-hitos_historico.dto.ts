import { IsNotEmpty, IsString, IsUUID } from "class-validator";

export class CreateHitosHistoricoDto {
    @IsString()
  @IsNotEmpty()
  titulo: string;

  @IsString()
  @IsNotEmpty()
  descripcion: string;

  @IsString()
  @IsNotEmpty()
  // @IsDateString() solo esta para validar fechas, no es necesario en este caso
  fecha: string;
  @IsUUID()
  @IsNotEmpty()
  historiaid: string;

}
