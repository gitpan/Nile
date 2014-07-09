#	Copyright Infomation
#=========================================================#
#	Module	:	Nile::Plugin::Home::Home
#	Author		:	Dr. Ahmed Amin Elsheshtawy, Ph.D.
#	Website	:	https://github.com/mewsoft/Nile, http://www.mewsoft.com
#	Email		:	mewsoft@cpan.org, support@mewsoft.com
#	Copyrights (c) 2014-2015 Mewsoft Corp. All rights reserved.
#=========================================================#
package Nile::Plugin::Home::Home;

use Nile::Base;
#=========================================================#
sub home  : GET Action {
	
	my ($self) = @_;
	
	my $me = $self->me;

	my $view = $me->view("home");
	
	$view->var(
			fname			=>	'Ahmed',
			lname			=>	'Elsheshtawy',
			email			=>	'sales@mewsoft.com',
			website		=>	'http://www.mewsoft.com',
			singleline		=>	'Single line variable <b>Good</b>',
			multiline		=>	'Multi line variable <b>Nice</b>',
		);
	
	#$view->block;
	
	#my $var = $view->block();
	#say "keys: ". keys %$var;
	#$view->parse;
	#say "blocks dump: " . $me->dump($view->block());

	#say "block: " . $me->dump($view->block("first/second/third/fourth/fifth"));
	#$view->block("first/second/third/fourth/fifth", "Block Modified ");
	#say "block: " . $me->dump($view->block("first/second/third/fourth/fifth"));

	$view->block("first", "1st Block New Content ");
	$view->block("six", "6th Block New Content ");

	#say "dump: " . $me->dump($view->block->{first}->{second}->{third}->{fourth}->{fifth});
	
	$view->show;
	#$view->process;
	#$view->render;

}
#=========================================================#

1;