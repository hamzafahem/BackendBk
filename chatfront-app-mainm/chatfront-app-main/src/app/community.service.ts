import { Injectable } from '@angular/core';
import { BehaviorSubject } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class CommunityService {
  private communitiesSubject = new BehaviorSubject<any[]>([]);
  communities$ = this.communitiesSubject.asObservable();

  private communities: any[] = [];

  constructor() {
    // Initialiser avec des données fictives si nécessaire
    this.communities = [
      { name: 'Morocco IT', description: 'Tech discussions', image: 'assets/images/moroccoIT.png' },
      { name: 'Cybersecurity Experts Group', description: 'Cybersecurity talks', image: 'assets/images/secur.png' }
    ];
    this.communitiesSubject.next(this.communities);
  }

  addCommunity(community: any) {
    const newCommunity = {
      ...community,
      image: community.image ? URL.createObjectURL(community.image) : 'assets/images/default.png'
    };
    this.communities.push(newCommunity);
    this.communitiesSubject.next(this.communities);  // Émettre la liste mise à jour
  }
}
