import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { AuthService } from '../../services/auth.service';
import { User } from '../../models/user';
import { TicketsPurchaseService } from '../../services/tickets-purchase.service';

@Component({
  selector: 'login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent {

  user: User = new User();

  constructor(private router: Router,
    private auth: AuthService,
    private tpService: TicketsPurchaseService) {}

  onLogin(): void {
    this.auth.login(this.user)
    .then((user) => {
      localStorage.setItem('token', user.json().auth_token);
      //this.router.navigateByUrl('/status');
        //this.router.navigateByUrl('/privateOffice');
        this.router.navigateByUrl('/buy-ticket');
    })
    .catch((err) => {
      console.log(err);
    });
  }

  /*onLogin(): void {
    this.auth.login(this.user)
    .then((user) => {
      localStorage.setItem('token', user.json().auth_token);
      this.router.navigateByUrl('/status');
    })
    .catch((err) => {
      console.log(err);
    });
  }*/

}
