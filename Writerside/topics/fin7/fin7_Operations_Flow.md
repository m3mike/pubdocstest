# FIN7 Operations Flow

Please see the formal [FIN7 Intelligence Summary](Intelligence_Summary4.md) which includes a break-down of the cited intelligence used for each step of this emulation.

---

<p align="center">
  <img src="/fin7/Emulation_Plan/OpFlow_Diagram.png" />
</p>

---

# Scenario 1

Based on [BOOSTWRITE](https://attack.mitre.org/software/S0415//), [Pillowmint](https://attack.mitre.org/software/S0517/), [SQLRat](https://attack.mitre.org/software/S0390/), and [BabyMetal](https://www.fireeye.com/blog/threat-research/2018/08/fin7-pursuing-an-enigmatic-and-evasive-global-criminal-operation.html)

This scenario emulates FIN7 targeting a hotel manager network to gain access to credit card information. The scenario begins with FIN7 achieving initial access to the network after an unwitting user executes a malicious .LNK file. FIN7 then pivots to a privileged IT administrator workstation. From this system, FIN7 keylogs credentials needed to access an accounting workstation. FIN7 then pivots to the accounting workstation, establishes persistence, and deploys malware to scrape credit card information from process memory.

This emulation plan is intended to be executed with protections-based capabilities **disabled** in order to accurately measure a security control's ability to detect specific adversary behavior.

---

# Scenario 2
This scenario emulates the same FIN7 TTP's as scenario 1; however, changes were made to support environments with Protective security controls enabled. This scenario is designed so that specific TTP's are decoupled from dependencies to enable all steps to be executed, even if previous steps are blocked.

---

## Additional Plan Resources

- [Intelligence Summary](Intelligence_Summary4.md)
- [Operations Flow](Operations_Flow4.md)
- [Emulation Plan](Emulation_Plan1.)
  - [Scenario 1 - Infrastructure](Infrastructure5.md)
  - [Scenario 1 - Detections](Scenario_12.)
  - [Scenario 2 - Infrastructure](Infrastructure6.md)
  - [Scenario 2 - Protections](Scenario_22.)
  - [YAML](yaml2.)
- [File Hashes](hashes1.)
- [YARA Rules](yara-rules1.)
- [Issues](https://github.com/center-for-threat-informed-defense/adversary_emulation_library/issues)
- [Change Log](CHANGE_LOG4.md)
