import { Component, OnInit } from '@angular/core';
import { LotteryService } from '../../services/lottery.service';
import {Subject} from 'rxjs/Subject';
import {debounceTime} from 'rxjs/operator/debounceTime';
import {NgbModal, ModalDismissReasons} from '@ng-bootstrap/ng-bootstrap';

@Component({
  selector: 'app-my-tokens',
  templateUrl: './my-tokens.component.html',
  styleUrls: ['./my-tokens.component.css']
})
export class MyTokensComponent implements OnInit {

  private amount: number = 0;
  private walletAmount: number = 0;
  private cost: number = 0;
  private _alert = new Subject<string>();
  private _walletAlert = new Subject<string>();
  staticAlertClosed = false;
  errorMessage: string;
  walletErrorMessage: string;

  constructor(private lottery: LotteryService, private modalService: NgbModal) { }

  ngOnInit() {
    this.getAmount();
    this.getWalletAmount();

    setTimeout(() => this.staticAlertClosed = true, 20000);

    this._alert.subscribe((message) => this.errorMessage = message);
    this._walletAlert.subscribe((message) => this.walletErrorMessage = message);
    debounceTime.call(this._alert, 5000).subscribe(() => this.errorMessage = null);
    debounceTime.call(this._walletAlert, 5000).subscribe(() => this.walletErrorMessage = null);
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

  walletAlertMessage(message: string) {
    this._walletAlert.next(message);
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
        this.cost = 0;
      }
    })
    quantity.value = "0";
    this.getAmount();
  }

  open(content) {
    this.modalService.open(content).result.then((result) => {
      //this.closeResult = `Closed with: ${result}`;
    }, (reason) => {
      //this.closeResult = `Dismissed ${this.getDismissReason(reason)}`;
    });
  }

  private getDismissReason(reason: any): string {
    if (reason === ModalDismissReasons.ESC) {
      return 'by pressing ESC';
    } else if (reason === ModalDismissReasons.BACKDROP_CLICK) {
      return 'by clicking on a backdrop';
    } else {
      return  `with: ${reason}`;
    }
  }

  fillUp(): void {
    let amount = document.getElementById("fillUpInput") as HTMLSelectElement;
    this.lottery.fillUpWallet(+amount.value);
    this.getWalletAmount();
    amount.value = "0";
  }

  withdraw(): void {
    let amount = document.getElementById("withdrawInput") as HTMLSelectElement;
    this.lottery.withdrawWallet(+amount.value)
    .then((res) => {
      console.log(res.json());
      if (res.json().status === 'success') {

      } else if (res.json().status === 'fail') {
        this.walletAlertMessage(res.json().message);
      }
    })
    this.getWalletAmount();
    amount.value = "0";
  }

  getWalletAmount() {
    this.lottery.getWalletAmount()
    .then((res) => {
      console.log(res.json());
      if (res.json().status === 'success') {
        this.walletAmount = res.json().data.amount;
      }
    })
  }

  logOut(): void {
    localStorage.removeItem('token');
    localStorage.removeItem('WANNA_BUY');
  }

}
