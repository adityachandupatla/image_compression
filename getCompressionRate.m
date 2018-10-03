function K = getCompressionRate()
	fprintf('Select compression rate:\n1. High compression (You will sacrifice image quality)\n2. Low compression (You will retain most of the image quality)\n3. Specify compression parameters manually\n4. Quit\n\n');
    choice = input('Your choice: ');
	switch (choice)
  		case 1
    		K = 2;
    		break;
  		case 2
    		K = 6;
    		break;
    	case 3
    		K = input('Enter k value: ');
    		break;
    	case 4
    		fprintf('\nExiting...');
    		quit();
  		otherwise
    		fprintf('\nError! You must choose a valid choice. Using default compression rate.');
    		break;
	end
end