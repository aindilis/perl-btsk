package FRDCSA::BehaviorTree::Filter;

use base 'FRDCSA::BehaviorTree::Sequence';

use Class::MethodMaker
  new_with_init => 'new',
  get_set       =>
  [

   qw / m_CurrentChild /

  ];

=head1 NAME

FRDCSA::BehaviorTree::Filter -

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

=cut

=item addCondition()

=cut

sub addCondition {
  my ($self,%args) = @_;
  unshift @{$self->m_Children}, $args{Condition};
  $self->m_CurrentChild($self->m_CurrentChild + 1);
}

=item addCondition()

=cut

sub addAction {
  my ($self,%args) = @_;
  push @{$self->m_Children}, $args{Action};
}

1;
