import { IsString, IsISO8601, IsNumber, IsOptional } from 'class-validator';

export class CreatePuntosTuristicoDto {
    @IsString()
    Nombre: string;

    @IsString()
    @IsOptional()
    Descripcion?: string;

    @IsISO8601()
    FechaCreacion: Date;

    @IsString()
    Longitud: string;

    @IsString()
    Latitud: string;

    @IsNumber()
    Estado: number;

    @IsString()
    HorarioServicio: string;

    @IsString()
    CostoEntrada: string;

    @IsString()
    Ciudad: string;
    
    @IsString()
    Pais: string;

    @IsString()
    Localidad: string;

    @IsNumber()
    Visibilidad: number;

    @IsString()
    Tipo: string;   
}
