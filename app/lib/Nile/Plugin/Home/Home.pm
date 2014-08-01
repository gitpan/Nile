#	Copyright Infomation
#=========================================================#
#	Module	:	Nile::Plugin::Home::Home
#	Author		:	Dr. Ahmed Amin Elsheshtawy, Ph.D.
#	Website	:	https://github.com/mewsoft/Nile, http://www.mewsoft.com
#	Email		:	mewsoft@cpan.org, support@mewsoft.com
#	Copyrights (c) 2014-2015 Mewsoft Corp. All rights reserved.
#=========================================================#
package Nile::Plugin::Home::Home;

our $VERSION = '0.30';

use Nile::Base;
#=========================================================#
# plugin action, return content. url is routed direct or from routes files. url: /home
sub home : GET Action {
	
	my ($self, $me) = @_;
	
	# $me is set to the application context object, same as $self->me inside any method
	#my $me = $self->me;

	my $view = $me->view("home");
	
	$view->var(
		fname			=>	'Ahmed',
		lname			=>	'Elsheshtawy',
		email			=>	'sales@mewsoft.com',
		website		=>	'http://www.mewsoft.com',
		singleline		=>	'Single line variable <b>Good</b>',
		multiline		=>	'Multi line variable <b>Nice</b>',
	);
	
	#my $var = $view->block();
	#say "block: " . $me->dump($view->block("first/second/third/fourth/fifth"));
	#$view->block("first/second/third/fourth/fifth", "Block Modified ");
	#say "block: " . $me->dump($view->block("first/second/third/fourth/fifth"));

	$view->block("first", "1st Block New Content ");
	$view->block("six", "6th Block New Content ");

	#say "dump: " . $me->dump($view->block->{first}->{second}->{third}->{fourth}->{fifth});
	
	return $view->out;

	#$view->show;
	#$view->process;
	#$view->render;
}
#=========================================================#
# run action and capture print statements, no returns. url: /home/news
sub news: GET Capture {

	my ($self, $me) = @_;

	say qq{Hello world. This content is captured from print statements. The action must be marked by 'Capture' attribute. No returns.};

}
#=========================================================#

=pod

=head1 Bugs

This project is available on github at L<https://github.com/mewsoft/Nile>.

=head1 HOMEPAGE

Please visit the project's homepage at L<https://metacpan.org/release/Nile>.

=head1 SOURCE

Source repository is at L<https://github.com/mewsoft/Nile>.

=head1 SEE ALSO

See L<Nile> for details about the complete framework.

=head1 AUTHOR

Ahmed Amin Elsheshtawy,  احمد امين الششتاوى <mewsoft@cpan.org>
Website: http://www.mewsoft.com

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2014-2015 by Dr. Ahmed Amin Elsheshtawy احمد امين الششتاوى mewsoft@cpan.org, support@mewsoft.com,
L<https://github.com/mewsoft/Nile>, L<http://www.mewsoft.com>

This library is free software; you can redistribute it and/or modify it under the same terms as Perl itself.

=cut

1;
