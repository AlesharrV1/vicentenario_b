import { Entity, PrimaryGeneratedColumn, Column, OneToMany } from 'typeorm';
import { HitosHistorico } from 'src/hitos_historicos/entities/hitos_historico.entity';
import { Imagene } from 'src/imagenes/entities/imagene.entity';

@Entity({ name: 'historias' })
export class Historia {
  @PrimaryGeneratedColumn('uuid')
  id_historia: string;

  @Column()
  titulo: string;

  @Column()
  descripcion: string;

  @Column({ type: 'boolean' ,default: true})
  estado: boolean;

  @OneToMany(() => HitosHistorico, (hitoHistorico) => hitoHistorico.historia)
  hitos_historicos: HitosHistorico[];

  //Se esta importando el entity de imagenes para poder hacer la relacion uno a muchos
  @OneToMany(() => Imagene, (imagen) => imagen.historia)
  imagenes: Imagene[];
  @OneToMany(() => Imagene, (imagen) => imagen.punto_turistico)
  imagenes_punto_turistico: Imagene[];
}
