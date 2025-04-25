import { Column, Entity, PrimaryGeneratedColumn } from 'typeorm';

@Entity({ name: 'historias' })
export class Historia {
  @PrimaryGeneratedColumn('uuid')
  id: string;
  @Column({ type: 'text' })
  titulo: string;
  @Column({ type: 'smallint', width: 1, default: 1 })
  estado: number;
}
