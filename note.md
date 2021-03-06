# Luta notes

## Efficiency and Technology

- Using LÖVE engine
- Small packets [as small as practically possible]
- Game hosted in the cloud, give rewards for donating server time
- Uses **zones**. Maps are huge, and they're pre-divided into these zones. There's also multiple copies of zones called **instances**, also known as channels.
- Use **groups** to ensure everyone stays on the same channel. Also has a few other benefits, like shared EXP and money. Grouping is really simple, you'd just right-click someone and press **Add to Group**. Groups are broken upon logging out, and a maximum of <TBD> people can be grouped together at one time.
- Weather systems, time. Weather patterns move around throughout the world, and can have status effects and even give skills (one such example would be the `Lightningbolt` skill which shoots bolts of lightning out of your hands, only available during a `lightning storm`.) Each zone is able to decide its weather mappings. For example, a zone can crossover rain -> snow and vice versa, or can decide it will spawn blizzards, or kill tornadoes. Time of day can also affect the effectiveness of skills, and have status efffects. (ex. from `19:00` to `04:59` - health regeneration 2x, from `10:00` to `15:59` - energy regeneration 2x, and the Assassin skill `Cloak` is 5x effectiveness from `22:00` to `01:59`, among others.)

## Gameplay

- No "job advancements". Instead, many jobs, and **rank**.
- **Rank** is earned by doing quests. EXP is earned by hunting.
- **Rank** gives benefits such as titles, skills, and items.
- **Level** gives stat benefits (Health, Energy, Strength, etc.)
- Jobs can be switched in any town throughout the game, for a rank penalty to the previous job. Rank is job-dependent. Therefore, you can train a `Crossbow-man` job to a very high level (ex. rank 19 042), yet be low down in the `Thief` job (ex. rank 128).
- There are **Melee**, **Charge**, **Block**, and **Skill** attacks. Melee, Charge & Block are also skills, and they are job-dependent. They can be trained just as any other skill.
- Using a skill regularly and effectively will gain you training in it. Skills will level up as you become more proficient in them, giving added effectiveness.
- Skills can be activated using the Quickslot (`q w e r a s d f`) or the bottom panel
- Equip items can give skills and stats. An axe may provide the Melee skill (override), and a shield may provide, say, `+50 Vitality` `+20 Defense` and the Block skill (again, override).

## Art style

- HQ software synth music. Genres: Techno, Rock, Metal, Medieval
- Thick, curvy, black-outlined cartoon graphics. [Think: Paper Mario]
- Very colorful, but not too vivid. Monochromatic schemes are common for single objects.
- Antialiasing!!!! Yes, no icky pixel stairs. Smooth curves abound. (lol, not dissing pixel art styles though, I love those too but it's been done too much for this type of game. I want a 2D MMORPG that's *not* pixel-art. Truly though, I love Cave Story and various [S]NES games, probably more.)

## Setting

- A highly evolved [futuristic, even] society built around mythical creatures and magic. Yes, I know this has been done lots before, but not like this. Trust me on this one. This aims to achieve cartoon realism (er, as realistic as a cartoon can be... ^_^)
- TODO: Evolve the setting and story further.

## Interface & Graphics

- will scale to any native resolution
- has a big ribbon bar at the bottom with stats, $$$, minimap, a few buttons (quit and etc.), and quick windows (skills, character info, items, etc.)
- designed to work with a minimal amount of mouse usage.
- preeeety UI. lulz. do I even have to say? you should know me well enough by now.

## Economy

- Ano, denoted by ȧ: ex. 24.832ȧ
- an example `Gold Axe` [req: `1000 Lumberjack`] has a suggested retail price of 10ȧ.
- a `Concentrated Health Potion` [heals 1000 over 5sec dur.] has a suggested retail price of 0.05ȧ
- an `Animated Tree Stump` monster gives approximately 0.001ȧ to 0.004ȧ
