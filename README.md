1. [perl-btsk](#perl-btsk)
2. [Original BTSK](#original-btsk)
3. [Overview](#overview)
4. [See Also](#see-also)

# perl-btsk
A transliteration (and perhaps extension) of the Behavior Tree Starter Kit (BTSK) to Perl.

# Original BTSK
https://github.com/aigamedev/btsk

# Overview
Note this code is not completed, I still have to write tests and
examples.

Perl-BTSK has been transliterated from the BTSK source code, which
appears to be under the Zlib license.  I am unsure yet what licenses I
can release the transliterated code under (I would prefer GPL_3).

Behavior Trees are a technology that is used originally in Game AI and
increasingly in Robotics and Computer Science.

In my own words they offer 'imperative reactive "planning"-w/sensing
and execution.'  So they are imperative in that, unlike say PDDL
(https://en.wikipedia.org/wiki/Planning_Domain_Definition_Language)
where you specify the logic of the domain and the facts of the
problem, and it derives the plan, you must encode the plan logic.  So
they don't really plan in the traditional sense, hence why planning is
in quotes.  They do, unlike most variants of PDDL, offer sensing, the
ability to behavior contingent to the environment at runtime.  And
they offer execution (monitoring), which with PDDL usually involves an
external framework.

They are very useful for efficiently making decision making systems.
My motivation for developing a pure Perl behavior tree is to be able
to implement the plan-monitor system:
https://github.com/aindilis/plan-monitor

# See Also
https://www.youtube.com/watch?v=n4aREFb3SsU
