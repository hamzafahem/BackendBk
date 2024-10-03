import { Component } from '@angular/core';

@Component({
  selector: 'app-calendar',
  templateUrl: './calendar.component.html',
  styleUrls: ['./calendar.component.scss']
})
export class CalendarComponent {
  daysOfWeek = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
  dates: Date[] = [];
  events: { [key: string]: string[] } = {};

  constructor() {
    this.generateDates();
  }

  generateDates() {
    const today = new Date();
    const startOfMonth = new Date(today.getFullYear(), today.getMonth(), 1);
    const endOfMonth = new Date(today.getFullYear(), today.getMonth() + 1, 0);

    for (let i = 0; i < startOfMonth.getDay(); i++) {
      this.dates.push(new Date(startOfMonth.getFullYear(), startOfMonth.getMonth(), i - startOfMonth.getDay() + 1));
    }

    for (let i = 1; i <= endOfMonth.getDate(); i++) {
      this.dates.push(new Date(today.getFullYear(), today.getMonth(), i));
    }

    const remainingDays = 7 - (this.dates.length % 7);
    if (remainingDays < 7) {
      for (let i = 1; i <= remainingDays; i++) {
        this.dates.push(new Date(endOfMonth.getFullYear(), endOfMonth.getMonth() + 1, i));
      }
    }
  }

  isToday(date: Date): boolean {
    const today = new Date();
    return date.getDate() === today.getDate() &&
           date.getMonth() === today.getMonth() &&
           date.getFullYear() === today.getFullYear();
  }

  addEvent(date: Date) {
    const eventTitle = prompt(`Ajouter un événement pour le ${date.toDateString()}:`);
    if (eventTitle) {
      const dateKey = date.toDateString();
      if (!this.events[dateKey]) {
        this.events[dateKey] = [];
      }
      this.events[dateKey].push(eventTitle);
    }
  }

  getEventsForDate(date: Date): string[] {
    return this.events[date.toDateString()] || [];
  }

  removeEvent(date: Date, event: string, eventObject: MouseEvent) {
    eventObject.stopPropagation(); // Empêche le clic sur l'événement d'ajouter un événement
    const dateKey = date.toDateString();
    const eventIndex = this.events[dateKey]?.indexOf(event);
    if (eventIndex !== undefined && eventIndex > -1) {
      this.events[dateKey].splice(eventIndex, 1);
      if (this.events[dateKey].length === 0) {
        delete this.events[dateKey];
      }
    }
  }
}
