import { Column, Entity, PrimaryGeneratedColumn } from 'typeorm';

@Entity({ name: 'historias' })
export class Historia {
  @PrimaryGeneratedColumn('uuid')
  id: string;
  @Column({ type: 'text' })
  titulo: string;
  
  @Column({ type: 'boolean', default: true })
  estado: boolean;
}
