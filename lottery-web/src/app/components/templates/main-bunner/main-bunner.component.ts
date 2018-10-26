import { Component, OnInit } from '@angular/core';
import { LotteryService } from '../../../services/lottery.service';

@Component({
  selector: 'app-main-bunner',
  templateUrl: './main-bunner.component.html',
  styleUrls: ['./main-bunner.component.css']
})
export class MainBunnerComponent implements OnInit {

  private superjackpot_value: number;
  private cd: string;

  constructor(private lottery: LotteryService) { }

  ngOnInit() {

    setInterval(() => {
      this.countDown();
    }, 1000);

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


  countDown() {

    var countDownDate = this.getCountDownDate();
    var nowLocal = new Date();
    var now = new Date(nowLocal.getTime() + (nowLocal.getTimezoneOffset() * 60000)).getTime();

     var distance = countDownDate - now;
     var days = Math.floor(distance / (1000 * 60 * 60 * 24));
     var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
     var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
     var seconds = Math.floor((distance % (1000 * 60)) / 1000);

     this.cd = days + "d " + hours + "h "+ minutes + "m " + seconds + "s ";
  }

  getCountDownDate() {
    var nowLocal = new Date();
    var now = new Date(nowLocal.getTime() + (nowLocal.getTimezoneOffset() * 60000));
    var cd = new Date(nowLocal.getTime() + (nowLocal.getTimezoneOffset() * 60000));

      if (now.getDate() >= 7 ) {
        if (now.getMonth() < 11 ) {
          cd.setMonth(now.getMonth() + 1);
        } else {
          cd.setMonth(0);
          cd.setFullYear(now.getFullYear() + 1);
        }
      }
      
      cd.setDate(7);
      cd.setHours(0);
      cd.setMinutes(0);
      cd.setSeconds(0);

    return cd.getTime();
  }

}
