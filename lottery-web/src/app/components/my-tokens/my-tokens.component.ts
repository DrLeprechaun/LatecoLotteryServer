import { Component, OnInit } from '@angular/core';
import { LotteryService } from '../../services/lottery.service';
import {Subject} from 'rxjs/Subject';
import {debounceTime} from 'rxjs/operator/debounceTime';

@Component({
  selector: 'app-my-tokens',
  templateUrl: './my-tokens.component.html',
  styleUrls: ['./my-tokens.component.css']
})
export class MyTokensComponent implements OnInit {

  private amount: number = 0;
  private cost: number = 0;
  private _alert = new Subject<string>();
  staticAlertClosed = false;
  errorMessage: string;

  constructor(private lottery: LotteryService) { }

  ngOnInit() {
    this.getAmount();

    setTimeout(() => this.staticAlertClosed = true, 20000);

    this._alert.subscribe((message) => this.errorMessage = message);
    debounceTime.call(this._alert, 5000).subscribe(() => this.errorMessage = null);
  }

  getAmount(): void {
    this.lottery.getTokensAmount()
    .then((res) => {
      console.log(res.json());
      if (res.json().status === 'success') {
        this.amount = res.json().data.amount;
      }
    })
  }

  alertMessage(message: string) {
    this._alert.next(message);
  }

  calculateCost(): void {
    let tokensNumber = document.getElementById("tokensInput") as HTMLSelectElement;
    this.cost = +tokensNumber.value * 0.05;
  }

  buy(): void {

    let quantity = document.getElementById("tokensInput") as HTMLSelectElement;
    this.lottery.fillUpTokens(+quantity.value)
    .then((res) => {
      console.log(res.json());
      if (res.json().status === 'success') {

      } else if (res.json().status === 'fail') {
        this.alertMessage(res.json().message);
      }
    })
    quantity.value = "0";
    this.getAmount();
  }

  logOut(): void {
    localStorage.removeItem('token');
  }

}
