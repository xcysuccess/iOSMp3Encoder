//
//  ViewController.m
//  Mp3Encoder
//
//  Created by tomxiang on 2018/9/12.
//  Copyright © 2018年 tomxiang. All rights reserved.
//

#import "ViewController.h"
#import "FileCommonUtil.h"
#import "mp3encoder.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *labelShow;
@property (weak, nonatomic) IBOutlet UIButton *buttonEncode;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonEncodeClick:(UIButton *)sender {
    self.labelShow.text = @"Start Encode...";
    
    Mp3Encoder *encoder = new Mp3Encoder();

    const char *pcmFilePath = [[FileCommonUtil bundlePath:@"vocal.pcm"] cStringUsingEncoding:NSUTF8StringEncoding];
    const char *mp3FilePath = [[FileCommonUtil documentsPath:@"vocal.mp3"] cStringUsingEncoding:NSUTF8StringEncoding];
    
    printf("存储地址:%s",mp3FilePath);
    int sampleRate = 44100;
    int channels = 2;
    int bitRate = 128 * 1024;
    
    encoder->Init(pcmFilePath, mp3FilePath, sampleRate, channels, bitRate);
    encoder->Encode();
    encoder->Destory();
    
    delete encoder;
    
    self.labelShow.text = @"Encoder Success";
    
}


@end
