import { Component, OnInit } from '@angular/core';


@Component({
  selector: 'app-buy-ticket',
  templateUrl: './buy-ticket.component.html',
  styleUrls: ['./buy-ticket.component.css']
})
export class BuyTicketComponent implements OnInit {
  blocks = [
    {
      num: 1,
      clicked: false
    },
    {
      num: 2,
      clicked: false
    },
    {
      num: 3,
      clicked: false
    },
    {
      num: 4,
      clicked: false
    },
    {
      num: 5,
      clicked: false
    },
    {
      num: 6,
      clicked: false
    },
    {
      num: 7,
      clicked: false
    },
    {
      num: 8,
      clicked: false
    },
    {
      num: 9,
      clicked: false
    },
    {
      num: 10,
      clicked: false
    },
    {
      num: 11,
      clicked: false
    },
    {
      num: 12,
      clicked: false
    },
    {
      num: 13,
      clicked: false
    },
    {
      num: 14,
      clicked: false
    },
    {
      num: 15,
      clicked: false
    },
    {
      num: 16,
      clicked: false
    },
    {
      num: 17,
      clicked: false
    },
    {
      num: 18,
      clicked: false
    },
    {
      num: 19,
      clicked: false
    },
    {
      num: 20,
      clicked: false
    },
    {
      num: 21,
      clicked: false
    }
  ];

  combination: number[] = [];

  toggle(block) {
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
  }

  checkCombination() {
    if (this.combination.length > 6) {
      alert("Вы выбрали больше 6 чисел");
    } if (this.combination.length < 6) {
      alert("Вы выбрали меньше 6 чисел");
    }
  }

  constructor() { }

  ngOnInit() {
  }

}
