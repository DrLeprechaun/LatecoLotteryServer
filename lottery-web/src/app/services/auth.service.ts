import { Injectable } from '@angular/core';
import { Headers, Http } from '@angular/http';
import { User } from '../models/user';
import { Observable } from 'rxjs/Observable';
import 'rxjs/add/operator/toPromise';
import * as jwt_decode from 'jwt-decode';
import { ConfigService } from './config.service';

export const TOKEN_NAME: string = 'token';

@Injectable()
export class AuthService {

  //private BASE_URL: string = 'http://178.63.57.162:5000/auth';
  //private BASE_URL: string = 'http://5.178.87.76:5000/auth';
  private headers: Headers = new Headers({'Content-Type': 'application/json'});

  constructor(private http: Http, private configService: ConfigService) {}

  getBaseUrl(): string {
    return this.configService.getSavedServerPath() + "/auth";
  }

  getToken(): string {
    return localStorage.getItem(TOKEN_NAME);
  }

  setToken(token: string): void {
    localStorage.setItem(TOKEN_NAME, token);
  }

  getTokenExpirationDate(token: string): Date {
    const decoded = jwt_decode(token);

    if (decoded.exp === undefined) return null;

    const date = new Date(0);
    date.setUTCSeconds(decoded.exp);
    return date;
  }

  isTokenExpired(token?: string): boolean {
    if(!token) token = this.getToken();
    if(!token) return true;

    const date = this.getTokenExpirationDate(token);
    if(date === undefined) return false;
    return !(date.valueOf() > new Date().valueOf());
  }

  login(user: User): Promise<any> {
    //let url: string = `${this.BASE_URL}/login`;
    let url: string = `${this.getBaseUrl()}/login`;
    return this.http.post(url, user, {headers: this.headers}).toPromise();
  }

  register(user: User): Promise<any> {
    //let url: string = `${this.BASE_URL}/register`;
    let url: string = `${this.getBaseUrl()}/register`;
    return this.http.post(url, user, {headers: this.headers}).toPromise();
  }

  ensureAuthenticated(token): Promise<any> {
    //let url: string = `${this.BASE_URL}/status`;
    let url: string = `${this.getBaseUrl()}/status`;
    let headers: Headers = new Headers({
      'Content-Type': 'application/json',
      Authorization: `Bearer ${token}`
    });
    return this.http.get(url, {headers: headers}).toPromise();
  }

  logout(user: User): Promise<any> {
    //let url: string = `${this.BASE_URL}/logout`;
    let url: string = `${this.getBaseUrl()}/logout`;
    return this.http.post(url, user, {headers: this.headers}).toPromise();
  }
}
