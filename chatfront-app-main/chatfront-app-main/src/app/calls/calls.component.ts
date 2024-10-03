import { Component } from '@angular/core';

@Component({
  selector: 'app-calls',
  templateUrl: './calls.component.html',
  styleUrls: ['./calls.component.scss']
})
export class CallsComponent {
  searchValue: string = '';
  calls = [
    { name: 'AMINA', time: 'Yesterday, 10:45 AM', photo: 'assets/images/profil3.png', type: 'outgoing' },
    { name: 'OUMAIMA', time: 'Yesterday, 11:30 AM', photo: 'assets/images/profil1.png', type: 'incoming' },
    { name: 'HAMZA', time: 'Yesterday, 12:15 PM', photo: 'assets/images/profil2.png', type: 'missed' }
  ];

  filteredCalls = [...this.calls];

  searchCalls() {
    const searchValueLower = this.searchValue.toLowerCase();
    this.filteredCalls = this.calls.filter(call =>
      call.name.toLowerCase().includes(searchValueLower)
    );
  }

  getCallTypeText(type: string): string {
    switch(type) {
      case 'outgoing':
        return 'Appel sortant';
      case 'incoming':
        return 'Appel entrant';
      case 'missed':
        return 'Appel manqué';
      default:
        return '';
    }
  }
}
