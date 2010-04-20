# Luta Protocol [client]

## Movement

    00  Jump begin
    01  Jump end
    02  Left begin
    03  Left end
    04  Right begin
    04  Right end
    05  Duck begin
    06  Duck end
    07  Action begin
    08  Action end

## Attack

    10  Melee attack begin
    11  Melee attack end
    12  Charge attack begin
    13  Charge attack end
    14  Block / Defend begin
    15  Block / Defend end

## Quickslot

    20  Quickslot 1 begin
    21  Quickslot 1 end
    22  Quickslot 2 begin
    23  Quickslot 2 end
    24  Quickslot 3 begin
    25  Quickslot 3 end
    26  Quickslot 4 begin
    27  Quickslot 4 end
    28  Quickslot 5 begin
    29  Quickslot 5 end
    2a  Quickslot 6 begin
    2b  Quickslot 6 end
    2c  Quickslot 7 begin
    2d  Quickslot 7 end
    2e  Quickslot 8 begin
    2f  Quickslot 8 end

## Actions

    30  Attempt skill <ID : n>
    31  Attempt use item <ID : n>
    32  Attempt equip item <ID : n>
    33  Attempt de-equip item <ID : n>

## NPC

    40  NPC Interaction "Talk" <ID : C>
    41  NPC Interaction "Quest" <ID : C>
    42  NPC Interaction "Shop" <ID : C>

## Query / etc.

    50  [JSON] Entity list
    51  [JSON] Query NPC <ID : C>
    52  [JSON] Query Monster <ID : C>
    53  [JSON] Query Character <ID : C>

## Query / character

    60  [JSON] Query Basic Info
    61  [JSON] Query Inventory
    62  [JSON] Query Physical
    63  [JSON] Query Equip
    64  [JSON] Query Stats
    65  [JSON] Query Skills
    66  [JSON] Query Achievements

## Zones

    70  [JSON] World map section (relative)
    71  [nC] Query ID:instance

## Messaging & other

    80  Connect <SID : q>
    81  Disconnect <SID : q>
    82  Say <Message : Z*>
    83  Shout <Message : Z*>
    84  Whisper <Message : Z*, Recipient : Z*>
    85  Friend channel <Message : Z*>
    86  Group channel <Message : Z*>
    87  Clan channel <Message : Z*>
    88  Allies channel <Message : Z*>

## Server comm

    90  Status <ST : C>
