import { Component, OnInit } from '@angular/core';
import { LotteryService } from '../../services/lottery.service';
import {Subject} from 'rxjs/Subject';
import {debounceTime} from 'rxjs/operator/debounceTime';

@Component({
  selector: 'app-wallet',
  templateUrl: './wallet.component.html',
  styleUrls: ['./wallet.component.css']
})
export class WalletComponent implements OnInit {

  private amount: number = 0;
  private _alert = new Subject<string>();
  staticAlertClosed = false;
  errorMessage: string

  constructor(private lottery: LotteryService) { }

  ngOnInit() {
    this.getAmount();

    setTimeout(() => this.staticAlertClosed = true, 20000);

    this._alert.subscribe((message) => this.errorMessage = message);
    debounceTime.call(this._alert, 5000).subscribe(() => this.errorMessage = null);
  }

  alertMessage(message: string) {
    this._alert.next(message);
  }

  getAmount() {
    this.lottery.getWalletAmount()
    .then((res) => {
      console.log(res.json());
      if (res.json().status === 'success') {
        this.amount = res.json().data.amount;
      }
    })
  }

  logOut(): void {
    localStorage.removeItem('token');
  }

  fillUp(): void {
    let amount = document.getElementById("fillUpInput") as HTMLSelectElement;
    this.lottery.fillUpWallet(+amount.value);
    this.getAmount();
    amount.value = "0";
  }

  withdraw(): void {
    let amount = document.getElementById("withdrawInput") as HTMLSelectElement;
    this.lottery.withdrawWallet(+amount.value)
    .then((res) => {
      console.log(res.json());
      if (res.json().status === 'success') {

      } else if (res.json().status === 'fail') {
        this.alertMessage(res.json().message);
      }
    })
    this.getAmount();
    console.log(amount.value);
    amount.value = "0";
  }

}
