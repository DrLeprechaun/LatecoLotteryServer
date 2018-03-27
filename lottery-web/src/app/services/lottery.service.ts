import { Injectable } from '@angular/core';
import { AuthService } from './auth.service';
import { Headers, Http } from '@angular/http';

@Injectable()
export class LotteryService {

  constructor(private auth: AuthService, private http: Http) { }

  private BASE_URL: string = 'http://178.63.57.162:5000/logic';
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

}
