import { Component, OnInit } from '@angular/core';
import { LotteryService } from '../../services/lottery.service';
import { Router } from '@angular/router';
import { TicketsPurchaseService } from '../../services/tickets-purchase.service';

@Component({
  selector: 'app-faq',
  templateUrl: './faq.component.html',
  styleUrls: ['./faq.component.css']
})
export class FaqComponent implements OnInit {

  private superjackpot_value: 0;

  constructor(private lottery: LotteryService,  private router: Router, private tpService: TicketsPurchaseService) { }

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

  private buyTicketRedirect(type: string): void {
    this.tpService.setLotteryType(type);
    this.router.navigateByUrl('/buy-ticket');
  }

  logOut(): void {
    localStorage.removeItem('token');
    localStorage.removeItem('WANNA_BUY');
  }

}
