package Task;

use base 'FRDCSA::BehaviorTreeStarterKit::Action';

sub tick {
  my ($self,%args) = @_;
  if ($self->m_eStatus eq 'BH_INVALID') {
    print "Starting Task node\n";
    $self->m_eStatus('BH_RUNNING');
  } elsif ($self->m_eStatus eq 'BH_RUNNING') {
    print "Finishing Task node\n";
    $self->m_eStatus('BH_SUCCESS');
  }
  $self->SUPER::tick();
}

1;
