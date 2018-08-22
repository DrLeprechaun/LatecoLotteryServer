import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { LotteryService } from '../../services/lottery.service';
import { TicketsPurchaseService } from '../../services/tickets-purchase.service';
//import {debounceTime} from 'rxjs/operator/debounceTime';


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
  combinations: any[] = [];
  lotteryName: string;
  lotteryBunner: string;
  ticketCost: number;
  lotteryGrequencyDescription: string;
  backgroundImage: string;
  tableData: any[] = [];
  tickets: any[] = [];
  raffles: number[] = [];
  private superjackpot_value: 0;
  private jackpot_5_36_value: 0;
  private jackpot_6_45_value: 0;
  private jackpot_4_21_value: 0;
  private supers_value: 0;
  private top3_value: 0;
  private rapidos_value: 0;
  lotteryFunds: 0;
  cd: string;


constructor(private router: Router, private lottery: LotteryService, private tpService: TicketsPurchaseService) {

  if (this.tpService.getLotteryType() == null || this.tpService.getLotteryType() == "") {
    this.router.navigateByUrl('/privateOffice');
  }

}

  ngOnInit() {

    //this.countDown();

    setInterval(() => {
      this.countDown();
    }, 1000);

    this.lottery.getBank()
    .then((res) => {
      console.log(res.json());
      if (res.json().status === 'success') {
        console.log(res.json().data);
        this.superjackpot_value = res.json().data.superjackpot;
        this.jackpot_5_36_value = res.json().data.jackpot_5x36;
        this.jackpot_6_45_value = res.json().data.jackpot_6x45;
        this.jackpot_4_21_value = res.json().data.jackpot_4x21;
        this.rapidos_value = res.json().data.rapidos;
        this.top3_value = res.json().data.top3;
        this.supers_value = res.json().data.supers;

        switch(this.tpService.getLotteryType()) {
           case "jackpot_5x36": {
             this.lotteryFunds = res.json().data.jackpot_5x36;
             break;
           }
           case "jackpot_4x21": {
             this.lotteryFunds = res.json().data.jackpot_4x21;
             break;
           }
           case "jackpot_6x45": {
             this.lotteryFunds = res.json().data.jackpot_6x45;
             break;
           }
           case "rapidos": {
             this.lotteryFunds = res.json().data.rapidos;
             break;
           }
           case "top3": {
             this.lotteryFunds = res.json().data.top3;
             break;
           }
           case "supers": {
             this.lotteryFunds = res.json().data.supers;
             break;
           }
           default: {
              //statements;
              break;
           }
         }
      } else {
        console.log(res.json().message);
      }
    },
    (err) => {
      console.log(err);
    })

    document.getElementById("buyButton").setAttribute("style", "visibility: hidden;");

    switch(this.tpService.getLotteryType()) {
       case "lottery_5x36": {
          this.maxNumber = 36;
          this.combinationSize = 5;
          this.lotteryName = "Lottery 5x36";
          this.lotteryBunner = "assets/img/5_36.jpg";
          this.ticketCost = 1;
          this.lotteryGrequencyDescription = "The lottery is held every day at 01:00 (+03 GMT).";
          //document.body.setAttribute('style', 'background-image: url("assets/img/b_5_36.jpg");');
          //statements;
          break;
       }
       case "lottery_6x45": {
         this.maxNumber = 45;
         this.combinationSize = 6;
         this.lotteryName = "Lottery 6x45";
         this.lotteryBunner = "assets/img/6_45.jpg";
         this.ticketCost = 1;
         this.lotteryGrequencyDescription = "The lottery is held every day at 01:00 (+03 GMT).";
         //document.body.setAttribute('style', 'background-image: url("assets/img/b_6_45.jpg");');
          //statements;
          break;
       }
       case "lottery_4x20": {
         this.maxNumber = 20;
         this.combinationSize = 4;
         this.lotteryName = "Lottery 4x20";
         this.lotteryBunner = "assets/img/4_20.jpg";
         this.ticketCost = 1;
         this.lotteryGrequencyDescription = "The lottery is held every day at 01:00 (+03 GMT).";
          //statements;
          break;
       }
       case "lottery_7x49": {
         this.maxNumber = 49;
         this.combinationSize = 7;
         this.lotteryName = "Lottery 7x49";
         this.lotteryBunner = "assets/img/7_49.jpg";
         this.ticketCost = 1;
         this.lotteryGrequencyDescription = "The lottery is held every day at 01:00 (+03 GMT).";
          //statements;
          break;
       }
       case "jackpot_5x36": {
         this.maxNumber = 36;
         this.combinationSize = 5;
         this.lotteryName = "Jackpot 5x36";
         this.lotteryBunner = "assets/img/5_36.jpg";
         this.ticketCost = 1;
         this.lotteryGrequencyDescription = "Jackpot is held on 7th day of every month at 01:00 (+03 GMT).";
         this.backgroundImage = "assets/img/b_5_36.jpg";
         //document.body.setAttribute('style', 'background-image: url("assets/img/b_5_36.jpg");');
          //statements;
          break;
       }
       case "jackpot_6x45": {
         this.maxNumber = 45;
         this.combinationSize = 6;
         this.lotteryName = "Jackpot 6x45";
         this.lotteryBunner = "assets/img/6_45.jpg";
         this.ticketCost = 1;
         this.lotteryGrequencyDescription = "Jackpot is held on 7th day of every month at 01:00 (+03 GMT).";
         this.backgroundImage = "assets/img/b_6_45.jpg";
         //document.body.setAttribute('style', 'background-image: url("assets/img/b_6_45.jpg");');
          //statements;
          break;
       }
       case "jackpot_4x20": {
         this.maxNumber = 20;
         this.combinationSize = 4;
         this.lotteryName = "Jackpot 4x20";
         this.lotteryBunner = "assets/img/4_20.jpg";
         this.ticketCost = 1;
         this.lotteryGrequencyDescription = "Jackpot is held on 7th day of every month at 01:00 (+03 GMT).";
          //statements;
          break;
       }
       case "jackpot_4x21": {
         this.maxNumber = 21;
         this.combinationSize = 4;
         this.lotteryName = "Jackpot 4x21";
         this.lotteryBunner = "assets/img/4_21.jpg";
         this.ticketCost = 1;
         this.lotteryGrequencyDescription = "Jackpot is held on 7th day of every month at 01:00 (+03 GMT).";
         this.backgroundImage = "assets/img/b_4_21.jpg";
         //document.body.setAttribute('style', 'background-image: url("assets/img/b_4_21.jpg");');
          //statements;
          break;
       }
       case "jackpot_7x49": {
         this.maxNumber = 49;
         this.combinationSize = 7;
         this.lotteryName = "Jackpot 7x49";
         this.lotteryBunner = "assets/img/7_49.jpg";
         this.ticketCost = 1;
         this.lotteryGrequencyDescription = "Jackpot is held on 7th day of every month at 01:00 (+03 GMT).";
          //statements;
          break;
       } case "rapidos": {
         this.maxNumber = 21;
         this.combinationSize = 4;
         this.lotteryName = "Rapidos";
         this.lotteryBunner = "assets/img/rapidos.jpg";
         this.ticketCost = 1;
         this.lotteryGrequencyDescription = "Rapidos is held every 5 minutes.";
         this.backgroundImage = "assets/img/b_rapidos.jpg";
         //document.body.setAttribute('style', 'background-image: url("assets/img/b_rapidos.jpg");');
          //statements;
          break;
       } case "supers": {
         this.maxNumber = 36;
         this.combinationSize = 5;
         this.lotteryName = "Rapidos";
         this.lotteryBunner = "assets/img/supers.jpg";
         this.ticketCost = 1;
         this.lotteryGrequencyDescription = "Supers is held every 5 minutes.";
         this.backgroundImage = "assets/img/b_supers.jpg";
         //document.body.setAttribute('style', 'background-image: url("assets/img/b_supers.jpg");');
          //statements;
          break;
       } case "top3": {
         this.maxNumber = 45;
         this.combinationSize = 6;
         this.lotteryName = "Top 3";
         this.lotteryBunner = "assets/img/top3.jpg";
         this.ticketCost = 1;
         this.lotteryGrequencyDescription = "Top 3 is held every 5 minutes.";
         this.backgroundImage = "assets/img/b_top3.jpg";
         //document.body.setAttribute('style', 'background-image: url("assets/img/b_top3.jpg");');
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

    /*for (var i = 0; i < this.maxNumber; i++) {
      let block = {
        num: i+1,
        clicked: false
      }
      this.blocks.push(block);
    }*/

    //Table
    /*var numberTable = [];
    if (this.maxNumber == 36) {
      let k = 0;
      for (var i = 0; i < 6; i++) {
        let subArray: number[] = [];
        for (var j = 0; j < 6; j++) {
          subArray.push(this.blocks[k]);
          k++;
        }
        numberTable.push(subArray);
      }
    } else if (this.maxNumber == 45) {
      let k = 0;
      for (var i = 0; i < 9; i++) {
        let subArray: number[] = [];
        for (var j = 0; j < 5; j++) {
          subArray.push(this.blocks[k]);
          k++;
        }
        numberTable.push(subArray);
      }
    } else if (this.maxNumber == 20) {
      let k = 0;
      for (var i = 0; i < 4; i++) {
        let subArray: number[] = [];
        for (var j = 0; j < 5; j++) {
          subArray.push(this.blocks[k]);
          k++;
        }
        numberTable.push(subArray);
      }
    } else if (this.maxNumber == 49) {
      let k = 0;
      for (var i = 0; i < 7; i++) {
        let subArray: number[] = [];
        for (var j = 0; j < 7; j++) {
          subArray.push(this.blocks[k]);
          k++;
        }
        numberTable.push(subArray);
      }
    } else if (this.maxNumber == 21) {
      let k = 0;
      for (var i = 0; i < 3; i++) {
        let subArray: number[] = [];
        for (var j = 0; j < 7; j++) {
          subArray.push(this.blocks[k]);
          k++;
        }
        numberTable.push(subArray);
      }
    }
    this.tickets.push(numberTable);*/
    var newCombination = [];
    this.combinations.push(newCombination);

    this.addTicketToTable();
    this.raffles.push(1);
    console.log(this.raffles);
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

  addTicketToTable() {
    var blocks = [];

    for (var i = 0; i < this.maxNumber; i++) {
      let block = {
        num: i+1,
        clicked: false
      }
      blocks.push(block);
    }

    var numberTable = [];
    if (this.maxNumber == 36) {
      let k = 0;
      for (var i = 0; i < 6; i++) {
        let subArray: number[] = [];
        for (var j = 0; j < 6; j++) {
          subArray.push(blocks[k]);
          k++;
        }
        numberTable.push(subArray);
      }
    } else if (this.maxNumber == 45) {
      let k = 0;
      for (var i = 0; i < 9; i++) {
        let subArray: number[] = [];
        for (var j = 0; j < 5; j++) {
          subArray.push(blocks[k]);
          k++;
        }
        numberTable.push(subArray);
      }
    } else if (this.maxNumber == 20) {
      let k = 0;
      for (var i = 0; i < 4; i++) {
        let subArray: number[] = [];
        for (var j = 0; j < 5; j++) {
          subArray.push(blocks[k]);
          k++;
        }
        numberTable.push(subArray);
      }
    } else if (this.maxNumber == 49) {
      let k = 0;
      for (var i = 0; i < 7; i++) {
        let subArray: number[] = [];
        for (var j = 0; j < 7; j++) {
          subArray.push(blocks[k]);
          k++;
        }
        numberTable.push(subArray);
      }
    } else if (this.maxNumber == 21) {
      let k = 0;
      for (var i = 0; i < 3; i++) {
        let subArray: number[] = [];
        for (var j = 0; j < 7; j++) {
          subArray.push(blocks[k]);
          k++;
        }
        numberTable.push(subArray);
      }
    }
    this.tickets.push(numberTable);
  }

  addDelete(block, i: number) {

    /*if (block.clicked == false) {
      if (this.combination.length < this.combinationSize) {
        block.clicked = true;
        this.combination.push(block.num);
      }
    } else {
      block.clicked = false;
      let index = this.combination.indexOf(block.num);
      this.combination.splice(index, 1);
    }*/

    if (block.clicked == false) {
      if (this.combinations[i].length < this.combinationSize) {
        block.clicked = true;
        this.combinations[i].push(block.num);
      }
    } else {
      block.clicked = false;
      let index = this.combinations[i].indexOf(block.num);
      this.combinations[i].splice(index, 1);
    }

    //Save button
    /*if (this.combination.length == this.combinationSize) {
      document.getElementById("buyButton").setAttribute("style", "visibility: visible;");
    } else {
      document.getElementById("buyButton").setAttribute("style", "visibility: hidden;");
    }*/

    let flag = false;
    for (var i = 0; i < this.combinations.length; i++) {
      if (this.combinations[i].length != this.combinationSize) {
        flag = true;
      }
    }

    if (!flag) {
      document.getElementById("buyButton").setAttribute("style", "visibility: visible;");
    } else {
      document.getElementById("buyButton").setAttribute("style", "visibility: hidden;");
    }

  }

  addRaffle(i: number) {
    this.raffles[i] = this.raffles[i] + 1;
  }

  removeRaffle(i: number) {
    if (this.raffles[i] > 1) {
      this.raffles[i] = this.raffles[i] - 1;
    }
  }

  removeTicket(index: number){
    this.combinations.splice(index, 1);
    this.tickets.splice(index, 1);
    this.raffles.splice(index, 1);
  }

  buyTickets() {

    /*if (this.combination.length > this.combinationSize) {
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
        }
      },
      (err) => {
        console.log(err);
      })
    }*/

    let tickets = {
      type: this.tpService.getLotteryType(),
      combinations: this.combinations
    }

    this.lottery.buyTickets(tickets)
    .then((res) => {
      console.log(res.json());
      if (res.json().status === 'success') {
        this.tpService.setNewBets(tickets);
        this.tpService.setLotteryType("");
        this.router.navigateByUrl('/my-bets');
      } else {
      }
    },
    (err) => {
      console.log(err);
    })

  }

  checkCombination() {
    if (this.combination.length > this.combinationSize) {
      alert("You've selected more than " + this.combinationSize + "  numbers");
    } if (this.combination.length < this.combinationSize) {
      alert("You've selected less than " + this.combinationSize + "  numbers");
    }
  }

  selectRandom() {
    /*let r_comb = [];
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
    }*/

    for (i = 0; i < this.tickets.length; i++) {
      let r_comb = [];
      while (r_comb.length < this.combinationSize) {
        let element = this.randomInt(1, this.maxNumber);
        if (r_comb.indexOf(element) < 0) {
            r_comb.push(element);
        }
      }

      for (var j = 0; j < this.tickets[i].length; j++) {
        for (let block of this.tickets[i][j]) {
          if (r_comb.indexOf(block.num) > -1) {
            block.clicked = true;
          } else {
              block.clicked = false;
          }
        }
      }

      this.combinations[i] = r_comb;
    }

    let flag = false;
    for (var i = 0; i < this.combinations.length; i++) {
      if (this.combinations[i].length != this.combinationSize) {
        flag = true;
      }
    }

    if (!flag) {
      document.getElementById("buyButton").setAttribute("style", "visibility: visible;");
    } else {
      document.getElementById("buyButton").setAttribute("style", "visibility: hidden;");
    }
  }

  randomInt(min, max){
    return Math.floor(Math.random() * (max - min + 1)) + min;
  }

  addTicket() {
    this.addTicketToTable();
    var newCombination = [];
    this.combinations.push(newCombination);
    this.raffles.push(1);
  }

  countDown() {

    var countDownDate = this.getCountDownDate();
    var now = new Date().getTime();

     var distance = countDownDate - now;
     var days = Math.floor(distance / (1000 * 60 * 60 * 24));
     var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
     var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
     var seconds = Math.floor((distance % (1000 * 60)) / 1000);

     this.cd = hours + "h "+ minutes + "m " + seconds + "s ";
  }

  getCountDownDate() {
    if (this.lotteryName == "Jackpot 5x36" || this.lotteryName == "Jackpot 4x21" || this.lotteryName == "Jackpot 6x45") {
      var today = new Date();
      var tomorrow = new Date();
      tomorrow.setDate(today.getDate()+1);
      tomorrow.setHours(1);
      tomorrow.setMinutes(0);
      tomorrow.setSeconds(0);
      return  tomorrow.getTime();
    } else if (this.lotteryName == "Top 3" || this.lotteryName == "Rapidos" || this.lotteryName == "Supers") {
      var now = new Date();
      var cd = new Date();
      if (now.getMinutes() < 5) {
        cd.setMinutes(5);
      } else if (now.getMinutes() >= 5 && now.getMinutes() < 10) {
        cd.setMinutes(10);
      } else if (now.getMinutes() >= 10 && now.getMinutes() < 15) {
        cd.setMinutes(15);
      } else if (now.getMinutes() >= 15 && now.getMinutes() < 20) {
        cd.setMinutes(20);
      } else if (now.getMinutes() >= 20 && now.getMinutes() < 25) {
        cd.setMinutes(25);
      } else if (now.getMinutes() >= 25 && now.getMinutes() < 30) {
        cd.setMinutes(30);
      } else if (now.getMinutes() >= 30 && now.getMinutes() < 35) {
        cd.setMinutes(35);
      } else if (now.getMinutes() >= 35 && now.getMinutes() < 40) {
        cd.setMinutes(40);
      } else if (now.getMinutes() >= 40 && now.getMinutes() < 45) {
        cd.setMinutes(45);
      } else if (now.getMinutes() >= 45 && now.getMinutes() < 50) {
        cd.setMinutes(50);
      } else if (now.getMinutes() >= 50 && now.getMinutes() < 55) {
        cd.setMinutes(55);
      } else if (now.getMinutes() >= 55) {
        tomorrow.setDate(today.getDate()+1);
        cd.setHours(today.getHours()+1);
        cd.setMinutes(0);
      }
      cd.setSeconds(0);
      return cd.getTime();
    }
  }

  logOut(): void {
    localStorage.removeItem('token');
    localStorage.removeItem('WANNA_BUY');
  }

}
