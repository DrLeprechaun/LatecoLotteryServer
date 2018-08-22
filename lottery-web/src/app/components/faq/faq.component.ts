import { Component, OnInit } from '@angular/core';
import { LotteryService } from '../../services/lottery.service';

@Component({
  selector: 'app-faq',
  templateUrl: './faq.component.html',
  styleUrls: ['./faq.component.css']
})
export class FaqComponent implements OnInit {

  private superjackpot_value: 0;

  constructor(private lottery: LotteryService) { }

  ngOnInit() {
    this.lottery.getBank()
    .then((res) => {
      console.log(res.json());
      if (res.json().status === 'success') {
        console.log(res.json().data);
        this.superjackpot_value = res.json().data.superjackpot;
      } else {
        console.log(res.json().message);
      }
    },
    (err) => {
      console.log(err);
    })
  }

  logOut(): void {
    localStorage.removeItem('token');
    localStorage.removeItem('WANNA_BUY');
  }

}
