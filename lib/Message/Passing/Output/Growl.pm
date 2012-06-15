package Message::Passing::Output::Growl;
use Moose;
use Mac::Growl;
use namespace::autoclean;

sub BUILD {
    my ($self) = @_;
    my @names = (ref($self));
    my $as_app = 'GrowlHelperApp.app';

    Mac::Growl::RegisterNotifications($as_app, \@names, [$names[0]], $as_app);
}

sub consume {
    my ($self, $message) = @_;
    my @names = (ref($self));
    my $as_app = 'GrowlHelperApp.app';
    Mac::Growl::PostNotification($as_app, $names[0], '', $payload, $self->sticky, 1);
}

__PACKAGE__->meta->make_immutable;
1;

