import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { LotteryService } from '../../services/lottery.service';
import { TicketsPurchaseService } from '../../services/tickets-purchase.service';


@Component({
  selector: 'app-buy-ticket',
  templateUrl: './buy-ticket.component.html',
  styleUrls: ['./buy-ticket.component.css']
})

export class BuyTicketComponent implements OnInit {

  maxNumber: number;
  combinationSize: number;
  blocks = [];
  combination: number[] = [];
  lotteryName: string;
  lotteryBunner: string;
  ticketCost: number;
  lotteryGrequencyDescription: string;
  tableData: any[] = [];


constructor(private router: Router, private lottery: LotteryService, private tpService: TicketsPurchaseService) {

  if (this.tpService.getLotteryType() == null || this.tpService.getLotteryType() == "") {
    this.router.navigateByUrl('/privateOffice');
  }

}

  ngOnInit() {

    document.getElementById("buyButton").setAttribute("style", "visibility: hidden;");

    switch(this.tpService.getLotteryType()) {
       case "lottery_5x36": {
          this.maxNumber = 36;
          this.combinationSize = 5;
          this.lotteryName = "Lottery 5x36";
          this.lotteryBunner = "assets/img/5_36.png";
          this.ticketCost = 1;
          this.lotteryGrequencyDescription = "The lottery is held every day at 01:00 (+03 GMT).";
          //statements;
          break;
       }
       case "lottery_6x45": {
         this.maxNumber = 45;
         this.combinationSize = 6;
         this.lotteryName = "Lottery 6x45";
         this.lotteryBunner = "assets/img/6_45.png";
         this.ticketCost = 1;
         this.lotteryGrequencyDescription = "The lottery is held every day at 01:00 (+03 GMT).";
          //statements;
          break;
       }
       case "lottery_4x20": {
         this.maxNumber = 20;
         this.combinationSize = 4;
         this.lotteryName = "Lottery 4x20";
         this.lotteryBunner = "assets/img/4_20.png";
         this.ticketCost = 1;
         this.lotteryGrequencyDescription = "The lottery is held every day at 01:00 (+03 GMT).";
          //statements;
          break;
       }
       case "lottery_7x49": {
         this.maxNumber = 49;
         this.combinationSize = 7;
         this.lotteryName = "Lottery 7x49";
         this.lotteryBunner = "assets/img/7_49.png";
         this.ticketCost = 1;
         this.lotteryGrequencyDescription = "The lottery is held every day at 01:00 (+03 GMT).";
          //statements;
          break;
       }
       case "jackpot_5x36": {
         this.maxNumber = 36;
         this.combinationSize = 5;
         this.lotteryName = "Jackpot 5x36";
         this.lotteryBunner = "assets/img/j_5_36.png";
         this.ticketCost = 1;
         this.lotteryGrequencyDescription = "Jackpot is held on 7th day of every month at 01:00 (+03 GMT).";
          //statements;
          break;
       }
       case "jackpot_6x45": {
         this.maxNumber = 45;
         this.combinationSize = 6;
         this.lotteryName = "Jackpot 6x45";
         this.lotteryBunner = "assets/img/j_6_45.png";
         this.ticketCost = 1;
         this.lotteryGrequencyDescription = "Jackpot is held on 7th day of every month at 01:00 (+03 GMT).";
          //statements;
          break;
       }
       case "jackpot_4x20": {
         this.maxNumber = 20;
         this.combinationSize = 4;
         this.lotteryName = "Jackpot 4x20";
         this.lotteryBunner = "assets/img/j_4_20.png";
         this.ticketCost = 1;
         this.lotteryGrequencyDescription = "Jackpot is held on 7th day of every month at 01:00 (+03 GMT).";
          //statements;
          break;
       }
       case "jackpot_4x21": {
         this.maxNumber = 21;
         this.combinationSize = 4;
         this.lotteryName = "Jackpot 4x21";
         this.lotteryBunner = "assets/img/j_4_21.png";
         this.ticketCost = 1;
         this.lotteryGrequencyDescription = "Jackpot is held on 7th day of every month at 01:00 (+03 GMT).";
          //statements;
          break;
       }
       case "jackpot_7x49": {
         this.maxNumber = 49;
         this.combinationSize = 7;
         this.lotteryName = "Jackpot 7x49";
         this.lotteryBunner = "assets/img/j_7_49.png";
         this.ticketCost = 1;
         this.lotteryGrequencyDescription = "Jackpot is held on 7th day of every month at 01:00 (+03 GMT).";
          //statements;
          break;
       } case "rapidos": {
         this.maxNumber = 21;
         this.combinationSize = 4;
         this.lotteryName = "Rapidos";
         this.lotteryBunner = "assets/img/rapidos.png";
         this.ticketCost = 1;
         this.lotteryGrequencyDescription = "Rapidos is held every 5 minutes.";
          //statements;
          break;
       } case "supers": {
         this.maxNumber = 36;
         this.combinationSize = 5;
         this.lotteryName = "Rapidos";
         this.lotteryBunner = "assets/img/supers.png";
         this.ticketCost = 1;
         this.lotteryGrequencyDescription = "Supers is held every 5 minutes.";
          //statements;
          break;
       } case "top3": {
         this.maxNumber = 45;
         this.combinationSize = 6;
         this.lotteryName = "Top 3";
         this.lotteryBunner = "assets/img/top3.png";
         this.ticketCost = 1;
         this.lotteryGrequencyDescription = "Top 3 is held every 5 minutes.";
          //statements;
          break;
       }
       default: {
          //statements;
          break;
       }
    }

    /*for (var i = 1; i < this.maxNumber+1; i++) {
      let block = {
        num: i,
        clicked: false
      }
      this.blocks.push(block);
    }*/

    for (var i = 0; i < this.maxNumber; i++) {
      let block = {
        num: i+1,
        clicked: false
      }
      this.blocks.push(block);
    }

    //Table
    if (this.maxNumber == 36) {
      let k = 0;
      for (var i = 0; i < 6; i++) {
        let subArray: number[] = [];
        for (var j = 0; j < 6; j++) {
          subArray.push(this.blocks[k]);
          k++;
        }
        this.tableData.push(subArray);
      }
    } else if (this.maxNumber == 45) {
      let k = 0;
      for (var i = 0; i < 9; i++) {
        let subArray: number[] = [];
        for (var j = 0; j < 5; j++) {
          subArray.push(this.blocks[k]);
          k++;
        }
        this.tableData.push(subArray);
      }
    } else if (this.maxNumber == 20) {
      let k = 0;
      for (var i = 0; i < 4; i++) {
        let subArray: number[] = [];
        for (var j = 0; j < 5; j++) {
          subArray.push(this.blocks[k]);
          k++;
        }
        this.tableData.push(subArray);
      }
    } else if (this.maxNumber == 49) {
      let k = 0;
      for (var i = 0; i < 7; i++) {
        let subArray: number[] = [];
        for (var j = 0; j < 7; j++) {
          subArray.push(this.blocks[k]);
          k++;
        }
        this.tableData.push(subArray);
      }
    } else if (this.maxNumber == 21) {
      let k = 0;
      for (var i = 0; i < 3; i++) {
        let subArray: number[] = [];
        for (var j = 0; j < 7; j++) {
          subArray.push(this.blocks[k]);
          k++;
        }
        this.tableData.push(subArray);
      }
    }


  }

  /*toggle(block) {
      block.clicked = !block.clicked;
  }

  addDelete(block) {
    let index = 0;

    if (block.clicked == true) {
        this.combination.push(block.num);
    } if (block.clicked == false) {
      index = this.combination.indexOf(block.num);
      this.combination.splice(index, 1);
    }

    console.log(this.combination);
  }*/

  addDelete(block) {

    if (block.clicked == false) {
      if (this.combination.length < this.combinationSize) {
        block.clicked = true;
        this.combination.push(block.num);
      }
    } else {
      block.clicked = false;
      let index = this.combination.indexOf(block.num);
      this.combination.splice(index, 1);
    }

    //Save button
    if (this.combination.length == this.combinationSize) {
      document.getElementById("buyButton").setAttribute("style", "visibility: visible;");
    } else {
      document.getElementById("buyButton").setAttribute("style", "visibility: hidden;");
    }
  }

  buyTickets() {
    if (this.combination.length > this.combinationSize) {
      alert("You've selected more than " + this.combinationSize + "  numbers");
    } else if (this.combination.length < this.combinationSize) {
      alert("You've selected less than " + this.combinationSize + "  numbers");
    } else {
      let ticket = {
        type: this.tpService.getLotteryType(),
        combination: this.combination
      }
      this.lottery.buyTickets(ticket)
      .then((res) => {
        console.log(res.json());
        if (res.json().status === 'success') {
          this.router.navigateByUrl('/my-bets');
        } else {
          //this.alertMessage(res.json().message);
        }
      },
      (err) => {
        console.log(err);
      })
    }

  }

  checkCombination() {
    if (this.combination.length > this.combinationSize) {
      alert("You've selected more than " + this.combinationSize + "  numbers");
    } if (this.combination.length < this.combinationSize) {
      alert("You've selected less than " + this.combinationSize + "  numbers");
    }
  }

  selectRandom() {
    let r_comb = [];
    while (r_comb.length < this.combinationSize) {
      let element = this.randomInt(1, this.maxNumber);
      if (r_comb.indexOf(element) < 0) {
          r_comb.push(element);
      }
    }

    for (let r of this.tableData) {
      for (let block of r) {
        if (r_comb.indexOf(block.num) > -1) {
          block.clicked = true;
        } else {
            block.clicked = false;
        }
      }
    }

    this.combination = r_comb;

    if (this.combination.length == this.combinationSize) {
      document.getElementById("buyButton").setAttribute("style", "visibility: visible;");
    } else {
      document.getElementById("buyButton").setAttribute("style", "visibility: hidden;");
    }
  }

  randomInt(min, max){
    return Math.floor(Math.random() * (max - min + 1)) + min;
  }

  logOut(): void {
    localStorage.removeItem('token');
    localStorage.removeItem('WANNA_BUY');
  }

}
