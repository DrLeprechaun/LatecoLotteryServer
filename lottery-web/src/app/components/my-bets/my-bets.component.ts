import { Component, OnInit } from '@angular/core';
import { LotteryService } from '../../services/lottery.service';
import {NgbModal, ModalDismissReasons} from '@ng-bootstrap/ng-bootstrap';
import { CombinationUpdate } from '../../models/combination-update';
import { TicketsPurchaseService } from '../../services/tickets-purchase.service';
import { Router } from '@angular/router';


@Component({
  selector: 'app-my-bets',
  templateUrl: './my-bets.component.html',
  styleUrls: ['./my-bets.component.css']
})
export class MyBetsComponent implements OnInit {

  rawData: any[] = [];
  tableData: any[] = [];
  archiveRawData: any[] = [];
  archiveTableData: any[] = [];
  modalId: string = "";
  modalType: string = "";
  combinationQuantity: number = 0;
  modalButtonsQuantity: number = 0;
  modalButtonsArray: any[] = [];
  modalButtonsTable: any[] = [];
  editableCombination: number[] = [];
  lotteryType: string = "";
  editedRecordId: number;
  private superjackpot_value: 0;
  private scratchFlag: boolean;
  scratchBunner: string;
  scratchArray: number[] = [];
  checkUpdateScratch: number[] = [];

  private cnv: HTMLCanvasElement;
  private ctx: any;
  private brushRadius: number = 20;

  constructor(private router: Router, private lottery: LotteryService, private modalService: NgbModal, private tpService: TicketsPurchaseService) { }

  ngOnInit() {
    this.loadData();
    /*console.log(JSON.parse(this.tpService.getNewBets()));*/
  }

  loadData(): void {
    this.lottery.getBank()
    .then((res) => {
      //console.log(res.json());
      if (res.json().status === 'success') {
        //console.log(res.json().data);
        this.superjackpot_value = res.json().data.superjackpot;
      } else {
        console.log(res.json().message);
      }
    },
    (err) => {
      console.log(err);
    })
    //Active bets
    this.lottery.getBets()
    .then((res) => {
      if (res.json().status === 'success') {
        console.log(res.json());
        this.tableData = [];
        this.rawData = res.json().data;
        //Jackpot 5x36
        for (var i = 0; i < res.json().data.jackpot_5x36.length; i++) {
          let rowData = {
            "id": res.json().data.jackpot_5x36[i].id,
            "fake_id": "00" + 21536 + res.json().data.jackpot_5x36[i].id,
            "type_name": "Jackpot 5x36",
            "type": "jackpot_5x36",
            "combination": this.processCombination(res.json().data.jackpot_5x36[i].combination),
            "is_new": this.checkNewBet("jackpot_5x36", res.json().data.jackpot_5x36[i].combination),
            "date": new Date(res.json().data.jackpot_5x36[i].date),
            "scratch": false
          }
          this.tableData.push(rowData);
        }
        //Jackpot 6x45
        for (var i = 0; i < res.json().data.jackpot_6x45.length; i++) {
          let rowData = {
            "id": res.json().data.jackpot_6x45[i].id,
            "fake_id": "00" + 21645 + res.json().data.jackpot_6x45[i].id,
            "type_name": "Jackpot 6x45",
            "type": "jackpot_6x45",
            "combination": this.processCombination(res.json().data.jackpot_6x45[i].combination),
            "is_new": this.checkNewBet("jackpot_6x45", res.json().data.jackpot_6x45[i].combination),
            "date": new Date(res.json().data.jackpot_6x45[i].date),
            "scratch": false
          }
          this.tableData.push(rowData);
        }
        //Jackpot 4x21
        for (var i = 0; i < res.json().data.jackpot_4x21.length; i++) {
          let rowData = {
            "id": res.json().data.jackpot_4x21[i].id,
            "fake_id": "00" + 21421 + res.json().data.jackpot_4x21[i].id,
            "type_name": "Jackpot 4x21",
            "type": "jackpot_4x21",
            "combination": this.processCombination(res.json().data.jackpot_4x21[i].combination),
            "is_new": this.checkNewBet("jackpot_4x21", res.json().data.jackpot_4x21[i].combination),
            "date": new Date(res.json().data.jackpot_4x21[i].date),
            "scratch": false
          }
          this.tableData.push(rowData);
        }
        //Rapidos
        for (var i = 0; i < res.json().data.rapidos.length; i++) {
          let rowData = {
            "id": res.json().data.rapidos[i].id,
            "fake_id": "00" + 10645 + res.json().data.rapidos[i].id,
            "type_name": "Rapidos",
            "type": "rapidos",
            "combination": this.processCombination(res.json().data.rapidos[i].combination),
            "is_new": this.checkNewBet("rapidos", res.json().data.rapidos[i].combination),
            "date": new Date(res.json().data.rapidos[i].date),
            "scratch": false
          }
          this.tableData.push(rowData);
        }
        //Two Numbers
        for (var i = 0; i < res.json().data.two_numbers.length; i++) {
          let rowData = {
            "id": res.json().data.two_numbers[i].id,
            "fake_id": "00" + 10749 + res.json().data.two_numbers[i].id,
            "type_name": "Two Numbers",
            "type": "two_numbers",
            "combination": this.processCombination(res.json().data.two_numbers[i].combination),
            "is_new": this.checkNewBet("two_numbers", res.json().data.two_numbers[i].combination),
            "date": new Date(res.json().data.two_numbers[i].date),
            "scratch": false
          }
          this.tableData.push(rowData);
        }
        //Prize&Jackpot
        for (var i = 0; i < res.json().data.prize_jackpot.length; i++) {
          let rowData = {
            "id": res.json().data.prize_jackpot[i].id,
            "fake_id": "00" + 10536 + res.json().data.prize_jackpot[i].id,
            "type_name": "Prize&Jackpot",
            "type": "prize_jackpot",
            "combination": this.processCombination(res.json().data.prize_jackpot[i].combination),
            "is_new": this.checkNewBet("prize_jackpot", res.json().data.prize_jackpot[i].combination),
            "date": new Date(res.json().data.prize_jackpot[i].date),
            "scratch": false
          }
          this.tableData.push(rowData);
        }
        //777
        for (var i = 0; i < res.json().data.bets_777.length; i++) {
          let rowData = {
            "id": res.json().data.bets_777[i].id,
            "fake_id": "00" + 777283 + res.json().data.bets_777[i].id,
            "type_name": "777",
            "type": "777",
            "combination": res.json().data.bets_777[i].combination,
            "is_new": false,
            "date": new Date(res.json().data.bets_777[i].date),
            "scratch": true
          }
          this.tableData.push(rowData);
        }
        //Fruity
        for (var i = 0; i < res.json().data.bets_fruity.length; i++) {
          let rowData = {
            "id": res.json().data.bets_fruity[i].id,
            "fake_id": "00" + 337283 + res.json().data.bets_fruity[i].id,
            "type_name": "Fruity",
            "type": "fruity",
            "combination": res.json().data.bets_fruity[i].combination,
            "is_new": false,
            "date": new Date(res.json().data.bets_fruity[i].date),
            "scratch": true
          }
          this.tableData.push(rowData);
        }
        //100 000 CASH
        for (var i = 0; i < res.json().data.bets_100.length; i++) {
          let rowData = {
            "id": res.json().data.bets_100[i].id,
            "fake_id": "00" + 100083 + res.json().data.bets_100[i].id,
            "type_name": "100`000 CASH",
            "type": "100CASH",
            "combination": res.json().data.bets_100[i].combination,
            "is_new": false,
            "date": new Date(res.json().data.bets_100[i].date),
            "scratch": true
          }
          this.tableData.push(rowData);
        }
        this.tableData = this.sortAndFormatBetArray(this.tableData);
      }
    });

    //Archive
    this.lottery.getBetsArchive()
    .then((res) => {
      if (res.json().status === 'success') {
        console.log(res.json());
        this.archiveTableData = [];
        this.archiveRawData = res.json().data;
        //Jackpot 5x36
        for (var i = 0; i < res.json().data.jackpot_5x36.length; i++) {
          let rowData = {
            "id": res.json().data.jackpot_5x36[i].id,
            "fake_id": "00" + 21536 + res.json().data.jackpot_5x36[i].id,
            "type_name": "Jackpot 5x36",
            "type": "jackpot_5x36",
            "combination": this.processCombination(res.json().data.jackpot_5x36[i].my_combination),
            "won_combination": this.processCombination(res.json().data.jackpot_5x36[i].win_combination),
            "is_win": res.json().data.jackpot_5x36[i].is_win,
            "date": new Date(res.json().data.jackpot_5x36[i].date)
          }
          this.archiveTableData.push(rowData);
        }
        //Jackpot 6x45
        for (var i = 0; i < res.json().data.jackpot_6x45.length; i++) {
          let rowData = {
            "id": res.json().data.jackpot_6x45[i].id,
            "fake_id": "00" + 21645 + res.json().data.jackpot_6x45[i].id,
            "type_name": "Jackpot 6x45",
            "type": "jackpot_6x45",
            "combination": this.processCombination(res.json().data.jackpot_6x45[i].my_combination),
            "won_combination": this.processCombination(res.json().data.jackpot_6x45[i].win_combination),
            "is_win": res.json().data.jackpot_6x45[i].is_win,
            "date": new Date(res.json().data.jackpot_6x45[i].date)
          }
          this.archiveTableData.push(rowData);
        }
        //Jackpot 4x21
        for (var i = 0; i < res.json().data.jackpot_4x21.length; i++) {
          let rowData = {
            "id": res.json().data.jackpot_4x21[i].id,
            "fake_id": "00" + 21421 + res.json().data.jackpot_4x21[i].id,
            "type_name": "Jackpot 4x21",
            "type": "jackpot_4x21",
            "combination": this.processCombination(res.json().data.jackpot_4x21[i].my_combination),
            "won_combination": this.processCombination(res.json().data.jackpot_4x21[i].win_combination),
            "is_win": res.json().data.jackpot_4x21[i].is_win,
            "date": new Date(res.json().data.jackpot_4x21[i].date)
          }
          this.archiveTableData.push(rowData);
        }
        //Rapidos
        for (var i = 0; i < res.json().data.rapidos.length; i++) {
          let rowData = {
            "id": res.json().data.rapidos[i].id,
            "fake_id": "00" + 10645 + res.json().data.rapidos[i].id,
            "type_name": "Rapidos",
            "type": "rapidos",
            "combination": this.processCombination(res.json().data.rapidos[i].my_combination),
            "won_combination": this.processCombination(res.json().data.rapidos[i].win_combination),
            "is_win": res.json().data.rapidos[i].is_win,
            "date": new Date(res.json().data.rapidos[i].date)
          }
          this.archiveTableData.push(rowData);
        }
        //Two Numbers
        for (var i = 0; i < res.json().data.two_numbers.length; i++) {
          let rowData = {
            "id": res.json().data.two_numbers[i].id,
            "fake_id": "00" + 10749 + res.json().data.two_numbers[i].id,
            "type_name": "Two Numbers",
            "type": "two_numbers",
            "combination": this.processCombination(res.json().data.two_numbers[i].my_combination),
            "won_combination": this.processCombination(res.json().data.two_numbers[i].win_combination),
            "is_win": res.json().data.two_numbers[i].is_win,
            "date": new Date(res.json().data.two_numbers[i].date)
          }
          this.archiveTableData.push(rowData);
        }
        //Prize&Jackpot
        for (var i = 0; i < res.json().data.prize_jackpot.length; i++) {
          let rowData = {
            "id": res.json().data.prize_jackpot[i].id,
            "fake_id": "00" + 10536 + res.json().data.prize_jackpot[i].id,
            "type_name": "Prize&Jackpot",
            "type": "prize_jackpot",
            "combination": this.processCombination(res.json().data.prize_jackpot[i].my_combination),
            "won_combination": this.processCombination(res.json().data.prize_jackpot[i].win_combination),
            "is_win": res.json().data.prize_jackpot[i].is_win,
            "date": new Date(res.json().data.prize_jackpot[i].date)
          }
          this.archiveTableData.push(rowData);
        }
        //777
        for (var i = 0; i < res.json().data.bets_777.length; i++) {
          let rowData = {
            "id": res.json().data.bets_777[i].id,
            "fake_id": "00" + 77283 + res.json().data.bets_777[i].id,
            "type_name": "777",
            "type": "777",
            "combination": this.processCombination(res.json().data.bets_777[i].my_combination),
            "won_combination": this.processCombination(res.json().data.bets_777[i].win_combination),
            "is_win": res.json().data.bets_777[i].is_win,
            "date": new Date(res.json().data.bets_777[i].date)
          }
          this.archiveTableData.push(rowData);
        }
        //Fruity
        for (var i = 0; i < res.json().data.bets_fruity.length; i++) {
          let rowData = {
            "id": res.json().data.bets_fruity[i].id,
            "fake_id": "00" + 33283 + res.json().data.bets_fruity[i].id,
            "type_name": "Fruity",
            "type": "fruity",
            "combination": this.processCombination(res.json().data.bets_fruity[i].my_combination),
            "won_combination": this.processCombination(res.json().data.bets_fruity[i].win_combination),
            "is_win": res.json().data.bets_fruity[i].is_win,
            "date": new Date(res.json().data.bets_fruity[i].date)
          }
          this.archiveTableData.push(rowData);
        }
        //100 000 Cash
        for (var i = 0; i < res.json().data.bets_100.length; i++) {
          let rowData = {
            "id": res.json().data.bets_100[i].id,
            "fake_id": "00" + 10079 + res.json().data.bets_100[i].id,
            "type_name": "100`000 CASH",
            "type": "100CASH",
            "combination": this.processCombination(res.json().data.bets_100[i].my_combination),
            "won_combination": this.processCombination(res.json().data.bets_100[i].win_combination),
            "is_win": res.json().data.bets_100[i].is_win,
            "date": new Date(res.json().data.bets_100[i].date)
          }
          this.archiveTableData.push(rowData);
        }
        this.archiveTableData = this.sortAndFormatBetArray(this.archiveTableData);
      }
    });
    /*this.tpService.removeNewBets();*/
  }

  sortAndFormatBetArray(arr: any) {
    //sort
    var sortedArray = [];
    sortedArray = arr;
    sortedArray.sort(function(a, b){return b.date - a.date});
    //date to local
    var nowLocal = new Date();
    const monthNames = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
    for (var i = 0; i < sortedArray.length; i++) {
      sortedArray[i].date = sortedArray[i].date.setHours(sortedArray[i].date.getHours()-3) - (nowLocal.getTimezoneOffset() * 60000)
      sortedArray[i].date = new Date(sortedArray[i].date);
      sortedArray[i].date = monthNames[sortedArray[i].date.getMonth()] + " " + sortedArray[i].date.getDate() + ", " + sortedArray[i].date.getFullYear() + ", " + ('0' + sortedArray[i].date.getHours()).slice(-2) + ":" + ('0' + sortedArray[i].date.getMinutes()).slice(-2) + ":" + ('0' + sortedArray[i].date.getSeconds()).slice(-2);
    }
    return sortedArray;
  }

  checkNewBet(t: string, combination: any) {
    var result = false;

    if (this.tpService.getNewBets() != null) {
      var newBets = JSON.parse(this.tpService.getNewBets());
      if (t == newBets.type) {
        for (var i = 0; i < newBets.combinations.length; i++) {
          if (combination.length == newBets.combinations[i].length) {
            var compFlag = false;
            for (var j = 0; j < combination.length; j++) {
              if (combination[j] != newBets.combinations[i][j]) {
                compFlag = true;
              }
            }
            //result = !compFlag;
            if (!compFlag) {
              result = true;
            }
          }
        }
      }
    }

    return result;
  }

  processCombination(combination: number[]): string {
    if (combination != null) {
      if (combination.length > 0) {
        return combination.join(" ");
      } else {
        return "Random"
      }
    } else {
      return "Random"
    }
  }

  /*open(content) {
    this.modalService.open(content).result.then((result) => {
      //this.closeResult = `Closed with: ${result}`;
    }, (reason) => {
      //this.closeResult = `Dismissed ${this.getDismissReason(reason)}`;
    });
  }*/

  open(id, fake_id, type, type_name, content, scratch: boolean) {

    this.modalId = fake_id;
    this.modalType = type_name;
    this.lotteryType = type;
    this.editedRecordId = id;

    if (!scratch) {

      this.scratchFlag = false;

      this.editableCombination = [];
      for (var i = 0; i < this.rawData[type].length; i++){
        if (this.rawData[type][i].id == id) {
          this.editableCombination = this.rawData[type][i].combination;
          break;
        }
      }

      this.defineModalButtons(type);
      this.modalService.open(content).result.then((result) => {
        //this.closeResult = `Closed with: ${result}`;
        this.updateCombination();
      }, (reason) => {
        //this.closeResult = `Dismissed ${this.getDismissReason(reason)}`;
      });
    } else {

      this.scratchFlag = true;
      this.checkUpdateScratch = [];

      if (type == "777") {
        //this.scratchBalls = 3;
        this.scratchBunner = "assets/img/top3.jpg";
      } else if (type == "fruity") {
        //this.scratchBalls = 6;
        this.scratchBunner = "assets/img/33.jpg";
      } else if (type == "100CASH") {
        //this.scratchBalls = 5;
        this.scratchBunner = "assets/img/100000CASH.jpg";
      }

      this.scratchArray = [];
      for (var i = 0; i < this.tableData.length; i++) {
        //this.scratchArray.push(i);
        if (id == this.tableData[i].id && type == this.tableData[i].type) {
          this.scratchArray = this.tableData[i].combination;
        }
      }


      this.modalService.open(content).result.then((result) => {
        //this.closeResult = `Closed with: ${result}`;
        //console.log("Scratch");
        if (this.checkUpdateScratch.length == 9) {
          this.lottery.updateScratch(id, type)
          .then((res) => {
            console.log(res.json());
            if (res.json().status === 'success') {
              this.loadData();
            }
          },
          (err) => {
            console.log(err);
          })
        }
      }, (reason) => {
        //this.closeResult = `Dismissed ${this.getDismissReason(reason)}`;
      });
    }
  }

  /*private scratchBall(i: number) {

      var ball = document.getElementById("ball_" + i);
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

      if (this.checkUpdateScratch.indexOf(i) == -1) {
        this.checkUpdateScratch.push(i);
      }
  }*/

  private setBall(i: number) {
      this.cnv = <HTMLCanvasElement> document.getElementById("scractBall_" + i);
      this.ctx = this.cnv.getContext('2d');
      var ball = document.getElementById("ball_" + i);
      ball.style.opacity = "100";
      if (this.checkUpdateScratch.indexOf(i) == -1) {
        this.checkUpdateScratch.push(i);
      }
  }

  private fadeImg(obj: any) {
    obj.style.opacity = String(+obj.style.opacity + 0.01);
  }

  defineModalButtons(type: string): void {
    if (type == "jackpot_4x21") {
      this.modalButtonsQuantity = 21;
      this.combinationQuantity = 4;
    }
    if (type == "jackpot_5x36") {
      this.modalButtonsQuantity = 36;
      this.combinationQuantity = 5;
    }
    if (type == "jackpot_6x45") {
      this.modalButtonsQuantity = 45;
      this.combinationQuantity = 6;
    }
    if (type == "rapidos") {
      this.modalButtonsQuantity = 20;
      this.combinationQuantity = 8;
    }
    if (type == "two_numbers") {
      this.modalButtonsQuantity = 100;
      this.combinationQuantity = 2;
    }
    if (type == "prize_jackpot") {
      this.modalButtonsQuantity = 24;
      this.combinationQuantity = 12;
    }
    this.setModalButtonsArray(this.modalButtonsQuantity);
    console.log(type);
  }

  private setModalButtonsArray(max: number): void {

    this.modalButtonsArray = [];
    this.modalButtonsTable = [];

    //Array
    for (var i = 0; i < this.modalButtonsQuantity; i++) {
      //let buttonClass = "btn btn-dark";
      let buttonClass = "btn button-black";
      if (this.editableCombination != null) {
        if (this.editableCombination.indexOf(i+1) > -1) {
          //buttonClass = "btn btn-danger";
          buttonClass = "btn button-red";
        }
      } else {
        this.editableCombination = [];
      }
      let button = {
        title: i+1,
        class: buttonClass
      }
      this.modalButtonsArray.push(button);
    }

    //Table
    if (this.modalButtonsQuantity == 36) {
      let k = 0;
      for (var i = 0; i < 6; i++) {
        let subArray: number[] = [];
        for (var j = 0; j < 6; j++) {
          subArray.push(this.modalButtonsArray[k]);
          k++;
        }
        this.modalButtonsTable.push(subArray);
      }
    } else if (this.modalButtonsQuantity == 45) {
      let k = 0;
      for (var i = 0; i < 5; i++) {
        let subArray: number[] = [];
        for (var j = 0; j < 9; j++) {
          subArray.push(this.modalButtonsArray[k]);
          k++;
        }
        this.modalButtonsTable.push(subArray);
      }
    } else if (this.modalButtonsQuantity == 20) {
      let k = 0;
      for (var i = 0; i < 4; i++) {
        let subArray: number[] = [];
        for (var j = 0; j < 5; j++) {
          subArray.push(this.modalButtonsArray[k]);
          k++;
        }
        this.modalButtonsTable.push(subArray);
      }
    } else if (this.modalButtonsQuantity == 49) {
      let k = 0;
      for (var i = 0; i < 7; i++) {
        let subArray: number[] = [];
        for (var j = 0; j < 7; j++) {
          subArray.push(this.modalButtonsArray[k]);
          k++;
        }
        this.modalButtonsTable.push(subArray);
      }
    } else if (this.modalButtonsQuantity == 21) {
      let k = 0;
      for (var i = 0; i < 3; i++) {
        let subArray: number[] = [];
        for (var j = 0; j < 7; j++) {
          subArray.push(this.modalButtonsArray[k]);
          k++;
        }
        this.modalButtonsTable.push(subArray);
      }
    } else if (this.modalButtonsQuantity == 100) {
      let k = 0;
      for (var i = 0; i < 10; i++) {
        let subArray: number[] = [];
        for (var j = 0; j < 10; j++) {
          subArray.push(this.modalButtonsArray[k]);
          k++;
        }
        this.modalButtonsTable.push(subArray);
      }
    } else if (this.modalButtonsQuantity == 24) {
      let k = 0;
      for (var i = 0; i < 6; i++) {
        let subArray: number[] = [];
        for (var j = 0; j < 4; j++) {
          subArray.push(this.modalButtonsArray[k]);
          k++;
        }
        this.modalButtonsTable.push(subArray);
      }
    }
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

  editCombination(val: number) {

    //Number button
    //if (document.getElementById("button_" + val).getAttribute("class") != "btn btn-danger") {
    if (document.getElementById("button_" + val).getAttribute("class") != "btn button-red button-round") {
      if (this.editableCombination.length < this.combinationQuantity) {
        //document.getElementById("button_" + val).setAttribute("class", "btn btn-danger");
        document.getElementById("button_" + val).setAttribute("class", "btn button-red button-round");
        this.editableCombination.push(val);
      }
    } else {
      //document.getElementById("button_" + val).setAttribute("class", "btn btn-dark");
      document.getElementById("button_" + val).setAttribute("class", "btn button-black button-round");
      this.editableCombination.splice(this.editableCombination.indexOf(val, 0), 1);
    }

    //Save button
    if (this.editableCombination.length == this.combinationQuantity || this.editableCombination.length == 0) {
      document.getElementById("saveButton").setAttribute("style", "visibility: visible;");
    } else {
      document.getElementById("saveButton").setAttribute("style", "visibility: hidden;");
    }
  }

  updateCombination() {
    console.log("UPDATE");
    console.log(this.editableCombination);
    console.log(this.lotteryType);
    console.log(this.editedRecordId);

    console.log(new CombinationUpdate(this.editedRecordId, this.lotteryType, this.editableCombination));

    this.lottery.updateCombination(new CombinationUpdate(this.editedRecordId, this.lotteryType, this.editableCombination))
    .then((res) => {
      console.log(res.json());
      if (res.json().status === 'success') {
        this.loadData();
      }
    },
    (err) => {
      console.log(err);
    })

    this.editableCombination = [];
    this.lotteryType = "";
    this.editedRecordId = 0;
    this.combinationQuantity = 0;
    this.modalId = "";
    this.modalType = "";
    this.modalButtonsQuantity = 0;
    this.modalButtonsArray = [];
    this.modalButtonsTable = [];
  }

  private buyTicketRedirect(type: string): void {
    this.tpService.setLotteryType(type);
    this.router.navigateByUrl('/buy-ticket');
  }

  private scratch() {

  }

  logOut(): void {
    localStorage.removeItem('token');
    localStorage.removeItem('WANNA_BUY');
  }

  private detectLeftButton(event) {
      if ('buttons' in event) {
          return event.buttons === 1;
      } else if ('which' in event) {
          return event.which === 1;
      } else {
          return event.button === 1;
      }
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

    if (this.cnv != null) {
      var brushPos = this.getBrushPos(e.clientX, e.clientY);

      var leftBut = this.detectLeftButton(e);

        if (leftBut == true) {
          this.drawDot(brushPos.x, brushPos.y);
      }
    }
  }

  private drawCover(i: number) {
      var ball = <HTMLCanvasElement> document.getElementById("scractBall_" + i);
      var ctx = ball.getContext('2d');
      var gradient = ctx.createLinearGradient(0, 0, 145, 196);
      gradient.addColorStop(0, 'cyan');
      gradient.addColorStop(0.5, 'orange');
      gradient.addColorStop(1, 'violet');
      ctx.fillStyle = gradient;
      ctx.fillRect(0,0,ball.width,ball.height);
  }

}
