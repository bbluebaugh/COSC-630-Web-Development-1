use strict;
use warnings;

sub bubbleSort{
	print "Unsorted List: @_ \n";
	my $swap=1;	#swap is true
	
	while($swap){	#while the swap is true
		$swap = 0;	#swap is true
		for(my $i = 1; $i < @_; $i++){
			if($_[$i] < $_[$i-1]){
				$swap=1;	#swapping is true / sorting
				@_[$i,$i-1]=@_[$i-1,$i];
			}
		}
	}
	return @_;
}
my @arr = (10, -34, 119, 0, 55, 170, 100000, -5, -200, 20);
bubbleSort(@arr);
print "Sorted List: @arr \n";