import { Component, OnInit, AfterViewInit, AfterViewChecked, AfterContentChecked, OnChanges} from '@angular/core';
import { Router } from '@angular/router';
import { Location } from '@angular/common';
import { LotteryService } from '../../services/lottery.service';
import { TicketsPurchaseService } from '../../services/tickets-purchase.service';
import {Subject} from 'rxjs/Subject';
import {debounceTime} from 'rxjs/operator/debounceTime';

@Component({
  selector: 'app-scratch',
  templateUrl: './scratch.component.html',
  styleUrls: ['./scratch.component.css']
})
export class ScratchComponent implements OnInit, AfterViewInit {

  private backgroundImage: string;
  private lotteryName: string;
  private lotteryFunds: number;
  private lotteryFundsReal: number;
  private lotteryBunner: string;
  private tickets: any[] = [];
  private fakeBallsArray: number[] = [];
  private scratchNowFlag: boolean = false;

  private s777_value: 0;
  private s100cash_value: 0;
  private fruity_value: 0;

  private bridge: any;
  private bridgeCanvas: any;
  private brushRadius: number = 30;
  private img: any;

  private cnv: HTMLCanvasElement;
  private ctx: any;

  private _scratchBall: number = -1;
  private _currentBall: number = -1;
  private _scratchCard: number = -1;
  private _currentCard: number = -1;

  private balance: number;
  errorMessage: string;
  private _alert = new Subject<string>();
  staticAlertClosed = false;

  constructor(private location: Location,
    private router: Router,
    private lottery: LotteryService,
    private tpService: TicketsPurchaseService) {}

  ngOnInit() {

    setTimeout(() => this.staticAlertClosed = true, 20000);
    this._alert.subscribe((message) => this.errorMessage = message);
    debounceTime.call(this._alert, 5000).subscribe(() => this.errorMessage = null);

    setInterval(() => {
      this.updateAmount();
    }, 5000);

    if (this.tpService.getWannaGive() === 'yes') {
      this.router.navigateByUrl('/give-scratch');
    }

    this.lottery.getBank()
    .then((res) => {
      console.log(res.json());
      console.log(this.tpService.getScratchType());
      if (res.json().status === 'success') {
        this.s777_value = res.json().data.s777;
        this.s100cash_value = res.json().data.s100cash;
        this.fruity_value = res.json().data.fruity;

        switch(this.tpService.getScratchType()) {
           case "777": {
             this.lotteryFunds = res.json().data.s777 + 1;
             this.lotteryFundsReal = res.json().data.s777;
             break;
           }
           case "100CASH": {
             this.lotteryFunds = res.json().data.s100cash + 1;
             this.lotteryFundsReal = res.json().data.s100cash;
             break;
           }
           case "fruity": {
             this.lotteryFunds = res.json().data.fruity + 1;
             this.lotteryFundsReal = res.json().data.fruity;
             break;
           }
           default: {
              break;
           }
         }
      } else {

      }
    },
    (err) => {
      console.log(err);
    })

    if (this.tpService.getScratchType() == "777") {
      //this.backgroundImage = "assets/img/b_top3.jpg";
      this.backgroundImage = "url(assets/img/b_top3.jpg)";
      //this.lotteryFunds = 777;
      this.lotteryName = "777";
      this.lotteryBunner = "assets/img/top3.jpg";
    } else if (this.tpService.getScratchType() == "100CASH") {
      //this.backgroundImage = "assets/img/b_4_21.jpg";
      this.backgroundImage = "url(assets/img/b_4_21.jpg)";
      //this.lotteryFunds = 100;
      this.lotteryName = "100'000 CASH";
      this.lotteryBunner = "assets/img/100000CASH.jpg";
    } else if (this.tpService.getScratchType() == "fruity") {
      //this.backgroundImage = "assets/img/b_rapidos.jpg";
      this.backgroundImage = "url(assets/img/b_rapidos.jpg)";
      //this.lotteryFunds = 333;
      this.lotteryName = "Fruity";
      this.lotteryBunner = "assets/img/33.jpg";
    }
    for (var i = 0; i < 9; i++) {
      this.fakeBallsArray.push(i);
    }
    //this.addTicket();
    var arr = [];
    this.tickets.push(arr);

    this.lottery.getWalletAmount()
    .then((res) => {
      console.log(res.json());
      if (res.json().status === 'success') {
        this.balance = res.json().data.amount;
      }
    })

  }

  ngAfterViewInit() {
    /*this.bridge = <HTMLCanvasElement> document.getElementById("scractBall_1");
    this.bridgeCanvas = this.bridge.getContext('2d');
    this.brushRadius = 30;
    this.img = new Image();
    this.img.src = 'http://5.178.87.76:7000/' + this.lotteryBunner;
    var gradient = this.bridgeCanvas.createLinearGradient(0, 0, 189, 257);
    gradient.addColorStop(0, 'cyan');
    gradient.addColorStop(0.5, 'orange');
    gradient.addColorStop(1, 'violet');
    this.bridgeCanvas.fillStyle = gradient;
    this.bridgeCanvas.fillRect(0,0,this.bridge.width,this.bridge.height);*/

    //this.drawCanvas();
  }

  /*ngAfterViewChecked() {
    this.drawCanvas();
  }*/

  /*ngOnChanges() {
    this.drawCanvas();
  }*/

  private drawCover(i: number, j: number) {
    //if (this.scratchNowFlag) {
      var ball = <HTMLCanvasElement> document.getElementById("scractBall_" + i + "_" + j);
      var ctx = ball.getContext('2d');
      var gradient = ctx.createLinearGradient(0, 0, 189, 257);
      gradient.addColorStop(0, 'cyan');
      gradient.addColorStop(0.5, 'orange');
      gradient.addColorStop(1, 'violet');
      ctx.fillStyle = gradient;
      ctx.fillRect(0,0,ball.width,ball.height);
    //}
  }

  private drawCanvas() {
    for (var i = 0; i < this.tickets.length; i++) {
      for (var j = 0; j < 9; j++) {
        var ball = <HTMLCanvasElement> document.getElementById("scractBall_" + i + "_" + j);
        var ctx = ball.getContext('2d');
        var gradient = ctx.createLinearGradient(0, 0, 189, 257);
        gradient.addColorStop(0, 'cyan');
        gradient.addColorStop(0.5, 'orange');
        gradient.addColorStop(1, 'violet');
        ctx.fillStyle = gradient;
        ctx.fillRect(0,0,ball.width,ball.height);
      }
    }
  }

  private buyTickets() {
    this.lottery.buyScratch(this.tpService.getScratchType(), this.tickets.length)
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
    //this.drawCanvas();
    this.lottery.scratchNow(this.tpService.getScratchType(), this.tickets.length)
    .then((res) => {
      console.log(res.json());
      if (res.json().status === 'success') {
        this.scratchNowFlag = true;
        this.tickets = res.json().tickets;
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
    if (this.balance >= 1) {
      var arr = [];
      this.tickets.push(arr);
      this.balance = this.balance - 1;
      this.lotteryFunds = this.lotteryFundsReal + this.tickets.length;
    } else {
      this.alertMessage("Not enough funds!");
    }
  }

  removeTicket(index: number) {
    if (this.tickets.length > 1) {
      this.tickets.splice(index, 1);
      this.balance = this.balance + 1;
      this.lotteryFunds = this.lotteryFundsReal + this.tickets.length;
    }
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


//DEFAULT
private detectLeftButton(event) {
    if ('buttons' in event) {
        return event.buttons === 1;
    } else if ('which' in event) {
        return event.which === 1;
    } else {
        return event.button === 1;
    }
}

/*private getBrushPos(xRef, yRef) {
	var bridgeRect = this.bridge.getBoundingClientRect();
    return {
	  x: Math.floor((xRef-bridgeRect.left)/(bridgeRect.right-bridgeRect.left)*this.bridge.width),
	  y: Math.floor((yRef-bridgeRect.top)/(bridgeRect.bottom-bridgeRect.top)*this.bridge.height)
    };
}

private drawDot(mouseX,mouseY){
	this.bridgeCanvas.beginPath();
    this.bridgeCanvas.arc(mouseX, mouseY, this.brushRadius, 0, 2*Math.PI, true);
    this.bridgeCanvas.fillStyle = '#000';
    this.bridgeCanvas.globalCompositeOperation = "destination-out";
    this.bridgeCanvas.fill();
}

private mouseMove(e: MouseEvent) {

  var brushPos = this.getBrushPos(e.clientX, e.clientY);

  var leftBut = this.detectLeftButton(e);

    if (leftBut == true) {
      this.drawDot(brushPos.x, brushPos.y);
  }
}*/

private setBall(i: number, j: number) {
  if (this.scratchNowFlag) {
    this.cnv = <HTMLCanvasElement> document.getElementById("scractBall_" + i + "_" + j);
    this.ctx = this.cnv.getContext('2d');
    var ball = document.getElementById("ball_" + i + "_" + j);
    ball.style.opacity = "100";
    this._currentCard = i;
    this._currentBall = j;
    var ballImage = document.getElementById("ballImage_" + i + "_" + j);
    ballImage.style.opacity = "100";
  }
}

private setScratchBall(i: number, j: number) {
  this._scratchCard = i;
  this._scratchBall = j;
  return false;
}

private getBrushPos(xRef, yRef) {
	var rect = this.cnv.getBoundingClientRect();
    return {
	  x: Math.floor((xRef-rect.left)/(rect.right-rect.left)*this.cnv.width),
	  y: Math.floor((yRef-rect.top)/(rect.bottom-rect.top)*this.cnv.height)
    };
}

private drawDot(mouseX,mouseY){
	this.ctx.beginPath();
    this.ctx.arc(mouseX, mouseY, this.brushRadius, 0, 2*Math.PI, true);
    this.ctx.fillStyle = '#000';
    this.ctx.globalCompositeOperation = "destination-out";
    this.ctx.fill();
}

private mouseMove(e: MouseEvent) {

  if (this.cnv != null && this.scratchNowFlag) {
    var brushPos = this.getBrushPos(e.clientX, e.clientY);

    var leftBut = this.detectLeftButton(e);

      if (leftBut == true && this._scratchBall == this._currentBall && this._scratchCard == this._currentCard) {
        this.drawDot(brushPos.x, brushPos.y);
    }
  }
  return false;
}

/*private getBrushPos(xRef, yRef, ticket_id: number, ball_id: number) {
  var cnv = <HTMLCanvasElement> document.getElementById("scractBall_"+ticket_id+"_"+ball_id);
	var rect = cnv.getBoundingClientRect();
    return {
	  x: Math.floor((xRef-rect.left)/(rect.right-rect.left)*cnv.width),
	  y: Math.floor((yRef-rect.top)/(rect.bottom-rect.top)*cnv.height)
    };
}

private drawDot(mouseX,mouseY, ticket_id: number, ball_id: number){
  var cnv = <HTMLCanvasElement> document.getElementById("scractBall_"+ticket_id+"_"+ball_id);
  var ctx = this.bridgeCanvas = cnv.getContext('2d');
	ctx.beginPath();
    ctx.arc(mouseX, mouseY, this.brushRadius, 0, 2*Math.PI, true);
    ctx.fillStyle = '#000';
    ctx.globalCompositeOperation = "destination-out";
    ctx.fill();
}

private mouseMove(e: MouseEvent, ticket_id: number, ball_id: number) {

  var brushPos = this.getBrushPos(e.clientX, e.clientY, ticket_id, ball_id);

  var leftBut = this.detectLeftButton(e);

    if (leftBut == true) {
      this.drawDot(brushPos.x, brushPos.y, ticket_id, ball_id);
  }
}*/


private updateAmount() {
  this.lottery.getBank()
  .then((res) => {
    if (res.json().status === 'success') {
      this.s777_value = res.json().data.s777;
      this.s100cash_value = res.json().data.s100cash;
      this.fruity_value = res.json().data.fruity;

      switch(this.tpService.getScratchType()) {
         case "777": {
           //this.lotteryFunds = res.json().data.jackpot_5x36 + this.tickets.length;
           this.beautifulUpdate(res.json().data.s777);
           this.lotteryFundsReal = res.json().data.s777;
           break;
         }
         case "100CASH": {
           //this.lotteryFunds = res.json().data.jackpot_4x21 + this.tickets.length;
           this.beautifulUpdate(res.json().data.s100cash);
           this.lotteryFundsReal = res.json().data.s100cash;
           break;
         }
         case "fruity": {
           //this.lotteryFunds = res.json().data.jackpot_6x45 + this.tickets.length;
           this.beautifulUpdate(res.json().data.fruity);
           this.lotteryFundsReal = res.json().data.fruity;
           break;
         }
         default: {
            break;
         }
       }
    } else {

    }
  },
  (err) => {
    console.log(err);
  })
}

private beautifulUpdate(newValue: number) {

  if (newValue > this.lotteryFunds) {
    let theLoop: (k: number) => void = (k: number) => {
        setTimeout(() => {
            this.beautifulIncrease();
            if (--k) {
                theLoop(k);
            }
        }, 10);
    };
    theLoop(newValue + this.tickets.length - this.lotteryFunds);
  }
}

private beautifulIncrease() {
  this.lotteryFunds += 1;
}


alertMessage(message: string) {
  this._alert.next(message);
}

}
