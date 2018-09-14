//
//  mp3encoder.h
//  Mp3Encoder
//
//  Created by tomxiang on 2018/9/12.
//  Copyright © 2018年 tomxiang. All rights reserved.
//

#ifndef mp3encoder_h
#define mp3encoder_h

#include <stdio.h>
#include "lame.h"

class Mp3Encoder {
private:
    FILE *pcmFile;
    FILE *mp3File;
    lame_t lameClient;
    
public:
    Mp3Encoder();
    ~Mp3Encoder();
    
    int Init(const char* pcmFilePath, const char *mp3FilePath, int sampleRate, int channels, int bitRate);
    void Encode();
    void Destory();
    
};


#endif /* mp3encoder_hpp */
