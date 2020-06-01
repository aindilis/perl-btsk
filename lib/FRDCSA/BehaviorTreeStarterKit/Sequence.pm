package FRDCSA::BehaviorTreeStarterKit::Sequence;

use base 'FRDCSA::BehaviorTreeStarterKit::Composite';

use Data::Dumper;

use Class::MethodMaker
  new_with_init => 'new',
  get_set       =>
  [

   qw / m_CurrentChild /

  ];

=head1 NAME

FRDCSA::BehaviorTreeStarterKit::Sequence -

=head1 DESCRIPTION

Part of a pure-Perl behavior tree implementation.  Implemention based
on 'The Behavior Tree Starter Kit' (Chapter 6) by Alex J. Champandard
and Philip Dunstan, and the BTSK GitHub code.  Documentation
paraphrased.

=head1 SYNOPSIS


=head1 AUTHOR

Andrew John Dougherty

=head1 LICENSE

GPLv3

=item onInitialize()

=cut

sub onInitialize {
  my ($self,%args) = @_;
  $self->m_CurrentChild(0);
}

sub tick {
  my ($self,%args) = @_;
  $self->SUPER::tick();
}

=item update()

=cut

sub update {
  my ($self,%args) = @_;
  print "Sequence update\n";
  while (1) {

    my $status = $self->m_Children->[$self->m_CurrentChild]->tick();

    if ($status->{Status} ne 'BH_SUCCESS') {
      return $status;
    }

    $self->m_CurrentChild($self->m_CurrentChild + 1);
    if ($self->m_CurrentChild eq $self->size) {
      return
	{
	 Status => 'BH_SUCCESS',
	};
    }
  }
  return
    {
     Status => 'BH_INVALID',
    };
}

1;
