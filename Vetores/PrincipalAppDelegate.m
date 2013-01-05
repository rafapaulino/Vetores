//
//  PrincipalAppDelegate.m
//  Vetores
//
//  Created by Rafael Brigagão Paulino on 21/08/12.
//  Copyright (c) 2012 Rafael Brigagão Paulino. All rights reserved.
//

#import "PrincipalAppDelegate.h"

@implementation PrincipalAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    NSString *texto = [[NSString alloc] init];
    
    /*
      [texto retain];
      [texto release];
      nao precisamos lidar com retain e release pq estamos usando o ARC
      no momento que nos perdemos as referencias o objeto morre
    */
    
    //vetores - array
    NSArray *listaNomes;
    
    listaNomes = [[NSArray alloc] init];
    
    //NSarray e um vetor estatico ou seja depois que eu criei com alloc/init, nao consigo mais muda-lo
    
    NSArray *meusParentes = [[NSArray alloc] initWithObjects:@"Joao",@"Marlene",@"Rafael", nil];
    //USANDO UM CONTRUTOR  DA CLASSE nsaRRAY E PASSANdo uma lista de NSStrings para serem aramazendaas
    
    //o nil no final da lista indica que ela acabou (sentinela)
    
    //como acessar as informacoes de um array
    //description e uma string que representa o objeto print_r()
    NSLog(@"Dericao do vetor: %@", meusParentes.description);
    
    //como acessar uma posicao especfica do vetor
    NSString *posicaoAcessada = [meusParentes objectAtIndex:1];
    
    NSLog(@"Pessoa consultada: %@", posicaoAcessada);
    
    //NSMutableArray permite alteracoes apos sua criacao
    NSMutableArray *listaAlunos = [[NSMutableArray alloc] init];
    
    //adicionando o objeto ao array
    [listaAlunos addObject:@"Gustavo"];
    [listaAlunos addObject:@"Rafael"];
    [listaAlunos addObject:@"Viviane"];
    
    //adicionando o aluno
    [listaAlunos insertObject:@"Eduardo" atIndex:1];
    
    NSLog(@"Lista alunos: %@", listaAlunos.description);
    
    //mude o item do array pelo index dele
    [listaAlunos replaceObjectAtIndex:0 withObject:@"Fernando"];
    
    NSLog(@"Lista alunos: %@", listaAlunos.description);
    
    [listaAlunos removeObjectAtIndex:0]; //remove pelo indice
    
    NSLog(@"Lista alunos: %@", listaAlunos.description);
    
    NSMutableArray *listaNumeros = [[NSMutableArray alloc] init];
    
    NSNumber *numero1 = [NSNumber numberWithInt:20];
    NSNumber *numero2 = [NSNumber numberWithInt:40];
    NSNumber *numero3 = [NSNumber numberWithInt:60];
    NSNumber *numero4 = [NSNumber numberWithInt:80];
    
    [listaNumeros addObject:numero1];
    [listaNumeros addObject:numero2];
    [listaNumeros addObject:numero3];
    [listaNumeros addObject:numero4];
    
    NSLog(@"Lista numeros: %@", listaNumeros.description);
    
    
    /*
     NSMutableArray *listaNumeros2 = [[NSMutableArray alloc] init];
    
    NSNumber *n = [NSNumber numberWithInt:0];
    NSNumber *n2 = [NSNumber numberWithInt:4];
    
    while (n<n2) {
        
        NSNumber *numero[n] = [NSNumber numberWithInt:n];
        [listaNumeros2 addObject:numero[n]];
        n++;
        
    }
    NSLog(@"Lista numeros2: %@", listaNumeros2.description);
    
    while (n<n2) {
        NSLog(@"Lista numeros: %@", listaNumeros.description);
        n + 1;
    }*/
    
    
    
    
    
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
