/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

/**
 *
 * @author alemol
 */
public class matrizMag {
    private int[][] matriz;
    private int dimension ;

    public matrizMag(int tam) {
        super();
        if(tam%2 == 0){
            System.out.println("Número par, lo incremento en 1 ");
            tam++;
        }
        this.matriz = new int [tam][tam];
        this.dimension = tam;
        ceros();
        rellenarMatriz();
    }

    public int getDimension() {
        return dimension;
    }

    public int[][] getMatriz() {
        return matriz;
    }
    
    public void ceros(){
        for (int i=0;i<matriz.length;i++){
            for(int j=0;j<matriz.length;j++){
                this.matriz[i][j]=0;
            }
        }
    }
    
    public void rellenarMatriz(){
        int c=dimension/2;
        int f=0;
        int ci=0, fi=0;

        this.matriz[f][c]=1;

        for(int i=2;i<=dimension*dimension;i++){
            if (f-1<0){
                f=dimension-1;
            }else{
                f=f-1;
            }
            if (c+1>dimension-1){
                c=0;
            }else{
                c=c+1;
            }
            if (this.matriz[f][c]==0){
                this.matriz[f][c]=i;
                fi=f;ci=c;//guardamos la ultima posicion rellenada
            } else{
                f=fi+1;c=ci;//recuperamos la ultima posicion rellenada
                this.matriz[f][c]=i;
            }
        }

    }
    
    
}
