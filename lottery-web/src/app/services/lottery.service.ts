import { Injectable } from '@angular/core';
import { AuthService } from './auth.service';
import { Headers, Http } from '@angular/http';
import { MakeBets } from '../models/make-bets';
import { CombinationUpdate } from '../models/combination-update';
import { ConfigService } from './config.service';

@Injectable()
export class LotteryService {

  constructor(private auth: AuthService, private http: Http, private configService: ConfigService) { }

  //private BASE_URL: string = 'http://178.63.57.162:5000/logic';
  //private BASE_URL: string = 'http://5.178.87.76:5000/logic';
  //private headers: Headers = new Headers({'Content-Type': 'application/json'});

  getBaseUrl(): string {
    //return this.BASE_URL + "/logic";
    console.log(this.configService.getSavedServerPath() + "/logic");
    return this.configService.getSavedServerPath() + "/logic";
  }

  getTokensAmount(): Promise<any> {
    let token = this.auth.getToken();
    //let url: string = `${this.BASE_URL}/tokens_amount`;
    let url: string = `${this.getBaseUrl()}/tokens_amount`;
    let headers: Headers = new Headers({
      'Content-Type': 'application/json',
      Authorization: `Bearer ${token}`
    });
    return this.http.get(url, {headers: headers}).toPromise();
  }

  getWalletAmount(): Promise<any> {
    let token = this.auth.getToken();
    //let url: string = `${this.BASE_URL}/wallet_amount`;
    let url: string = `${this.getBaseUrl()}/wallet_amount`;
    let headers: Headers = new Headers({
      'Content-Type': 'application/json',
      Authorization: `Bearer ${token}`
    });
    return this.http.get(url, {headers: headers}).toPromise();
  }

  makeBets(bets: MakeBets): Promise<any> {
    let token = this.auth.getToken();
    //let url: string = `${this.BASE_URL}/make_bets`;
    let url: string = `${this.getBaseUrl()}/make_bets`;
    let headers: Headers = new Headers({
      'Content-Type': 'application/json',
      Authorization: `Bearer ${token}`
    });
    return this.http.post(url, bets, {headers: headers}).toPromise();
  }

  getBets(): Promise<any> {
    let token = this.auth.getToken();
    //let url: string = `${this.BASE_URL}/get_bets`;
    let url: string = `${this.getBaseUrl()}/get_bets`;
    let headers: Headers = new Headers({
      'Content-Type': 'application/json',
      Authorization: `Bearer ${token}`
    });
    return this.http.get(url, {headers: headers}).toPromise();
  }

  getBetsArchive(): Promise<any> {
    let token = this.auth.getToken();
    //let url: string = `${this.BASE_URL}/get_bets_archive`;
    let url: string = `${this.getBaseUrl()}/get_bets_archive`;
    let headers: Headers = new Headers({
      'Content-Type': 'application/json',
      Authorization: `Bearer ${token}`
    });
    return this.http.get(url, {headers: headers}).toPromise();
  }

  updateCombination(combinationUpdate: CombinationUpdate): Promise<any> {
    let token = this.auth.getToken();
    //let url: string = `${this.BASE_URL}/update_combination`;
    let url: string = `${this.getBaseUrl()}/update_combination`;
    let headers: Headers = new Headers({
      'Content-Type': 'application/json',
      Authorization: `Bearer ${token}`
    });
    return this.http.post(url, combinationUpdate, {headers: headers}).toPromise();
  }

  fillUpWallet(amount: number): Promise<any> {
    let token = this.auth.getToken();
    //let url: string = `${this.BASE_URL}/fill_up_wallet`;
    let url: string = `${this.getBaseUrl()}/fill_up_wallet`;
    let headers: Headers = new Headers({
      'Content-Type': 'application/json',
      Authorization: `Bearer ${token}`
    });
    return this.http.post(url, {amount: amount}, {headers: headers}).toPromise();
  }

  withdrawWallet(amount: number): Promise<any> {
    let token = this.auth.getToken();
    //let url: string = `${this.BASE_URL}/withdraw_wallet`;
    let url: string = `${this.getBaseUrl()}/withdraw_wallet`;
    let headers: Headers = new Headers({
      'Content-Type': 'application/json',
      Authorization: `Bearer ${token}`
    });
    return this.http.post(url, {amount: amount}, {headers: headers}).toPromise();
  }

  fillUpTokens(quantity: number): Promise<any> {
    let token = this.auth.getToken();
    //let url: string = `${this.BASE_URL}/fill_up_tokens`;
    let url: string = `${this.getBaseUrl()}/fill_up_tokens`;
    let headers: Headers = new Headers({
      'Content-Type': 'application/json',
      Authorization: `Bearer ${token}`
    });
    return this.http.post(url, {quantity: quantity}, {headers: headers}).toPromise();
  }

  getSuperjackpot(): Promise<any> {
    let token = this.auth.getToken();
    //let url: string = `${this.BASE_URL}/get_superjackpot`;
    let url: string = `${this.getBaseUrl()}/get_superjackpot`;
    let headers: Headers = new Headers({
      'Content-Type': 'application/json',
      Authorization: `Bearer ${token}`
    });
    return this.http.get(url, {headers: headers}).toPromise();
  }

  getBank(): Promise<any> {
    let token = this.auth.getToken();
    //let url: string = `${this.BASE_URL}/get_bank`;
    let url: string = `${this.getBaseUrl()}/get_bank`;
    console.log(url);
    let headers: Headers = new Headers({
      'Content-Type': 'application/json',
      Authorization: `Bearer ${token}`
    });
    return this.http.get(url, {headers: headers}).toPromise();
  }

  buyTickets(ticket: any): Promise<any> {
    let token = this.auth.getToken();
    //let url: string = `${this.BASE_URL}/buy_tickets`;
    let url: string = `${this.getBaseUrl()}/buy_tickets`;
    let headers: Headers = new Headers({
      'Content-Type': 'application/json',
      Authorization: `Bearer ${token}`
    });
    return this.http.post(url, ticket, {headers: headers}).toPromise();
  }

  giveTickets(ticket: any): Promise<any> {
    let token = this.auth.getToken();
    //let url: string = `${this.BASE_URL}/give_tickets`;
    let url: string = `${this.getBaseUrl()}/give_tickets`;
    let headers: Headers = new Headers({
      'Content-Type': 'application/json',
      Authorization: `Bearer ${token}`
    });
    return this.http.post(url, ticket, {headers: headers}).toPromise();
  }

  scratchNow(type: string, tickets: number): Promise<any> {
    let token = this.auth.getToken();
    //let url: string = `${this.BASE_URL}/scratch_now`;
    let url: string = `${this.getBaseUrl()}/scratch_now`;
    let headers: Headers = new Headers({
      'Content-Type': 'application/json',
      Authorization: `Bearer ${token}`
    });
    return this.http.post(url, {type: type, tickets: tickets}, {headers: headers}).toPromise();
  }

  buyScratch(type: string, tickets: number): Promise<any> {
    let token = this.auth.getToken();
    //let url: string = `${this.BASE_URL}/buy_scratch`;
    let url: string = `${this.getBaseUrl()}/buy_scratch`;
    let headers: Headers = new Headers({
      'Content-Type': 'application/json',
      Authorization: `Bearer ${token}`
    });
    return this.http.post(url, {type: type, tickets: tickets}, {headers: headers}).toPromise();
  }

  giveScratch(type: string, tickets: number, email: string): Promise<any> {
    let token = this.auth.getToken();
    //let url: string = `${this.BASE_URL}/give_scratch`;
    let url: string = `${this.getBaseUrl()}/give_scratch`;
    let headers: Headers = new Headers({
      'Content-Type': 'application/json',
      Authorization: `Bearer ${token}`
    });
    return this.http.post(url, {type: type, tickets: tickets, email: email}, {headers: headers}).toPromise();
  }

  updateScratch(id: number, type: string): Promise<any> {
    let token = this.auth.getToken();
    //let url: string = `${this.BASE_URL}/update_scratch`;
    let url: string = `${this.getBaseUrl()}/update_scratch`;
    let headers: Headers = new Headers({
      'Content-Type': 'application/json',
      Authorization: `Bearer ${token}`
    });
    return this.http.post(url, {id: id, type: type}, {headers: headers}).toPromise();
  }

  /*getImage(): Promise<any> {
    let headers: Headers = new Headers({
      'Content-Type': 'image/jpeg'
    });
    return this.http.get(window.location.host + '/assets/img/33.jpg', {headers: headers}).toPromise();
  }*/

}
