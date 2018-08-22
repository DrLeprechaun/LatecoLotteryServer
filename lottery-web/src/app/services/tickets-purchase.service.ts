import { Injectable } from '@angular/core';

export const LOTTERY_TYPE: string = "WANNA_BUY";
export const NEW_BETS: string = "NEW_BETS";

@Injectable()
export class TicketsPurchaseService {

  constructor() { }

  private lottery_type: string;

  setLotteryType(type: string): void {
    localStorage.setItem(LOTTERY_TYPE, type);
  }

  getLotteryType(): string {
    return localStorage.getItem(LOTTERY_TYPE);
  }

  setNewBets(newBets: any): void {
    localStorage.setItem(NEW_BETS, JSON.stringify(newBets));
  }

  getNewBets(): string {
    return localStorage.getItem(NEW_BETS);
  }

  removeNewBets(): void {
    localStorage.removeItem(NEW_BETS);
  }

  /*setWannaBuy(wb: string): void {
    localStorage.setItem(WANNA_BUY, wb);
  }

  getWannaBuy(): string {
    return localStorage.getItem(WANNA_BUY);
  }*/

}
