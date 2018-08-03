import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { LotteryService } from '../../services/lottery.service';
import { TicketsPurchaseService } from '../../services/tickets-purchase.service';

@Component({
  selector: 'app-scratch',
  templateUrl: './scratch.component.html',
  styleUrls: ['./scratch.component.css']
})
export class ScratchComponent implements OnInit {

  private backgroundImage: string;
  private lotteryName: string;
  private lotteryFunds: number;
  private lotteryBunner: string;

  constructor(private router: Router, private lottery: LotteryService, private tpService: TicketsPurchaseService) { }

  ngOnInit() {
    if (this.tpService.getScratchType() == "777") {
      this.backgroundImage = "assets/img/b_top3.jpg";
      this.lotteryFunds = 777;
      this.lotteryName = "777";
      this.lotteryBunner = "assets/img/top3.jpg"
    } else if (this.tpService.getScratchType() == "100CASH") {
      this.backgroundImage = "assets/img/b_4_21.jpg";
      this.lotteryFunds = 100;
      this.lotteryName = "100'000 CASH";
      this.lotteryBunner = "assets/img/100000CASH.jpg"
    } else if (this.tpService.getScratchType() == "33") {
      this.backgroundImage = "assets/img/b_rapidos.jpg";
      this.lotteryFunds = 33;
      this.lotteryName = "33";
      this.lotteryBunner = "assets/img/33.jpg"
    }
  }

  private buyTickets() {

  }

  private buyTicketRedirect(type: string): void {
    this.tpService.setLotteryType(type);
    this.router.navigateByUrl('/buy-ticket');
  }


}
