import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { AuthService } from '../../services/auth.service';
import { LotteryService } from '../../services/lottery.service';
import { User } from '../../models/user';
import {NgbModal, ModalDismissReasons} from '@ng-bootstrap/ng-bootstrap';
import { TicketsPurchaseService } from '../../services/tickets-purchase.service';

@Component({
  selector: 'home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css'],
  providers: [ TicketsPurchaseService ],
})
export class HomeComponent {

  private modalTitle: string;
  private maxNumber: number;
  private combinationSize: number;
  private ticketCost: number;
  private lotteryGrequencyDescription: string;
  private superjackpot_value: 0;
  private jackpot_5_36_value: 0;
  private jackpot_6_45_value: 0;
  private jackpot_4_21_value: 0;
  private two_numbers_value: 0;
  private prize_jackpot_value: 0;
  private rapidos_value: 0;
  private s777_value: 0;
  private s100cash_value: 0;
  private fruity_value: 0;
  private lottery_description: number = 0;

  private jackpot_5_36_counter: string;
  private jackpot_6_45_counter: string;
  private jackpot_4_21_counter: string;
  private two_numbers_counter: string;
  private prize_jackpot_counter: string;
  private rapidos_counter: string;

  constructor(private router: Router,
    private lottery: LotteryService,
    private auth: AuthService,
    private tpService: TicketsPurchaseService,
    private modalService: NgbModal) {}

  ngOnInit(): void {

    setInterval(() => {
      this.countDown();
    }, 1000);

    if (!this.auth.isTokenExpired()) {
      this.router.navigateByUrl('/privateOffice');
    }

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
        this.s777_value = res.json().data.s777;
        this.s100cash_value = res.json().data.s100cash;
        this.fruity_value = res.json().data.fruity;
      } else {
        console.log(res.json().message);
      }
    },
    (err) => {
      console.log(err);
    })
  }

  logOut(): void {
    /*const token = localStorage.getItem('token');
    this.auth.ensureAuthenticated(token)
    .then((resp_data) => {
      if (resp_data.json().status === 'success') {
        console.log(resp_data.json())
      }
    })
    .catch((err) => {
      console.log(err);
    });*/
    localStorage.removeItem('token'); //localStorage.clear();
  }

  open(type, content) {
    this.modalTitle = type;

    if (type == "Lottery 5x36") {
      this.maxNumber = 36;
      this.combinationSize = 5;
      this.ticketCost = 1;
      this.lotteryGrequencyDescription = "The lottery is held every day at 01:00 (+03 GMT).";
    } else if (type == "Lottery 6x45") {
      this.maxNumber = 45;
      this.combinationSize = 6;
      this.ticketCost = 1;
      this.lotteryGrequencyDescription = "The lottery is held every day at 01:00 (+03 GMT).";
    } else if (type == "Lottery 4x20") {
      this.maxNumber = 20;
      this.combinationSize = 4;
      this.ticketCost = 1;
      this.lotteryGrequencyDescription = "The lottery is held every day at 01:00 (+03 GMT).";
    } else if (type == "Lottery 7x49") {
      this.maxNumber = 49;
      this.combinationSize = 7;
      this.ticketCost = 1;
      this.lotteryGrequencyDescription = "The lottery is held every day at 01:00 (+03 GMT).";
    } else if (type == "Jackpot 5x36") {
      this.maxNumber = 36;
      this.combinationSize = 5;
      this.ticketCost = 1;
      this.lotteryGrequencyDescription = "Jackpot is held on every day at 01:00 (+03 GMT).";
      this. lottery_description = 2;
    } else if (type == "Jackpot 6x45") {
      this.maxNumber = 45;
      this.combinationSize = 6;
      this.ticketCost = 1;
      this.lotteryGrequencyDescription = "Jackpot is held on every day at 01:00 (+03 GMT).";
      this. lottery_description = 3;
    } else if (type == "Jackpot 4x20") {
      this.maxNumber = 20;
      this.combinationSize = 4;
      this.ticketCost = 1;
      this.lotteryGrequencyDescription = "Jackpot is held on 7th day of every month at 03:00 (+03 GMT).";
    }else if (type == "Jackpot 4x21") {
      this.maxNumber = 21;
      this.combinationSize = 4;
      this.ticketCost = 1;
      this.lotteryGrequencyDescription = "Jackpot is held on every day at 01:00 (+03 GMT).";
      this. lottery_description = 1;
    } else if (type == "Jackpot 7x49") {
      this.maxNumber = 49;
      this.combinationSize = 7;
      this.ticketCost = 1;
      this.lotteryGrequencyDescription = "Jackpot is held on 7th day of every month at 03:00 (+03 GMT).";
    } else if (type == "Rapidos") {
      this.maxNumber = 21;
      this.combinationSize = 4;
      this.ticketCost = 1;
      this.lotteryGrequencyDescription = "Rapidos is held every 5 minutes.";
      this. lottery_description = 4;
    } else if (type == "Two Numbers") {
      this.maxNumber = 36;
      this.combinationSize = 5;
      this.ticketCost = 1;
      this.lotteryGrequencyDescription = "Two numbers is held every 5 minutes.";
      this. lottery_description = 5;
    } else if (type == "Prize&Jackpot") {
      this.maxNumber = 45;
      this.combinationSize = 6;
      this.ticketCost = 1;
      this.lotteryGrequencyDescription = "Prize Jackpot is held every 5 minutes.";
      this. lottery_description = 6;
    }

    this.modalService.open(content).result.then((result) => {
      //this.closeResult = `Closed with: ${result}`;
      this. lottery_description = 0;
    }, (reason) => {
      //this.closeResult = `Dismissed ${this.getDismissReason(reason)}`;
      this. lottery_description = 0;
    });
  }

  private getDismissReason(reason: any): string {
    if (reason === ModalDismissReasons.ESC) {
      return 'by pressing ESC';
    } else if (reason === ModalDismissReasons.BACKDROP_CLICK) {
      return 'by clicking on a backdrop';
    } else {
      return  `with: ${reason}`;
    }
  }

  private countDown() {
    this.jackpot_4_21_counter = this.getCountDown("Jackpot 4x21");
    this.jackpot_5_36_counter = this.getCountDown("Jackpot 5x36");
    this.jackpot_6_45_counter = this.getCountDown("Jackpot 6x45");
    this.rapidos_counter = this.getCountDown("Rapidos");
    this.two_numbers_counter = this.getCountDown("Two Numbers");
    this.prize_jackpot_counter = this.getCountDown("Prize&Jackpot");
  }

  getCountDown(lotteryName: string) {
    var nowLocal = new Date();
    var now = new Date(nowLocal.getTime() + (nowLocal.getTimezoneOffset() * 60000));
    var cd = new Date(nowLocal.getTime() + (nowLocal.getTimezoneOffset() * 60000));

    if (lotteryName == "Jackpot 4x21") {
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
    } else if (lotteryName == "Jackpot 5x36") {
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
    } else if (lotteryName == "Jackpot 6x45") {
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
    } else if (lotteryName == "Rapidos") {
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
    } else if (lotteryName == "Two Numbers") {
      var now = new Date();
      var cd = new Date();
      if (now.getMinutes() < 20 && now.getMinutes() >= 5) {
        cd.setMinutes(20);
      } else if (now.getMinutes() < 35 && now.getMinutes() >= 20) {
        cd.setMinutes(35);
      } else if (now.getMinutes() < 50 && now.getMinutes() >= 35) {
        cd.setMinutes(50);
      } else if (now.getMinutes() >= 50 /*&& now.getMinutes() < 0*/) {
        cd.setMinutes(5);
        cd.setHours(now.getHours()+1);
      } else if (now.getMinutes() >= 0 && now.getMinutes() < 5) {
        cd.setMinutes(5);
      }
      cd.setSeconds(0);
    } else if (lotteryName == "Prize&Jackpot") {
      var now = new Date();
      var cd = new Date();
      if (now.getMinutes() < 25 && now.getMinutes() >= 10) {
        cd.setMinutes(25);
      } else if (now.getMinutes() < 40 && now.getMinutes() >= 25) {
        cd.setMinutes(40);
      } else if (now.getMinutes() < 55 && now.getMinutes() >= 40) {
        cd.setMinutes(55);
      } else if (now.getMinutes() >= 55 /*&& now.getMinutes() < 0*/) {
        cd.setMinutes(10);
        cd.setHours(now.getHours()+1);
      } else if (now.getMinutes() >= 0 && now.getMinutes() < 10) {
        cd.setMinutes(10);
      }
      cd.setSeconds(0);
    }

    var countDownDate = cd.getTime();


     var distance = countDownDate - now.getTime();

     var days = Math.floor(distance / (1000 * 60 * 60 * 24));
     var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
     var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
     var seconds = Math.floor((distance % (1000 * 60)) / 1000);

     return hours + "h "+ minutes + "m " + seconds + "s ";
  }

  goLogin(lotteryType: string, give: string): void {
    this.router.navigateByUrl('/login');
    this.tpService.setLotteryType(lotteryType);
    this.tpService.setWannaGive(give);
  }

  goLoginScratch(scratchType: string, give: string): void {
    this.router.navigateByUrl('/login');
    this.tpService.setScratchType(scratchType);
    this.tpService.setLotteryType(scratchType);
    this.tpService.setWannaGive(give);
  }

}
