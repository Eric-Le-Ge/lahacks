import { Component, OnInit } from '@angular/core';
import { PETS } from '../mock-pets';

@Component({
  selector: 'app-pets',
  templateUrl: './pets.component.html',
  styleUrls: ['./pets.component.css']
})

export class PetsComponent implements OnInit {

  constructor() { }

  ngOnInit() {
  }

  pets = PETS;
}
