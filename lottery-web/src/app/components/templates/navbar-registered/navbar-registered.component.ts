import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-navbar-registered',
  templateUrl: './navbar-registered.component.html',
  styleUrls: ['./navbar-registered.component.css']
})
export class NavbarRegisteredComponent implements OnInit {

  private url: string = "";
  private href: string = "";

  constructor(private router: Router) { }

  ngOnInit() {
    this.href = this.router.url;
    console.log(this.href);
  }

  logOut(): void {
    localStorage.removeItem('token');
    localStorage.removeItem('WANNA_BUY');
  }
}
