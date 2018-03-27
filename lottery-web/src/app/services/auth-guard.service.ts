import { Injectable } from '@angular/core';
import { Router, CanActivate } from '@angular/router';
import { AuthService } from './auth.service';

@Injectable()
export class AuthGuard implements CanActivate {

  constructor(
    private router: Router,
    private authService: AuthService) {}

  canActivate() {
    const token = localStorage.getItem('token');
    if (!this.authService.isTokenExpired(token)) {
      return true;
    }

    this.router.navigate(['/login']);
    return false;
  }

}
