import { Injectable } from '@nestjs/common';
import { CreateSeedDto } from './dto/create-seed.dto';
import { UpdateSeedDto } from './dto/update-seed.dto';
import { PuntosTuristicosService } from 'src/puntos_turisticos/puntos_turisticos.service';

@Injectable()
export class SeedService {
  constructor(
private readonly puntosTuristicosService: PuntosTuristicosService, // Inyectar el servicio de productos
  ) {}
  async runSeed() {
    await this.insertNewPuntosTuristicos();
    return 'SEED EXECUTED';
  }
  private async insertNewPuntosTuristicos() {
    // await this.puntosTuristicosService.deleteAllProducts();
    // const products = initialData.products;
    // const insertPromises : Promise<any>[] = []; //array de promesas para insertar los productos error arreglado
    // products.forEach((product) => {
    //   insertPromises.push(this.productService.create(product));
    // });
    // const result = await Promise.all(insertPromises);
    return true;
  }
  // create(createSeedDto: CreateSeedDto) {
  //   return 'This action adds a new seed';
  // }

  // findAll() {
  //   return `This action returns all seed`;
  // }

  // findOne(id: number) {
  //   return `This action returns a #${id} seed`;
  // }

  // update(id: number, updateSeedDto: UpdateSeedDto) {
  //   return `This action updates a #${id} seed`;
  // }

  // remove(id: number) {
  //   return `This action removes a #${id} seed`;
  // }
}
