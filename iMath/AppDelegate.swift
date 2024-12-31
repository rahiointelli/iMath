//
//  AppDelegate.swift
//  iEduGame
//
//  Created by Intelli on 2021-09-22.
//

import UIKit
import CoreData

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var arSmartScore : [Int] = []
    var arTotalQuestions : [Int] = []
    var arCorrectAnswers : [Int] = []
    var arTimeSpent : [Int] = []
    //var arLevel = 1
    let constlevelChangeRange = 190 //150 //25//20//100
    //var levelChangeRange = 220

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
//        if UserDefaults.standard.value(forKey: "GameLevel") != nil
//        {
//            self.arLevel = UserDefaults.standard.integer(forKey: "GameLevel")
//        }
        
        if UserDefaults.standard.value(forKey: "GameSound") != nil && UserDefaults.standard.bool(forKey: "GameSound") == false
        {
            MusicPlayer.shared.isSoundOn = false
        }
        else
        {
            if UserDefaults.standard.value(forKey: "GameSound") != nil
            {
                
            }
            else
            {
                UserDefaults.standard.setValue(true, forKey: "GameSound")
                UserDefaults.standard.synchronize()
            }
            
            MusicPlayer.shared.isSoundOn = true
        }
        
        if UserDefaults.standard.value(forKey: "GameBgMusicSound") != nil && UserDefaults.standard.bool(forKey: "GameBgMusicSound") == false
        {
            MusicPlayer.shared.isMusicPlaying = false
        }
        else
        {
            if UserDefaults.standard.value(forKey: "GameBgMusicSound") != nil
            {
                
            }
            else
            {
                UserDefaults.standard.setValue(true, forKey: "GameBgMusicSound")
                UserDefaults.standard.synchronize()
            }
          //  MusicPlayer.shared.isMusicPlaying = true
            MusicPlayer.shared.startBackgroundMusic(backgroundMusicFileName : "bg_music")
        }
                
        return true
    }

    // MARK: UISceneSession Lifecycle

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        // Saves changes in the application's managed object context before the application terminates.
        self.saveContext()
    }
    
    lazy var persistentContainer: NSPersistentContainer = {
        /*
         The persistent container for the application. This implementation
         creates and returns a container, having loaded the store for the
         application to it. This property is optional since there are legitimate
         error conditions that could cause the creation of the store to fail.
        */
        let container = NSPersistentContainer(name: "iEduGame")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                 
                /*
                 Typical reasons for an error here include:
                 * The parent directory does not exist, cannot be created, or disallows writing.
                 * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                 * The device is out of space.
                 * The store could not be migrated to the current model version.
                 Check the error message to determine what the actual problem was.
                 */
                print("Unresolved error \(error), \(error.userInfo)")
                //fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()

    // MARK: - Core Data Saving support

    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nserror = error as NSError
                print("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
    func retrieveData(game : String) {
               
        self.arSmartScore.removeAll()
        self.arCorrectAnswers.removeAll()
        self.arTotalQuestions.removeAll()
        self.arTimeSpent.removeAll()
        //We need to create a context from this container
        let managedContext = self.persistentContainer.viewContext
        
        //Prepare the request of type NSFetchRequest  for the entity
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Game")
        
//        fetchRequest.fetchLimit = 1
        if(game.count > 0)
        {
            fetchRequest.predicate = NSPredicate(format: "game = %@", game)
        }
//        fetchRequest.sortDescriptors = [NSSortDescriptor.init(key: "email", ascending: false)]
//
        do {
            let result = try managedContext.fetch(fetchRequest)
            for data in result as! [NSManagedObject] {
               // print(data.value(forKey: "smartScore")!)
                self.arSmartScore.append(data.value(forKey: "smartScore") as! Int)
                self.arCorrectAnswers.append(data.value(forKey: "correctAnswers") as! Int)
                self.arTotalQuestions.append(data.value(forKey: "totalQuestions") as! Int)
                self.arTimeSpent.append(data.value(forKey: "totalTimeSpent") as! Int)
            }
            
        } catch {
            
            print("Failed")
        }
    }


}

