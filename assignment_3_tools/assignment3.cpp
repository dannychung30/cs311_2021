
// Prisoner's Dilemma Strategy
// my_strategy = Tit for Tat (return the same move as the opponent did in their previous turn)
#include <iostream>
#include <string>
//#include <iomanip>
#include <stack>
#include <vector>
using namespace std;

int main(int argc, char* last_opponent_move[])
{
    vector<string> choice;
    stack<string> last_opponent_moves; // stack of opponent's previous moves
    stack<string> my_moves; // stack of all my previous moves

    
    // first iteration of game will have "zero" passed through as opponent's move
    //
    // tit for tat strategy
    if (argc >= 2)
    {
        if (string(last_opponent_move[2]) == "confess")
        {
            // prints out "confess" if last opponent's move was "confess"
            last_opponent_moves.push(last_opponent_move[2]);
            my_moves.push(string(last_opponent_move[2]));
            cout << my_moves.top() << endl;
        }
        else if (string(last_opponent_move[2]) == "silent")
        {
            // prints out "silent" if last opponent's move was "silent"
            last_opponent_moves.push(last_opponent_move[2]);
            my_moves.push(string(last_opponent_move[2]));
            cout << my_moves.top() << endl;
            
        }
        else if (string(last_opponent_move[2]) == "zero")
        {
            // output "silent" if opponent's move was "zero"
            // should only run on first iteration of the game
            choice.push_back("silent");
            for (int i = 0; i < choice.size(); i++)
            {
                cout << choice[i] << endl;
            }
        }

    }
    if (argc < 2)
    {
        // outputs this message if neither "confess", "silent", or "zero" are not inputed
        // into the command line prompt
        cout << "- DID NOT SPECIFY LAST OPPONENT MOVE IN COMMAND LINE PROMPT" << endl;
        cout << "- ENTER 'silent', 'confess', or 'zero' INTO COMMAND LINE AFTER ./assignment3" << endl;
    }
	
	return 0;
}



