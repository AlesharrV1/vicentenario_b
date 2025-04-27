import { Entity, PrimaryGeneratedColumn, Column, ManyToOne } from 'typeorm';
import { Historia } from 'src/historias/entities/historia.entity';

@Entity({ name: 'hitos_historicos' })
export class HitosHistorico {
  @PrimaryGeneratedColumn('uuid')
  id_hito_historico: string;

  @Column()
  titulo: string;

  @Column()
  descripcion: string;

  @Column()
  fecha: string;

  @ManyToOne(() => Historia, (historia) => historia.hitos_historicos, { onDelete: 'CASCADE' })
  historia: Historia;
}
