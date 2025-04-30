import { Entity, Column, PrimaryColumn,ManyToOne, JoinColumn } from 'typeorm';
import { v4 as uuidv4 } from 'uuid';
import { Historia } from 'src/historias/entities/historia.entity';
import { PuntosTuristico } from 'src/puntos_turisticos/entities/puntos_turistico.entity';
@Entity('Imagen')
export class Imagene {
    constructor() {
        if (!this.imagen_ID) {
            this.imagen_ID = uuidv4();
        }
    }
    @PrimaryColumn('uuid')
    imagen_ID: string;

    @ManyToOne(() => Historia, (historia) => historia.imagenes)
    @JoinColumn({ name: 'Historia_ID' }) // Nombre de la columna FK en la BD
    historia: Historia; // No es un array
    
    @ManyToOne(() => PuntosTuristico, (punto) => punto.imagenes)
    @JoinColumn({ name: 'PuntoHist_ID' }) // Nombre de la columna FK en la BD
    puntoTuristico: PuntosTuristico; // No es un array
    
    @Column('smallint')
    Estado: number;
   
    @Column('varchar')
    URL: string;
    
    @Column('date')
    Fecha_Subida: Date;

}
