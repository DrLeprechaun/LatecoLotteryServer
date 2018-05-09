import { Injectable } from '@angular/core';

export const LOTTERY_TYPE: string = "WANNA_BUY";

@Injectable()
export class TicketsPurchaseService {

  constructor() { }

  private lottery_type: string;

  setLotteryType(type: string): void {
    localStorage.setItem(LOTTERY_TYPE, type);
    //this.lottery_type = type;
  }

  getLotteryType(): string {
    //return this.lottery_type;
    return localStorage.getItem(LOTTERY_TYPE);
  }

  /*setWannaBuy(wb: string): void {
    localStorage.setItem(WANNA_BUY, wb);
  }

  getWannaBuy(): string {
    return localStorage.getItem(WANNA_BUY);
  }*/

}
