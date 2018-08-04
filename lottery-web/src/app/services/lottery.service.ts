import { Injectable } from '@angular/core';
import { AuthService } from './auth.service';
import { Headers, Http } from '@angular/http';
import { MakeBets } from '../models/make-bets';
import { CombinationUpdate } from '../models/combination-update';

@Injectable()
export class LotteryService {

  constructor(private auth: AuthService, private http: Http) { }

  //private BASE_URL: string = 'http://178.63.57.162:5000/logic';
  private BASE_URL: string = 'http://5.178.87.76:5000/logic';
  private headers: Headers = new Headers({'Content-Type': 'application/json'});

  getTokensAmount(): Promise<any> {
    let token = this.auth.getToken();
    let url: string = `${this.BASE_URL}/tokens_amount`;
    let headers: Headers = new Headers({
      'Content-Type': 'application/json',
      Authorization: `Bearer ${token}`
    });
    return this.http.get(url, {headers: headers}).toPromise();
  }

  getWalletAmount(): Promise<any> {
    let token = this.auth.getToken();
    let url: string = `${this.BASE_URL}/wallet_amount`;
    let headers: Headers = new Headers({
      'Content-Type': 'application/json',
      Authorization: `Bearer ${token}`
    });
    return this.http.get(url, {headers: headers}).toPromise();
  }

  makeBets(bets: MakeBets): Promise<any> {
    let token = this.auth.getToken();
    let url: string = `${this.BASE_URL}/make_bets`;
    let headers: Headers = new Headers({
      'Content-Type': 'application/json',
      Authorization: `Bearer ${token}`
    });
    return this.http.post(url, bets, {headers: headers}).toPromise();
  }

  getBets(): Promise<any> {
    let token = this.auth.getToken();
    let url: string = `${this.BASE_URL}/get_bets`;
    let headers: Headers = new Headers({
      'Content-Type': 'application/json',
      Authorization: `Bearer ${token}`
    });
    return this.http.get(url, {headers: headers}).toPromise();
  }

  getBetsArchive(): Promise<any> {
    let token = this.auth.getToken();
    let url: string = `${this.BASE_URL}/get_bets_archive`;
    let headers: Headers = new Headers({
      'Content-Type': 'application/json',
      Authorization: `Bearer ${token}`
    });
    return this.http.get(url, {headers: headers}).toPromise();
  }

  updateCombination(combinationUpdate: CombinationUpdate): Promise<any> {
    let token = this.auth.getToken();
    let url: string = `${this.BASE_URL}/update_combination`;
    let headers: Headers = new Headers({
      'Content-Type': 'application/json',
      Authorization: `Bearer ${token}`
    });
    return this.http.post(url, combinationUpdate, {headers: headers}).toPromise();
  }

  fillUpWallet(amount: number): Promise<any> {
    let token = this.auth.getToken();
    let url: string = `${this.BASE_URL}/fill_up_wallet`;
    let headers: Headers = new Headers({
      'Content-Type': 'application/json',
      Authorization: `Bearer ${token}`
    });
    return this.http.post(url, {amount: amount}, {headers: headers}).toPromise();
  }

  withdrawWallet(amount: number): Promise<any> {
    let token = this.auth.getToken();
    let url: string = `${this.BASE_URL}/withdraw_wallet`;
    let headers: Headers = new Headers({
      'Content-Type': 'application/json',
      Authorization: `Bearer ${token}`
    });
    return this.http.post(url, {amount: amount}, {headers: headers}).toPromise();
  }

  fillUpTokens(quantity: number): Promise<any> {
    let token = this.auth.getToken();
    let url: string = `${this.BASE_URL}/fill_up_tokens`;
    let headers: Headers = new Headers({
      'Content-Type': 'application/json',
      Authorization: `Bearer ${token}`
    });
    return this.http.post(url, {quantity: quantity}, {headers: headers}).toPromise();
  }

  getSuperjackpot(): Promise<any> {
    let token = this.auth.getToken();
    let url: string = `${this.BASE_URL}/get_superjackpot`;
    let headers: Headers = new Headers({
      'Content-Type': 'application/json',
      Authorization: `Bearer ${token}`
    });
    return this.http.get(url, {headers: headers}).toPromise();
  }

  getBank(): Promise<any> {
    let token = this.auth.getToken();
    let url: string = `${this.BASE_URL}/get_bank`;
    let headers: Headers = new Headers({
      'Content-Type': 'application/json',
      Authorization: `Bearer ${token}`
    });
    return this.http.get(url, {headers: headers}).toPromise();
  }

  buyTickets(ticket: any): Promise<any> {
    let token = this.auth.getToken();
    let url: string = `${this.BASE_URL}/buy_tickets`;
    let headers: Headers = new Headers({
      'Content-Type': 'application/json',
      Authorization: `Bearer ${token}`
    });
    return this.http.post(url, ticket, {headers: headers}).toPromise();
  }

  scratchNow(balls: number, tickets: number): Promise<any> {
    let token = this.auth.getToken();
    let url: string = `${this.BASE_URL}/scratch_now`;
    let headers: Headers = new Headers({
      'Content-Type': 'application/json',
      Authorization: `Bearer ${token}`
    });
    return this.http.post(url, {balls: balls, tickets: tickets}, {headers: headers}).toPromise();
  }

  buyScratch(balls: number, tickets: number): Promise<any> {
    let token = this.auth.getToken();
    let url: string = `${this.BASE_URL}/buy_scratch`;
    let headers: Headers = new Headers({
      'Content-Type': 'application/json',
      Authorization: `Bearer ${token}`
    });
    return this.http.post(url, {balls: balls, tickets: tickets}, {headers: headers}).toPromise();
  }

  updateScratch(id: number, type: string): Promise<any> {
    let token = this.auth.getToken();
    let url: string = `${this.BASE_URL}/update_scratch`;
    let headers: Headers = new Headers({
      'Content-Type': 'application/json',
      Authorization: `Bearer ${token}`
    });
    return this.http.post(url, {id: id, type: type}, {headers: headers}).toPromise();
  }

}
