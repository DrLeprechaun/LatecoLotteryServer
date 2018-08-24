import { Component, OnInit } from '@angular/core';
import { LotteryService } from '../../../services/lottery.service';
import { TicketsPurchaseService } from '../../../services/tickets-purchase.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-cube',
  templateUrl: './cube.component.html',
  styleUrls: ['./cube.component.css']
})
export class CubeComponent implements OnInit {

  constructor(private lottery: LotteryService,  private router: Router, private tpService: TicketsPurchaseService) { }

  ngOnInit() {
  }

  private buyTicketRedirect(type: string): void {
    this.tpService.setLotteryType(type);
    this.router.navigateByUrl('/buy-ticket');
  }
}
