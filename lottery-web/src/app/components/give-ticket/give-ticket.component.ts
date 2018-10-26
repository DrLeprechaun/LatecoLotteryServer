import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { LotteryService } from '../../services/lottery.service';
import {NgbModal, ModalDismissReasons} from '@ng-bootstrap/ng-bootstrap';
import { TicketsPurchaseService } from '../../services/tickets-purchase.service';
import {Subject} from 'rxjs/Subject';
import {debounceTime} from 'rxjs/operator/debounceTime';

@Component({
  selector: 'app-give-ticket',
  templateUrl: './give-ticket.component.html',
  styleUrls: ['./give-ticket.component.css']
})
export class GiveTicketComponent implements OnInit {

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
  private two_numbers_value: 0;
  private prize_jackpot_value: 0;
  private rapidos_value: 0;
  lotteryFunds: 0;
  private lottery_description: number = 0;
  cd: string;
  private email: string = "";

  private _alert = new Subject<string>();
  private _alert2 = new Subject<string>();
  staticAlertClosed = false;
  staticAlertClosed2 = false;
  errorMessage: string;
  errorMessage2: string;
  private balance: number;

  constructor(private router: Router,
    private lottery: LotteryService,
    private tpService: TicketsPurchaseService,
    private modalService: NgbModal) { }

  ngOnInit() {
    setTimeout(() => this.staticAlertClosed = true, 20000);
    setTimeout(() => this.staticAlertClosed2 = true, 20000);
    this._alert.subscribe((message) => this.errorMessage = message);
    this._alert2.subscribe((message) => this.errorMessage2 = message);
    debounceTime.call(this._alert, 5000).subscribe(() => this.errorMessage = null);
    debounceTime.call(this._alert2, 5000).subscribe(() => this.errorMessage2 = null);

    setInterval(() => {
      this.countDown();
    }, 1000);

    this.lottery.getWalletAmount()
    .then((res) => {
      console.log(res.json());
      if (res.json().status === 'success') {
        this.balance = res.json().data.amount;
        this.addTicketToTable();
        this.raffles.push(1);
      }
    })

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
        this.two_numbers_value = res.json().data.two_numbers;
        this.prize_jackpot_value = res.json().data.prize_jackpot;

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
           case "two_numbers": {
             this.lotteryFunds = res.json().data.two_numbers;
             break;
           }
           case "prize_jackpot": {
             this.lotteryFunds = res.json().data.prize_jackpot;
             break;
           }
           default: {
              break;
           }
         }
         this.lotteryFunds += 1;
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
         //this.backgroundImage = "assets/img/b_5_36.jpg";
         this.backgroundImage = "url(assets/img/b_5_36.jpg)";
         this. lottery_description = 2;
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
         //this.backgroundImage = "assets/img/b_6_45.jpg";
         this.backgroundImage = "url(assets/img/b_6_45.jpg)";
         this. lottery_description = 3;
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
         //this.backgroundImage = "assets/img/b_4_21.jpg";
         this.backgroundImage = "url(assets/img/b_4_21.jpg)";
         this. lottery_description = 1;
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
         this.maxNumber = 20;
         this.combinationSize = 8;
         this.lotteryName = "Rapidos";
         this.lotteryBunner = "assets/img/rapidos.jpg";
         this.ticketCost = 1;
         this.lotteryGrequencyDescription = "Rapidos is held every 5 minutes.";
         //this.backgroundImage = "assets/img/b_rapidos.jpg";
         this.backgroundImage = "url(assets/img/b_rapidos.jpg)";
         this. lottery_description = 4;
         //document.body.setAttribute('style', 'background-image: url("assets/img/b_rapidos.jpg");');
          //statements;
          break;
       } case "two_numbers": {
         this.maxNumber = 100;
         this.combinationSize = 2;
         this.lotteryName = "Two Numbers";
         this.lotteryBunner = "assets/img/supers.jpg";
         this.ticketCost = 1;
         this.lotteryGrequencyDescription = "Supers is held every 5 minutes.";
         //this.backgroundImage = "assets/img/b_two_numbers.jpg";
         this.backgroundImage = "url(assets/img/b_two_numbers.jpg)";
         this. lottery_description = 5;
         //document.body.setAttribute('style', 'background-image: url("assets/img/b_supers.jpg");');
          //statements;
          break;
       } case "prize_jackpot": {
         this.maxNumber = 24;
         this.combinationSize = 12;
         this.lotteryName = "Prize&Jackpot";
         this.lotteryBunner = "assets/img/prize_jackpot.jpg";
         this.ticketCost = 1;
         this.lotteryGrequencyDescription = "Top 3 is held every 5 minutes.";
         //this.backgroundImage = "assets/img/b_prize_jackpot.jpg";
         this.backgroundImage = "url(assets/img/b_prize_jackpot.jpg)";
         this. lottery_description = 6;
         //document.body.setAttribute('style', 'background-image: url("assets/img/b_top3.jpg");');
          //statements;
          break;
       }
       default: {
          //statements;
          break;
       }
    }

    var newCombination = [];
    this.combinations.push(newCombination);

    //this.addTicketToTable();
    //this.raffles.push(1);

    window.scrollTo(0, 0);
  }

  addTicketToTable() {

    if (this.balance >= 1) {
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
    } else if (this.maxNumber == 100) {
      let k = 0;
      for (var i = 0; i < 20; i++) {
        let subArray: number[] = [];
        for (var j = 0; j < 5; j++) {
          subArray.push(blocks[k]);
          k++;
        }
        numberTable.push(subArray);
      }
    } else if (this.maxNumber == 24) {
      let k = 0;
      for (var i = 0; i < 4; i++) {
        let subArray: number[] = [];
        for (var j = 0; j < 6; j++) {
          subArray.push(blocks[k]);
          k++;
        }
        numberTable.push(subArray);
      }
    }
    this.tickets.push(numberTable);
    this.balance = this.balance - 1;
  } else {
    this.alertMessage2("Not enough funds!");
  }
  }

  private checkCombinationSelected(): boolean {
    let flag = false;
    for (var i = 0; i < this.combinations.length; i++) {
      if (this.combinations[i].length != this.combinationSize) {
        flag = true;
      }
    }
    return flag;
  }

  addDelete(block, i: number) {

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

    let flag = false;
    for (var i = 0; i < this.combinations.length; i++) {
      if (this.combinations[i].length != this.combinationSize) {
        flag = true;
      }
    }

    if (!flag && this.email !== "") {
      document.getElementById("buyButton").setAttribute("style", "visibility: visible;");
    } else {
      document.getElementById("buyButton").setAttribute("style", "visibility: hidden;");
    }

  }

  addRaffle(i: number) {
    if (this.balance >= 1) {
      this.raffles[i] = this.raffles[i] + 1;
      this.balance = this.balance - 1;
    } else {
      this.alertMessage2("Not enough funds!");
    }
  }

  removeRaffle(i: number) {
    if (this.raffles[i] > 1) {
      this.raffles[i] = this.raffles[i] - 1;
      this.balance = this.balance + 1;
    }
  }

  removeTicket(index: number){
    this.combinations.splice(index, 1);
    this.tickets.splice(index, 1);
    this.raffles.splice(index, 1);
    this.lotteryFunds -= 1;
    this.balance += 1;
  }

  buyTickets() {

    var t_arr = [];
    for (var i = 0; i < this.combinations.length; i++) {
      var ticket = {
        combination: this.combinations[i],
        raffles: this.raffles[i]
      }
      t_arr.push(ticket);
    }

    let new_bets = {
      type: this.tpService.getLotteryType(),
      combinations: this.combinations
    }

    let tickets = {
      type: this.tpService.getLotteryType(),
      tickets: t_arr,
      email: this.email
    }

    console.log(tickets);

    this.lottery.giveTickets(tickets)
    .then((res) => {
      console.log(res.json());
      if (res.json().status === 'success') {
        this.router.navigateByUrl('/privateOffice');
      } else {

      }
    },
    (err) => {
      console.log(err);
      console.log(err.json().message);
      this.alertMessage(err.json().message);
      //console.log("FAIL");
    })

  }

  checkCombination() {
    if (this.combination.length > this.combinationSize) {
      this.alertMessage("You've selected more than " + this.combinationSize + "  numbers");
    } if (this.combination.length < this.combinationSize) {
      this.alertMessage("You've selected less than " + this.combinationSize + "  numbers");
    }
  }

  selectRandom() {

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

    if (!flag && this.email !== "") {
      document.getElementById("buyButton").setAttribute("style", "visibility: visible;");
    } else {
      document.getElementById("buyButton").setAttribute("style", "visibility: hidden;");
    }
  }


  chooseForMe(i: number) {

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


    let flag = false;
    for (var k = 0; k < this.combinations.length; k++) {
      if (this.combinations[k].length != this.combinationSize) {
        flag = true;
      }
    }

    if (!flag && this.email !== "") {
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
    this.lotteryFunds += 1;
  }

  countDown() {

    var countDownDate = this.getCountDownDate();
    var nowLocal = new Date();
    var now = new Date(nowLocal.getTime() + (nowLocal.getTimezoneOffset() * 60000)).getTime();

     var distance = countDownDate - now;
     var days = Math.floor(distance / (1000 * 60 * 60 * 24));
     var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
     var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
     var seconds = Math.floor((distance % (1000 * 60)) / 1000);

     this.cd = hours + "h "+ minutes + "m " + seconds + "s ";
  }

  getCountDownDate() {
    var nowLocal = new Date();
    var now = new Date(nowLocal.getTime() + (nowLocal.getTimezoneOffset() * 60000));
    var cd = new Date(nowLocal.getTime() + (nowLocal.getTimezoneOffset() * 60000));
    if (this.lotteryName == "Jackpot 4x21") {
      if (now.getHours() >= 23) {
        cd.setHours(3);
        cd.setDate(now.getDate()+1);
      } else if (now.getHours() < 2 && now.getHours() >= 0) {
        cd.setHours(3);
      } else if (now.getHours() >= 2 && now.getHours() < 5) {
        cd.setHours(5);
      } else if (now.getHours() >= 5 && now.getHours() < 8) {
        cd.setHours(8);
      } else if (now.getHours() >= 8 && now.getHours() < 11) {
        cd.setHours(11);
      } else if (now.getHours() >= 11 && now.getHours() < 14) {
        cd.setHours(14);
      } else if (now.getHours() >= 14 && now.getHours() < 17) {
        cd.setHours(17);
      } else if (now.getHours() >= 17 && now.getHours() < 20) {
        cd.setHours(23);
      } else if (now.getHours() >= 20 && now.getHours() < 23) {
        cd.setHours(23);
      }
      cd.setMinutes(0);
      cd.setSeconds(0);
    } else if (this.lotteryName == "Jackpot 5x36") {
      if (now.getHours() >= 22) {
        cd.setHours(4);
        cd.setDate(now.getDate()+1);
      } else if (now.getHours() < 4 && now.getHours() >= 0) {
        cd.setHours(4);
      } else if (now.getHours() >= 4 && now.getHours() < 10) {
        cd.setHours(10);
      } else if (now.getHours() >= 10 && now.getHours() < 16) {
        cd.setHours(16);
      } else if (now.getHours() >= 16 && now.getHours() < 22) {
        cd.setHours(22);
      }
      cd.setMinutes(0);
      cd.setSeconds(0);
    } else if (this.lotteryName == "Jackpot 6x45") {
      if (now.getHours() >= 21) {
        cd.setHours(9);
        cd.setDate(now.getDate()+1);
      } else if (now.getHours() < 9 && now.getHours() >= 0) {
        cd.setHours(9);
      } else if (now.getHours() >= 9 && now.getHours() < 21) {
        cd.setHours(21);
      }
      cd.setMinutes(0);
      cd.setSeconds(0);
    } else if (this.lotteryName == "Rapidos") {
      var now = new Date();
      var cd = new Date();
      if (now.getMinutes() < 15 && now.getMinutes() >= 0) {
        cd.setMinutes(15);
      } else if (now.getMinutes() < 30 && now.getMinutes() >= 15) {
        cd.setMinutes(30);
      } else if (now.getMinutes() < 45 && now.getMinutes() >= 30) {
        cd.setMinutes(45);
      }  else if (now.getMinutes() >= 45) {
        cd.setMinutes(0);
        cd.setHours(now.getHours()+1);
      }
      cd.setSeconds(0);
    } else if (this.lotteryName == "Two Numbers") {
      var now = new Date();
      var cd = new Date();
      if (now.getMinutes() < 20 && now.getMinutes() >= 5) {
        cd.setMinutes(20);
      } else if (now.getMinutes() < 35 && now.getMinutes() >= 20) {
        cd.setMinutes(35);
      } else if (now.getMinutes() < 35 && now.getMinutes() >= 50) {
        cd.setMinutes(50);
      } else if (now.getMinutes() >= 50 && now.getMinutes() < 0) {
        cd.setMinutes(5);
        cd.setHours(now.getHours()+1);
      } else if (now.getMinutes() >= 0 && now.getMinutes() < 5) {
        cd.setMinutes(5);
      }
      cd.setSeconds(0);
    } else if (this.lotteryName == "Prize&Jackpot") {
      var now = new Date();
      var cd = new Date();
      if (now.getMinutes() < 25 && now.getMinutes() >= 10) {
        cd.setMinutes(25);
      } else if (now.getMinutes() < 40 && now.getMinutes() >= 25) {
        cd.setMinutes(40);
      } else if (now.getMinutes() < 55 && now.getMinutes() >= 40) {
        cd.setMinutes(55);
      } else if (now.getMinutes() >= 55 && now.getMinutes() < 0) {
        cd.setMinutes(10);
        cd.setHours(now.getHours()+1);
      } else if (now.getMinutes() >= 0 && now.getMinutes() < 10) {
        cd.setMinutes(10);
      }
      cd.setSeconds(0);
    }
    return cd.getTime();
  }

  private buyTicketRedirect(type: string): void {
    this.tpService.setLotteryType(type);
    location.reload();
  }

  private removeButtonFlag(): boolean {
    if (this.tickets.length > 1) {
      return true;
    } else {
      return false;
    }
  }

  private emailChange(): void {
    let flag = this.checkCombinationSelected();
    if (!flag && this.email !== "") {
      document.getElementById("buyButton").setAttribute("style", "visibility: visible;");
    } else {
      document.getElementById("buyButton").setAttribute("style", "visibility: hidden;");
    }
  }

open(content) {
  this.modalService.open(content).result.then((result) => {
    //this.closeResult = `Closed with: ${result}`;
    this.buyTickets();

  }, (reason) => {
    //this.closeResult = `Dismissed ${this.getDismissReason(reason)}`;
  });
}

  logOut(): void {
    localStorage.removeItem('token');
    localStorage.removeItem('WANNA_BUY');
  }

  alertMessage(message: string) {
    this._alert.next(message);
  }

  alertMessage2(message: string) {
    this._alert2.next(message);
  }

}
