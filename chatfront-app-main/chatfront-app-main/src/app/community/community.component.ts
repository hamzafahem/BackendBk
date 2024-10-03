import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { CommunityService } from '../community.service';

@Component({
  selector: 'app-community',
  templateUrl: './community.component.html',
  styleUrls: ['./community.component.scss']
})
export class CommunityComponent implements OnInit {
  communities: any[] = [];

  constructor(private communityService: CommunityService, private router: Router) {}

  ngOnInit() {
    this.communityService.communities$.subscribe(data => {
      this.communities = data;
    });
  }

  joinCommunity(community: any) {
    // Stocker les détails de la communauté dans le stockage local
    localStorage.setItem('selectedCommunity', JSON.stringify(community));

    // Redirection vers la page de chat
    this.router.navigate(['/chat']);
  }
}
