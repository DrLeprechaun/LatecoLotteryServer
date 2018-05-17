import { Component, OnInit  } from '@angular/core';
import { Router } from '@angular/router';
import { AuthService } from '../../services/auth.service';
import { User } from '../../models/user';
import {Subject} from 'rxjs/Subject';
import {debounceTime} from 'rxjs/operator/debounceTime';

@Component({
  selector: 'register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.css']
})
export class RegisterComponent {

  user: User = new User();
  private _alert = new Subject<string>();
  staticAlertClosed = false;
  errorMessage: string;
  repeatPassword: string;



  constructor(private router: Router, private auth: AuthService) {}



  ngOnInit() {
    setTimeout(() => this.staticAlertClosed = true, 20000);

    this._alert.subscribe((message) => this.errorMessage = message);
    debounceTime.call(this._alert, 5000).subscribe(() => this.errorMessage = null);
  }

  onRegister(): void {
    let myPassword = document.getElementById("password") as HTMLInputElement;
    if (myPassword.value == this.repeatPassword) {
      this.auth.register(this.user)
      .then((user) => {
        if (user.json().status == "success") {
          localStorage.setItem('token', user.json().auth_token);
          this.router.navigateByUrl('/privateOffice');
      } else {
        this.alertMessage(user.json().message);
    }
    })
    .catch((err) => {
      console.log(err);
    });
  } else {
    this.alertMessage('Passwords different');
  }
  }

  alertMessage(message: string) {
    this._alert.next(message);
  }


}
