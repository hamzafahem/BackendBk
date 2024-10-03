import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-settings',
  templateUrl: './settings.component.html',
  styleUrls: ['./settings.component.scss']
})
export class SettingsComponent implements OnInit {

  isDarkModeEnabled: boolean = false;

  constructor(private router: Router) {}

  ngOnInit() {
    // Vérifier si le mode sombre est activé dans le localStorage
    const darkMode = localStorage.getItem('darkMode');
    if (darkMode === 'enabled') {
      document.body.classList.add('dark-mode');
      this.isDarkModeEnabled = true;
    }
  }

  toggleDarkMode() {
    // Basculer le mode sombre en fonction de l'état actuel
    const darkMode = localStorage.getItem('darkMode');
    if (darkMode === 'enabled') {
      document.body.classList.remove('dark-mode');
      localStorage.setItem('darkMode', 'disabled');
      this.isDarkModeEnabled = false;
    } else {
      document.body.classList.add('dark-mode');
      localStorage.setItem('darkMode', 'enabled');
      this.isDarkModeEnabled = true;
    }
  }
  

  logout() {
    // Logique de déconnexion
    console.log('Déconnexion');
    this.router.navigate(['/login']);
  }
}
