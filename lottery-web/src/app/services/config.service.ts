import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import { Observable } from 'rxjs/Observable';

@Injectable()
export class ConfigService {

  private configUrl = "assets/config.json";
  private server_path: string;

  constructor(private http: Http) {
  }

  public getJSON(): Promise<any> {
    return this.http.get(this.configUrl).toPromise();
  }

  public getSavedServerPath(){
    return localStorage.getItem('server_path');
  }

}
