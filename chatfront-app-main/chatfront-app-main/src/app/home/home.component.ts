import { Component } from '@angular/core';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent {
  activeSection: string = 'chat';

  setActiveSection(section: string) {
    this.activeSection = section;
  }
}
