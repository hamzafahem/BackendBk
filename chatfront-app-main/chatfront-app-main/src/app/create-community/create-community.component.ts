import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { CommunityService } from '../community.service';

@Component({
  selector: 'app-create-community',
  templateUrl: './create-community.component.html',
  styleUrls: ['./create-community.component.scss']
})
export class CreateCommunityComponent {
  community = {
    name: '',
    description: '',
    image: null
  };

  constructor(
    private communityService: CommunityService,
    private router: Router
  ) {}

  createCommunity() {
    if (this.community.name && this.community.description) {
      this.communityService.addCommunity(this.community);
      this.community = { name: '', description: '', image: null };

      // Afficher l'alerte et rediriger ensuite
      alert('Communauté créée avec succès !');
      this.router.navigate(['/communities']);
    } else {
      alert('Veuillez remplir tous les champs.');
    }
  }

  onFileChange(event: any) {
    const file = event.target.files[0];
    if (file) {
      this.community.image = file;
    }
  }
}
