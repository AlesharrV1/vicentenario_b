import { Imagene } from 'src/imagenes/entities/imagene.entity';
import { Entity, Column, PrimaryColumn, OneToMany } from 'typeorm';
import { v4 as uuidv4 } from 'uuid';
@Entity('Punto_Historico')
export class PuntosTuristico {

    constructor() {
        if (!this.PuntoHist_ID) {
            this.PuntoHist_ID = uuidv4();
        }
    }

    @PrimaryColumn('uuid')
    PuntoHist_ID: string;

    @Column('varchar')
    Nombre: string;

    @Column('varchar', { nullable: true })
    Descripcion: string;

    @Column('date')
    FechaCreacion: Date;

    @Column('varchar')
    Longitud: string;

    @Column('varchar')
    Latitud: string;

    @Column('smallint')
    Estado: number;

    @Column('varchar')
    HorarioServicio: string;

    @Column('varchar')
    CostoEntrada: string;

    @Column('varchar')
    Ciudad: string;
    
    @Column('varchar')
    Pais: string;

    @Column('varchar')
    Localidad: string;

    @Column('smallint')
    Visibilidad: number;

    @Column('varchar', { nullable: true })
    Tipo: string;

    @OneToMany(() => Imagene, (imagen) => imagen.punto_turistico)
    imagenes: Imagene[];
}
