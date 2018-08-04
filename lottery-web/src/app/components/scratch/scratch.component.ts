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
  private tickets: any[] = [];
  private ballsNumber: number;
  private fakeBallsArray: number[] = [];
  private scratchNowFlag: boolean = false;

  constructor(private router: Router, private lottery: LotteryService, private tpService: TicketsPurchaseService) { }

  ngOnInit() {
    if (this.tpService.getScratchType() == "777") {
      this.backgroundImage = "assets/img/b_top3.jpg";
      this.lotteryFunds = 777;
      this.lotteryName = "777";
      this.lotteryBunner = "assets/img/top3.jpg";
      this.ballsNumber = 3;
    } else if (this.tpService.getScratchType() == "100CASH") {
      this.backgroundImage = "assets/img/b_4_21.jpg";
      this.lotteryFunds = 100;
      this.lotteryName = "100'000 CASH";
      this.lotteryBunner = "assets/img/100000CASH.jpg";
      this.ballsNumber = 5;
    } else if (this.tpService.getScratchType() == "33") {
      this.backgroundImage = "assets/img/b_rapidos.jpg";
      this.lotteryFunds = 33;
      this.lotteryName = "33";
      this.lotteryBunner = "assets/img/33.jpg";
      this.ballsNumber = 6;
    }
    for (var i = 0; i < this.ballsNumber; i++) {
      this.fakeBallsArray.push(i);
    }
    this.addTicket();
  }

  private buyTickets() {
    this.lottery.buyScratch(this.ballsNumber, this.tickets.length)
    .then((res) => {
      if (res.json().status === 'success') {
        //this.tpService.setNewBets(tickets);
        //this.tpService.setLotteryType("");
        this.router.navigateByUrl('/my-bets');
      } else {
      }
    },
    (err) => {
      console.log(err);
    })
  }

  private scratchNow() {
    //this.scratchNowFlag = true;
    this.lottery.scratchNow(this.ballsNumber, this.tickets.length)
    .then((res) => {
      console.log(res.json());
      if (res.json().status === 'success') {
        this.scratchNowFlag = true;
        this.tickets = res.json().tickets;
        console.log(res.json().tickets);
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

  addTicket() {
    var arr = [];
    this.tickets.push(arr);
  }

  removeTicket(index: number) {
    this.tickets.splice(index, 1);
  }

  private removeButtonFlag(): boolean {
    if (this.tickets.length > 1) {
      return true;
    } else {
      return false;
    }
  }

  private scratchCard(i: number, j: number) {

    if (this.scratchNowFlag) {
      var ball = document.getElementById("ball_" + i + "_" + j);
      ball.style.opacity = "0";
      let theLoop: (k: number) => void = (k: number) => {
          setTimeout(() => {
              this.fadeImg(ball);
              if (--k) {
                  theLoop(k);
              }
          }, 10);
      };

      theLoop(100);
    }
  }

  private fadeImg(obj: any) {
    obj.style.opacity = String(+obj.style.opacity + 0.01);
  }

  logOut(): void {
    localStorage.removeItem('token');
    localStorage.removeItem('WANNA_BUY');
  }


}
