import { Component, OnInit, OnDestroy } from '@angular/core';

import { Observable } from 'rxjs/Observable';
import { scan } from 'rxjs/operators';

import { AiService } from '../../service/ai.service';
import { Message } from '../../model/message';

@Component({
  selector: 'app-ai',
  templateUrl: './ai.component.html',
  styleUrls: ['./ai.component.scss']
})
export class AiComponent implements OnInit, OnDestroy {
  allMessages: Observable<Message[]>;
  formInput: string;
  
  constructor(public ai: AiService) { 
    this.formInput = '';
  }
  
  ngOnInit() {
    this.allMessages = this.ai.conversation.asObservable()
    .pipe(
      scan((acc, val) => acc.concat(val))
    )
  }
  
  ngOnDestroy() {
    this.ai.destroyVoiceConversation();
  }
  
  sendMessageToBot() {
    this.ai.textConversation(this.formInput);
    this.formInput = '';
  }
  
  startTalkingToBot() {
    this.ai.voiceConversation()
    .subscribe(
      (value) => {
        this.formInput = value;
        // console.log(value);
      },
      (err) => {
        console.log(err);
        if (err.error  == "no-speech") {
          // console.log("Talking error");
          this.startTalkingToBot();
        }
      },
      () => {
        // console.log("Talking complete");
        this.startTalkingToBot();
      });
    }
  }
  