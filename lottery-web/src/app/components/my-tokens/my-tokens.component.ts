import { Component, OnInit } from '@angular/core';
import { LotteryService } from '../../services/lottery.service';

@Component({
  selector: 'app-my-tokens',
  templateUrl: './my-tokens.component.html',
  styleUrls: ['./my-tokens.component.css']
})
export class MyTokensComponent implements OnInit {

  private amount: number = 0;

  constructor(private lottery: LotteryService) { }

  ngOnInit() {
    this.lottery.getTokensAmount()
    .then((res) => {
      console.log(res.json());
      if (res.json().status === 'success') {
        this.amount = res.json().data.amount;
      }
    })
  }

  getAmount(): void {

  }

  logOut(): void {
    localStorage.removeItem('token');
  }

}
