import { IsString, IsISO8601, IsOptional } from 'class-validator';
export class CreateImageneDto {
    
    @IsString()
    @IsOptional()
    Historia_ID: string;

    @IsString()
    @IsOptional()
    PuntosTuristico_ID: string;

    @IsString()
    Estado: number;

    @IsString()
    URL: string;

    @IsISO8601()
    Fecha_Subida: Date;
}
