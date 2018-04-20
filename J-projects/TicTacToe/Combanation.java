public class Combonation{
		private endPos;

		public void Win implements End{ // checks to see if it won 
			if(O=3 in a row){
				return win;
			}
		}
		public void Tie implements End{ // checks to see if it tied 
			if(O!=3 in a row && X!=3 in a row){
				return tie;
			}
		}
		public void Lose implements End{ // checks to see if it lost 
			if(X=3 in a row){
				return lose;
			}
		}
	}