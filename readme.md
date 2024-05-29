# ATT&CK Evaluations Library Overview

The ATT&CK Emulation Library includes a collection of adversary emulation plans used in published ATT&CK Evaluations.

Emulation plans are a comprehensive approach to emulating a specific adversary, e.g. FIN6, from initial access
through exfiltration. The plans are organized by evaluation and threat actor, and are designed to emulate a real breach
from the designated adversary.

## Emulation Plans

| Full Emulation Plans | Intelligence Summary                                                                                                                                                                                                                                                                                                                                       |
|----------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [APT29](/Enterprise/apt29/README.md)                | APT29 is thought to be an organized and well-resourced cyber threat actor whose collection objectives appear to align with the interests of the Russian Federation.                                                                                                                                                                                        |
| Carbanak Group       | Carbanak is a threat group who has been found to manipulate financial assets, such as by transferring funds from bank accounts or by taking over ATM infrastructures.                                                                                                                                                                                      |
| FIN7                 | FIN7 is a financially-motivated threat group that has been associated with malicious operations dating back to late 2015. The group is characterized by their persistent targeting and large-scale theft of payment card data from victim systems.                                                                                                         |
| [OilRig](/ManagedServices/oilrig/README.md)               | OilRig is a cyber threat actor with operations aligning to the strategic objectives of the Iranian government. OilRig has been operational since at least 2014 and has a history of widespread impact, with operations directed against financial, government, energy, chemical, telecommunications and other sectors around the globe.                    |
| Sandworm             | Sandworm Team is a destructive threat group attributed to Russia's General Staff of the Armed Forces, Main Intelligence Directorate (GRU) that has been reportedly active since 2009. Sandworm is known for conducting large scale, well funded, destructive, and aggressive campaigns such as Olympic Destroyer, CrashOverride/Industroyer, and NotPetya. |
| [Turla](/Enterprise/turla/README.md)                | Turla is a sophisticated Russian-based threat group that has infected victims in more than 50 countries, and active since at least the early 2000s. Turla leverages novel techniques and custom tooling and open-source tools to elude defenses and persist on target networks...                                                                          |
| Wizard Spider        | Wizard Spider is a Russia-based e-crime group originally known for the Trickbot banking malware. In August 2018, Wizard Spider added capabilities to their Trickbot software enabling the deployment of the Ryuk ransomware. This resulted in "big game hunting" campaigns, focused on targeting large organizations for high-ransom return rates.         |

## Directory Structure

Each emulation plan focuses on a specific named threat actor. The README of each individual plan provides a curated
summary of available cyber threat intelligence, composed of an intelligence overview of the actor (describing who they
target, how, and why where possible) as well as the scope of their activity (i.e. breadth of techniques and malware
used). All presented information is cited back to relevant publicly available cyber threat intelligence and communicated
and annotated via ATT&CK.

Within each emulation plan, the operational flow provides a high-level summary of the captured scenario(s). These
scenarios will vary based on the adversary and available intelligence, but typically follow a sequential progression of
how the actor breaches then works towards achieving their operational objectives within a victim environment (espionage,
data/system destruction, etc.).

The content to execute the scenario(s) is broken down into step-by-step procedures provided in both human and
machine-readable formats. Scenarios can be executed end-to-end or as individual tests. The human-readable formats
provide additional relevant background where possible as well as any setup prerequisites, while the machine-readable
format is designed to be programmatically parsed (ex: read, reformatted, and ingested into an automated agent, such as
CALDERA and/or breach simulation frameworks).

Detailed documentation for our full emulation plan structure can be found here.
