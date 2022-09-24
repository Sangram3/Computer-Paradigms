import java.util.Scanner;
class TicTacToe
{
    static class pair
    {
        int first;
        int second;
    };
    static void printGrid(char grid[][])
    {
        for(int i =0;i<3;i++)
        {
            for(int j = 0;j<3;j++)
            {
                System.out.print(grid[i][j]+" ");
            }
            System.out.print("\n");
        }
    }
    static void UpdateGrid(char grid[][],int row,int col,int player)
    {
        if(player == 1)
        {
            grid[row][col] = 'X';
        }
        else{
            grid[row][col] = 'O';
        }
    }
    static void updateGrid(int turn,char grid[][],int player)
    {
        if(player == 1)
        {
            if(turn == 1)  grid[0][0] = 'X';
            if(turn == 2)  grid[0][1] = 'X';
            if(turn == 3)  grid[0][2] = 'X';
            
            if(turn == 4)  grid[1][0] = 'X';
            if(turn == 5)  grid[1][1] = 'X';
            if(turn == 6)  grid[1][2] = 'X';
            
            if(turn == 7)  grid[2][0] = 'X';
            if(turn == 8)  grid[2][1] = 'X';
            if(turn == 9)  grid[2][2] = 'X';
        }
        else
        {
            if(turn == 1)  grid[0][0] = 'O';
            if(turn == 2)  grid[0][1] = 'O';
            if(turn == 3)  grid[0][2] = 'O';
            
            if(turn == 4)  grid[1][0] = 'O';
            if(turn == 5)  grid[1][1] = 'O';
            if(turn == 6)  grid[1][2] = 'O';
            
            if(turn == 7)  grid[2][0] = 'O';
            if(turn == 8)  grid[2][1] = 'O';
            if(turn == 9)  grid[2][2] = 'O';
        }
        
    }
    static int isMoveLeft(char grid[][])
    {
        for (int i =0;i<3;i++)
        {
            for(int j = 0;j<3;j++)
            {
                if(grid[i][j] == '_') return 1;
            }
        }
        return 0;
    }
    static int Max(int a,int b)
    {
        if(a>b) return a;
        else return b;
    }
    static int Min(int a,int b)
    {
        if(a<b) return a;
        else return b;
    }
    static int evaluateGrid(char grid[][])
    {
        for(int i = 0;i<3;i++)
        {
            if(grid[i][0] == grid[i][1] && grid[i][0] == grid[i][2])
            {
                if(grid[i][0] == 'X') return 10;
                else return -10;
            }
        }
        for(int i = 0;i<3;i++)
        {
            if(grid[0][i] == grid[1][i] && grid[0][i] == grid[2][i])
            {
                if(grid[0][i] == 'X') return 10;
                else return -10;
            }
        }
        if(grid[0][0] == grid[1][1] && grid[1][1] == grid[2][2])
        {
            if(grid[0][0] == 'X') return 10;
            else return -10;
        }
        
        if(grid[0][2] == grid[1][1] && grid[1][1] == grid[2][0])
        {
            if(grid[0][2] == 'X') return 10;
            else return -10;
        }
        return 0;
    }
    
    static int miniMax(char grid[][],int depth,int isMax)
    {
        int score = evaluateGrid(grid);
        if(score == 10 )return score - depth;
        if(score == -10) return score+depth;
        if(isMoveLeft(grid) == 0) return 0;
        if(isMax == 1)
        {
            score = -1000;
            for(int i = 0;i<3;i++)
            {
                for(int j = 0;j<3;j++)
                {
                    if(grid[i][j] == '_') // if Grid cell is empty
                    {
                        grid[i][j] = 'X';
                        score = Max( score, miniMax(grid,depth + 1,0) );
                        grid[i][j] = '_';
                    }
                }
            }
            return score;
        }
        else
        {
            score = 1000;
            for(int i = 0;i<3;i++)
            {
                for(int j = 0;j<3;j++)
                {
                    if(grid[i][j] == '_') // if Grid cell is empty
                    {
                        grid[i][j] = 'O';
                        score = Min( score, miniMax(grid,depth + 1,1) );
                        grid[i][j] = '_';
                    }
                }
            }
            return score;
        }
        
    }
    static pair Best(char grid[][])
    {
        int score = -1000;
        pair pa = new pair();
        pa.first = -1;
        pa.second = -1;
        
        
        for(int i = 0;i<3;i++)
        {
            for(int j =0;j<3;j++)
            {
                if(grid[i][j] == '_')
                {
                    grid[i][j] = 'X';
                    int value = miniMax(grid,0,0);
                    grid[i][j] = '_';
                    if(value>score)
                    {
                        pa.first = i;
                        pa.second = j;
                        score = value;
                    }
                }
            }
        }
        return pa;
        
    }
	public static void main (String[] args) throws java.lang.Exception
	{
	    Scanner input = new Scanner(System.in);  
	    System.out.println("Welcome to the Tic Tac Toe Game !");
	    System.out.println("Enter 1 to play Computer vs. Player Version ");
	    System.out.println("Enter 2 to play Two Player Version ");
	    
        int version = input.nextInt();
        if(version == 1)
        {
            System.out.println("You have entered 1,One Player Version !");
	    System.out.println("This is New Game. Cell numbers are as follows");
            System.out.println("(0,0) | (0,1) | (0,2) | ");
            System.out.println("(1,0) | (1,1) | (1,2) | ");
            System.out.println("(2,0) | (2,1) | (2,2) | ");
	    System.out.println("Computer: O, You: X"); 
            
            char [][]grid = {{'_','_','_'},{'_','_','_'},{'_','_','_' }};
            
            int cnt = 0;
            int flag = 0;
            int winner = 0;
            int [][]vis = {{0,0,0},{0,0,0},{0,0,0}};
            int [][]player= {{0,0,0},{0,0,0},{0,0,0}};
            int [][]pc= {{0,0,0},{0,0,0},{0,0,0}};
            while(cnt < 9) 
            {
                int row;
                int col;
                if(flag == 0) 
                {
                    System.out.println("please enter the row number[0:2] : ");
                    row = input.nextInt();
                    
                    System.out.println("please enter the column number[0:2] : ");
                    col = input.nextInt();
                    
                    if(row<=2 && row>=0 && col <=2 && col>=0)
                    {
                        
                        
                        if(vis[row][col] == 1)
                        {
                            System.out.println("This cell is already occupied ,Please choose another cell !");
                        }
                        
                        else
                        {
                            
                            vis[row][col] = 1;
                            cnt+=1;
                          
                            flag = 1;
                            player[row][col] = 1;
                            UpdateGrid(grid,row,col,1);
                            if( (player[0][0] == 1 && player[1][0] == 1 && player[2][0] == 1) || (player[0][0] ==1 && player[0][1] == 1 && player[0][2] == 1) || (player[0][0] ==1 && player[1][1] == 1 && player[2][2] == 1) || (player[0][2] ==1 && player[1][1] == 1 && player[2][0] == 1) || (player[2][2] ==1 && player[2][1] == 1 && player[2][0] == 1)|| (player[0][2] ==1 && player[1][2] == 1 && player[2][2] == 1)||(player[0][1] == 1 && player[1][1] == 1&& player[2][1] == 1) || (player[1][0] == 1&& player[1][1] == 1&& player[1][2] == 1))
                            {
                                winner = 1;
                                
                                cnt = 9;
                            }
                      
                        }
                    }
                    else
                    {
                        System.out.println("Your input is out of boud please give another input !!! ")    ;
                    }
                }
                else 
                {
                    flag = 0;
                    pair bm = Best(grid);
                    int rr = bm.first;
                    int cc = bm.second;
                    System.out.println("Computer chose the cell (" + rr + "," + cc  + ")");
                    pc[rr][cc] = 1;
                    UpdateGrid(grid,rr,cc,2);
                    vis[rr][cc] = 1;
                    if( (pc[0][0] == 1 && pc[1][0] == 1 && pc[2][0] == 1) || (pc[0][0] ==1 && pc[0][1] == 1 && pc[0][2] == 1) || (pc[0][0] ==1 && pc[1][1] == 1 && pc[2][2] == 1) || (pc[0][2] ==1 && pc[1][1] == 1 && pc[2][0] == 1) || (pc[2][2] ==1 && pc[2][1] == 1 && pc[2][0] == 1)|| (pc[0][2] ==1 & pc[1][2] == 1 && pc[2][2] == 1)||(pc[0][1] == 1 && pc[1][1] == 1&& pc[2][1] == 1) || (pc[1][0] == 1&& pc[1][1] == 1&& pc[1][2] == 1))
                    {
                        winner = 2;
                        cnt = 9;
                    }
                }
                System.out.println("Current Grid is as follows ");
                printGrid(grid);
            }
            if(winner == 1)
            {
                System.out.println("You Won The Game !!!");
            }
            else if(winner == 2)
            {
                System.out.println("Computer Won The Game !!!");
            }
            else
            {
                System.out.println("Game is Draw !!!") ;
            }
            
        }
        else
        {
        
            System.out.println("You have entered 2, Two Player version !");
            System.out.println("This is New Game. Cell numbers are as follows");
            System.out.println("1 | 2 | 3 | ");
            System.out.println("4 | 5 | 6 | ");
            System.out.println("7 | 8 | 9 | "); 
            
            char [][]grid = {{'_','_','_'},{'_','_','_'},{'_','_','_' }};
            
            int cnt = 0;
            int flag = 0;
            int winner  = 0;
            int vis[]     = {0,0,0,0,0,0,0,0,0,0};
            int player1[] = {0,0,0,0,0,0,0,0,0,0};
            int player2[] = {0,0,0,0,0,0,0,0,0,0};
        
            while(cnt < 9) 
            {
                if(flag == 0) System.out.println("Player 1 Enter your desired location [1-9] : ");
                else  System.out.println("Player 2 Enter your desired location [1-9] : ");
                int turn = input.nextInt();
                if(turn<=9 && turn>=1)
                {
                    
                    if(vis[turn] == 1)
                    {
                        System.out.println("This cell is already occupied ,Please choose another cell !");
                    }
                    else{
                        vis[turn] = 1;
                        cnt+=1;
                        if(flag ==0) 
                        {
                            flag = 1;
                            player1[turn] = 1;
                            updateGrid(turn,grid,1);
                            if( (player1[1] ==1 && player1[4] == 1 && player1[7] == 1) || (player1[1] ==1 && player1[2] == 1 && player1[3] == 1) || (player1[1] ==1 && player1[5] == 1 && player1[9] == 1) || (player1[3] ==1 && player1[6] == 1 && player1[9] == 1) || (player1[9] ==1 && player1[8] == 1 && player1[7] == 1)|| (player1[3] ==1 && player1[5] == 1 && player1[7] == 1)||(player1[2] == 1 && player1[5] == 1&& player1[8] == 1) || (player1[4] == 1 && player1[5] == 1 && player1[6] == 1))
                            {
                                winner = 1;
                                cnt = 9;
                            }
                        }
                        else 
                        {
                            flag = 0;
                            
                            player2[turn] = 1;
                            updateGrid(turn,grid,2);
                            if( (player2[1] ==1 && player2[4] == 1 && player2[7] == 1) || (player2[1] ==1 && player2[2] == 1 && player2[3] == 1) || (player2[1] ==1 && player2[5] == 1 && player2[9] == 1) || (player2[3] ==1 && player2[6] == 1 && player2[9] == 1) || (player2[9] ==1 && player2[8] == 1 && player2[7] == 1)|| (player2[3] ==1 && player2[5] == 1 && player2[7] == 1)||(player2[2] == 1 && player2[5] == 1 && player2[8] == 1) || (player2[4] == 1 && player2[5] == 1 && player2[6] == 1))
                            {
                                winner = 2;
                                cnt = 9;
                            }
                        }
                    }
                    System.out.println("Current Grid is as follows ");
                    printGrid(grid);
                }
                else{
                    System.out.println("Your input is out of bound please give another input !!! ");
                }
            }
            if(winner == 1)
            {
                System.out.println("Winner is Player 1 !!!");
            }
            else if(winner == 2)
            {
                System.out.println("Winner is Player 2 !!!");
            }
            else
            {
                System.out.println("Game is Draw !!!") ;
            }
    	}
	}
}
// ||(player[0][1] == 1 && player[1][1] == 1&& player[2][1]) || (player[1][0] == 1&& player[1][1] == 1&& player[1][2])
// ||(pc[0][1] == 1 && pc[1][1] == 1&& pc[2][1]) || (pc[1][0] == 1&& pc[1][1] == 1&& pc[1][2])
// ||(player1[2] == 1 && player1[5] == 1&& player1[7]) || (player1[4] == 1&& player1[5] == 1&& player1[6])
// ||(player2[2] == 1 && player2[5] == 1&& player2[7]) || (player2[4] == 1&& player2[5] == 1&& player2[6])