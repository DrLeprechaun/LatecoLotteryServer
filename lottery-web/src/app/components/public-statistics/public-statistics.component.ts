import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { TicketsPurchaseService } from '../../services/tickets-purchase.service';
import { LotteryService } from '../../services/lottery.service';

@Component({
  selector: 'app-public-statistics',
  templateUrl: './public-statistics.component.html',
  styleUrls: ['./public-statistics.component.css']
})
export class PublicStatisticsComponent implements OnInit {
  
  private superjackpot_value: 0;

  constructor(private router: Router,
    private tpService: TicketsPurchaseService,
    private lottery: LotteryService
  ) { }

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

  goLogin(lotteryType: string): void {
    this.router.navigateByUrl('/login');
    this.tpService.setLotteryType(lotteryType);
  }

}
