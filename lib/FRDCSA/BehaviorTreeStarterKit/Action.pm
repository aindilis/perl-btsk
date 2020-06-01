package FRDCSA::BehaviorTreeStarterKit::Action;

use base 'FRDCSA::BehaviorTreeStarterKit::Behavior';

use Class::MethodMaker
  new_with_init => 'new',
  get_set       =>
  [

   qw / /

  ];

=head1 NAME

FRDCSA::BehaviorTreeStarterKit::Action - Leaf nodes which interact
with the environment.

=head1 DESCRIPTION

Part of a pure-Perl behavior tree implementation.  Implemention based
on 'The Behavior Tree Starter Kit' (Chapter 6) by Alex J. Champandard
and Philip Dunstan, and the BTSK GitHub code.  Documentation
paraphrased.

=head1 SYNOPSIS

A class which inherits from FRDCSA::BehaviorTreeStarterKit::Behavior,
and allows one to implement action nodes which carry out interaction
with the blackboard and environment.

=head1 AUTHOR

Andrew John Dougherty

=head1 LICENSE

GPLv3

=cut

=item init()

One will need to interact with other compontents and objects to
instantiate.  One might have to access the blackboard, or execute some
side-effect.  Usually, you can pass extra params to interface with
these components.

=cut

1;
