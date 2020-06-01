#!/usr/bin/perl -w

use FRDCSA::BehaviorTreeStarterKit::Sequence;

use lib ".";

use Task;

use Data::Dumper;

my $sequencenode = FRDCSA::BehaviorTreeStarterKit::Sequence->new();

foreach my $task (qw(goto_door open_door walk_through_door close_door)) {
  my $tasknode = Task->new
    (

    );
  $sequencenode->addChild(Child => $tasknode);
}

print Dumper({SequenceNode => $sequencenode});
while (1) {
  $sequencenode->tick();
  print Dumper({SequenceNode => $sequencenode});
}
