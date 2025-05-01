import { Historia } from 'src/historias/entities/historia.entity';
import { PuntosTuristico } from 'src/puntos_turisticos/entities/puntos_turistico.entity';
import { Entity, Column, PrimaryColumn, ManyToOne, JoinColumn } from 'typeorm';
import { v4 as uuidv4 } from 'uuid';


@Entity('Imagen')
export class Imagene {
    constructor() {
        if (!this.imagen_ID) {
            this.imagen_ID = uuidv4();
        }
    }

    @PrimaryColumn('uuid')
    imagen_ID: string;

    @Column('smallint')
    Estado: number;

    @Column('varchar')
    URL: string;

    @Column('date')
    Fecha_Subida: Date;

    // RELACIÓN CON HISTORIA
    @ManyToOne(() => Historia, historia => historia.imagenes)
    @JoinColumn({ name: 'Historia_ID' }) // Este será el nombre de la columna FK
    historia: Historia | null ;

    // RELACIÓN CON PUNTO TURÍSTICO
    @ManyToOne(() => PuntosTuristico, punto => punto.imagenes)
    @JoinColumn({ name: 'PuntoHist_ID' }) // Este será el nombre de la columna FK
    punto_turistico: PuntosTuristico | null;
}
