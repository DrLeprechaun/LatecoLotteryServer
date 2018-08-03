import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { AuthService } from '../../services/auth.service';
import { User } from '../../models/user';
import { TicketsPurchaseService } from '../../services/tickets-purchase.service';
import {Subject} from 'rxjs/Subject';
import {debounceTime} from 'rxjs/operator/debounceTime';

@Component({
  selector: 'login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent {

  user: User = new User();
  private _alert = new Subject<string>();
  staticAlertClosed = false;
  errorMessage: string;

  constructor(private router: Router,
    private auth: AuthService,
    private tpService: TicketsPurchaseService) {}

    ngOnInit() {
      setTimeout(() => this.staticAlertClosed = true, 20000);
      this._alert.subscribe((message) => this.errorMessage = message);
      debounceTime.call(this._alert, 5000).subscribe(() => this.errorMessage = null);
      console.log(this.tpService.getScratchType());
      console.log(this.tpService.getLotteryType());
    }

    onLogin(): void {
      this.auth.login(this.user)
      .then((user) => {
        localStorage.setItem('token', user.json().auth_token);
          this.router.navigateByUrl('/buy-ticket');
      })
      .catch((err) => {
        this.alertMessage(JSON.parse(err._body).message);
      });
    }

    alertMessage(message: string) {
      this._alert.next(message);
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
