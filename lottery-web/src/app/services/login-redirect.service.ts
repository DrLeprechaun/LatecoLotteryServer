import { Injectable } from '@angular/core';
import { CanActivate, Router } from '@angular/router';
import { AuthService } from './auth.service';

@Injectable()
export class LoginRedirect implements CanActivate {
  constructor(private auth: AuthService, private router: Router) {}
  canActivate(): boolean {
    //if (localStorage.getItem('token')) {
    if (!this.auth.isTokenExpired()) {
      this.router.navigateByUrl('/privateOffice');
      //this.router.navigateByUrl('/privateOffice');
      return false;
    }
    else {
      return true;
    }
  }

}
