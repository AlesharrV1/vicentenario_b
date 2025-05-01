import { IsString, IsNumber, IsOptional } from 'class-validator';
import { ApiProperty } from '@nestjs/swagger'
export class CreateImageneDto {
    

    @IsString()
    @IsOptional()
    Historia_ID?: string;

    @IsString()
    @IsOptional()
    PuntosTuristico_ID?: string;

    @ApiProperty({ default: 1 })
    @IsNumber()
    @IsOptional()
    Estado: number;
}
