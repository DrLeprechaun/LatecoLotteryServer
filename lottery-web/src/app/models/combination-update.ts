export class CombinationUpdate {
  id: number;
  type: string;
  combination: number[];

  constructor(id: number, type: string, combination: number[]) {
    this.id = id;
    this.type = type;
    this.combination = combination;
  }
}
