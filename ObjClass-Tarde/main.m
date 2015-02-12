//
//  main.m
//  ObjClass-Tarde
//
//  Created by Mauricio Meirelles on 2/12/15.
//  Copyright (c) 2015 BEPiD. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        //Variáveis Primitivas
        char caracter[2] = "a";
        short numeroPequeno = 16;
        int numeroInteiro = 32;
        long numeroLongo;
        numeroLongo = 64;
        NSInteger numeroInteger = 666;
        float numeroReal = 31.5;
        double numeroPreciso = 31.55555;
        
        //Console
        NSLog(@"--- ObjC Tarde ---");
        NSLog(@"Caracter: %s", caracter);
        NSLog(@"Numero Pequeno: %d", numeroPequeno);
        NSLog(@"Numero Inteiro: %d", numeroInteiro);
        NSLog(@"Numero Longo: %ld", numeroLongo);
        NSLog(@"Numero Real: %.2f", numeroReal);
        NSLog(@"Numero Preciso: %.0f", numeroPreciso);
        
        //BOOL
        BOOL teste = YES;
        if (teste)
        {
            NSLog(@"Teste = %d", teste);
        }
        
        //Numero (Objeto)
        NSNumber *numero = [[NSNumber alloc] initWithInt:27];
        numero = @(27.5);
        
        NSLog(@"Numero Objeto: %@", numero);
        
        
        //Strings
        NSString *nome = @"Fulano";
        NSLog(@"Nome: %@",nome);
        nome = [nome stringByAppendingString:@" Da Silva"];
        NSLog(@"Nome Completo: %@",nome);

        
        //Array
        NSArray *vetorSimples = [[NSArray alloc] initWithObjects:@1,@2,@3, nil];
        vetorSimples = @[@1,@2,@3,@4];
        
        NSLog(@"Array Simples: %@",vetorSimples);
        
        
        //Array mutável
        NSMutableArray *vetorMutavel = [[NSMutableArray alloc] init];
        [vetorMutavel addObject:@1];
        [vetorMutavel addObject:@"Teste"];
        
        [vetorMutavel insertObject:@5 atIndex:1];
        
        NSLog(@"Vetor Mutável: %@",vetorMutavel);
        
        
        //id
        id idTest = @"Test";
        if([idTest isKindOfClass:[NSMutableArray class]])
        {
          [idTest addObject:@"obj1"];
        }
        
        //NSSet
        //NSCountedSet
        
        //Dicionário
        NSDictionary *dicionarioSimples = [[NSDictionary alloc] initWithObjectsAndKeys:@1, @"numero 1",@2, @"numero 2", nil];
        
//        dicionarioSimples = @{@3:@"numero 1"};
        NSLog(@"Dicionario Simples: %@", dicionarioSimples);
        NSLog(@"Dicionario Key 1: %@", dicionarioSimples[@"numero 1"]);

        
        //Dicionário Mutável
        NSMutableDictionary *dicionarioMutavel = [[NSMutableDictionary alloc] init];
        
        [dicionarioMutavel setObject:@1
                              forKey:@"numero 1"];
        
        NSLog(@"Dicionario Mutável: %@", dicionarioMutavel);
        
        
        //nil
        NSString *strAux;
        [strAux description];
        
        
        NSMutableArray *arrayMutable = [[NSMutableArray alloc] init];
        [arrayMutable addObject:@"teste"];
//        [arrayMutable addObject:nil];
        [arrayMutable addObject:[NSNull null]];

    
        NSLog(@"Array %ld", arrayMutable.count);
        
        
        
        NSMutableArray *arrayTamQuatro = [[NSMutableArray alloc] initWithCapacity:4];
        
        NSLog(@"Array Quatro: %@", arrayTamQuatro);

        
        NSMutableArray *arrayMut = [vetorSimples mutableCopy];
        NSLog(@"Array Simples Mut: %@", arrayMut);

        
    }
    return 0;
}






