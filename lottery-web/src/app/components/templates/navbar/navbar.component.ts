import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.css']
})
export class NavbarComponent implements OnInit {

  private url: string = "";
  private href: string = "";

  constructor(private router: Router) { }

  ngOnInit() {
    this.href = this.router.url;
    //console.log(this.href);
  }

}
