import { Entity, PrimaryGeneratedColumn, Column, OneToMany } from 'typeorm';
import { HitosHistorico } from 'src/hitos_historicos/entities/hitos_historico.entity';

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
}
