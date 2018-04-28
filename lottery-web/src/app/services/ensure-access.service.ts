import { Injectable } from '@angular/core';
import { CanActivate, Router, ActivatedRouteSnapshot, RouterStateSnapshot } from '@angular/router';
import { AuthService } from './auth.service';
import { Observable } from 'rxjs/Observable';
import { Http, Response, Headers } from '@angular/http';
import 'rxjs/add/operator/map';
import 'rxjs/add/operator/catch';

@Injectable()
export class EnsureAccess implements CanActivate {

  //private BASE_URL: string = 'http://178.63.57.162:5000/auth';
  private BASE_URL: string = 'http://5.178.87.76:5000/auth';
  private headers: Headers = new Headers({'Content-Type': 'application/json'});

  constructor(private http: Http, private router: Router) {}

  canActivate():Observable<boolean> | boolean {

    return true;

  }


}


/*export class EnsureAccess implements CanActivate {

  private BASE_URL: string = 'http://178.63.57.162:5000/auth';
  private headers: Headers = new Headers({'Content-Type': 'application/json'});

  constructor(private http: Http, private router: Router) {}

  canActivate(next:ActivatedRouteSnapshot, state:RouterStateSnapshot):Observable<boolean> | boolean {

    console.log("Service");

    const token = localStorage.getItem('token');

    let url: string = `${this.BASE_URL}/status`;
    let headers: Headers = new Headers({
      'Content-Type': 'application/json',
      Authorization: `Bearer ${token}`
    });

    return new Observable<boolean>( observer => {
      this.http.get(url, {headers: headers})
      .map(res => res.json())
      .subscribe(
          data => {
            console.log("Ok");
            console.log(data);
            observer.next(true)
          },
          error => {
            console.log("Протух");
            this.router.navigate(['/home']);
            observer.next(false);
          },
          () => {
            console.log("Хрень");
            observer.next(false)
          }
        )
      })
    }

  }*/




//export class EnsureAccess implements CanActivate {
/*export class EnsureAccess {

  private BASE_URL: string = 'http://178.63.57.162:5000/auth';
  private headers: Headers = new Headers({'Content-Type': 'application/json'});

  constructor(private http: Http, private router: Router) {}



  /*canAccess(): void {
    const token = localStorage.getItem('token');
    if (token) {
      //return true;
      let url: string = `${this.BASE_URL}/status`;
      let headers: Headers = new Headers({
        'Content-Type': 'application/json',
        Authorization: `Bearer ${token}`
      });

      this.http.get(url, {headers: headers})
               .map((res: Response) => res.json())
               .subscribe(data => {
                        console.log(data);
                        console.log("Token is actual");
                  },
                error => {
                  console.log("Token expired");
                  this.router.navigateByUrl('/login');
                });
    } else {
      console.log("No token");
      this.router.navigateByUrl('/login');
    }
  }*/
