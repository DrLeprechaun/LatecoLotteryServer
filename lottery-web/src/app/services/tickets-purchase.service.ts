import { Injectable } from '@angular/core';

export const LOTTERY_TYPE: string = "WANNA_BUY";
export const NEW_BETS: string = "NEW_BETS";
export const SCRATCH_TYPE: string = "SCRATCH_TYPE";

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

  setScratchType(type: string): void {
    localStorage.setItem(SCRATCH_TYPE, type);
  }

  getScratchType(): string {
    return localStorage.getItem(SCRATCH_TYPE);
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


}
