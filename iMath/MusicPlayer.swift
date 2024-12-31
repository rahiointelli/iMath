//
//  MusicPlayer.swift
//  iEduGame
//
//  Created by Intelli on 2022-03-02.
//

import Foundation
import AVFoundation

class MusicPlayer : NSObject, AVAudioPlayerDelegate
{
    static let shared = MusicPlayer()
    var audioPlayer: AVAudioPlayer?
    var isMusicPlaying = false
    var isSoundOn = false
    var MusicVolume = 0.5
    var currentBgFileName = ""

    func startBackgroundMusic(backgroundMusicFileName: String) {
        if let bundle = Bundle.main.path(forResource: backgroundMusicFileName, ofType: "mp3") {
            let backgroundMusic = NSURL(fileURLWithPath: bundle)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf:backgroundMusic as URL)
                guard let audioPlayer = audioPlayer else { return }
                audioPlayer.numberOfLoops = -1
                audioPlayer.prepareToPlay()
                audioPlayer.play()
                self.currentBgFileName = backgroundMusicFileName
                MusicPlayer.shared.isMusicPlaying = true
            } catch {
                print(error)
            }
        }
    }
    
    func stopBackgroundMusic() {
        guard let audioPlayer = audioPlayer else { return }
        audioPlayer.stop()
        MusicPlayer.shared.isMusicPlaying = false
    }
    
    func setMusicVolume(val : Float)
    {
        guard let audioPlayer = audioPlayer else { return }
        audioPlayer.setVolume(val, fadeDuration: 0)
    }
    
    func playSoundEffect(soundEffect: String) {
        if let bundle = Bundle.main.path(forResource: soundEffect, ofType: "mp3") {
            let soundEffectUrl = NSURL(fileURLWithPath: bundle)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf:soundEffectUrl as URL)
                audioPlayer?.delegate = self
                guard let audioPlayer = audioPlayer else { return }
                audioPlayer.play()
            } catch {
                print(error)
            }
        }
    }
    
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        if(MusicPlayer.shared.isMusicPlaying)
        {
            MusicPlayer.shared.startBackgroundMusic(backgroundMusicFileName : self.currentBgFileName)
        }
    }
    
}
