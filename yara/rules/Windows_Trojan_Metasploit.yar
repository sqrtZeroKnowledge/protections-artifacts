rule Windows_Trojan_Metasploit_a6e956c9 {
    meta:
        author = "Elastic Security"
        id = "a6e956c9-799e-49f9-b5c5-ac68aaa2dc21"
        fingerprint = "21855599bc51ec2f71d694d4e0f866f815efe54a42842dfe5f8857811530a686"
        creation_date = "2021-03-23"
        last_modified = "2021-08-23"
        description = "Identifies the API address lookup function leverage by metasploit shellcode"
        threat_name = "Windows.Trojan.Metasploit"
        severity = 100
        arch_context = "x86"
        scan_context = "file, memory"
        license = "Elastic License v2"
        os = "windows"
    strings:
        $a1 = { 60 89 E5 31 C0 64 8B 50 30 8B 52 0C 8B 52 14 8B 72 28 0F B7 4A 26 31 FF AC 3C 61 7C 02 2C 20 }
    condition:
        $a1
}

rule Windows_Trojan_Metasploit_38b8ceec {
    meta:
        author = "Elastic Security"
        id = "38b8ceec-601c-4117-b7a0-74720e26bf38"
        fingerprint = "44b9022d87c409210b1d0807f5a4337d73f19559941660267d63cd2e4f2ff342"
        creation_date = "2021-03-23"
        last_modified = "2021-08-23"
        description = "Identifies the API address lookup function used by metasploit. Also used by other tools (like beacon)."
        threat_name = "Windows.Trojan.Metasploit"
        severity = 85
        arch_context = "x86"
        scan_context = "file, memory"
        license = "Elastic License v2"
        os = "windows"
    strings:
        $a1 = { 89 E5 31 D2 64 8B 52 30 8B 52 0C 8B 52 14 8B 72 28 0F B7 4A 26 31 FF 31 C0 AC 3C 61 }
    condition:
        $a1
}

rule Windows_Trojan_Metasploit_7bc0f998 {
    meta:
        author = "Elastic Security"
        id = "7bc0f998-7014-4883-8a56-d5ee00c15aed"
        fingerprint = "fdb5c665503f07b2fc1ed7e4e688295e1222a500bfb68418661db60c8e75e835"
        creation_date = "2021-03-23"
        last_modified = "2021-08-23"
        description = "Identifies the API address lookup function leverage by metasploit shellcode"
        threat_name = "Windows.Trojan.Metasploit"
        severity = 84
        arch_context = "x86"
        scan_context = "file, memory"
        license = "Elastic License v2"
        os = "windows"
    strings:
        $a1 = { 48 31 D2 65 48 8B 52 60 48 8B 52 18 48 8B 52 20 48 8B 72 50 48 0F B7 4A 4A 4D 31 C9 48 31 C0 AC 3C 61 }
    condition:
        $a1
}

rule Windows_Trojan_Metasploit_f7f826b4 {
    meta:
        author = "Elastic Security"
        id = "f7f826b4-6456-4819-bc0c-993aeeb7e325"
        fingerprint = "9b07dc54d5015d0f0d84064c5a989f94238609c8167cae7caca8665930a20f81"
        creation_date = "2021-03-23"
        last_modified = "2021-08-23"
        description = "Identifies metasploit kernel->user shellcode. Likely used in ETERNALBLUE and BlueKeep exploits."
        threat_name = "Windows.Trojan.Metasploit"
        severity = 100
        arch_context = "x86"
        scan_context = "file, memory"
        license = "Elastic License v2"
        os = "windows"
    strings:
        $a1 = { 48 92 31 C9 51 51 49 89 C9 4C 8D 05 0? 00 00 00 89 CA 48 83 EC 20 FF D0 48 83 C4 30 C3 }
    condition:
        $a1
}

rule Windows_Trojan_Metasploit_24338919 {
    meta:
        author = "Elastic Security"
        id = "24338919-8efe-4cf2-a23a-a3f22095b42d"
        fingerprint = "ac76190a84c4bdbb6927c5ad84a40e2145ca9e76369a25ac2ffd727eefef4804"
        creation_date = "2021-03-23"
        last_modified = "2021-08-23"
        description = "Identifies metasploit wininet reverse shellcode. Also used by other tools (like beacon)."
        threat_name = "Windows.Trojan.Metasploit"
        severity = 80
        arch_context = "x86"
        scan_context = "file, memory"
        license = "Elastic License v2"
        os = "windows"
    strings:
        $a1 = { 68 6E 65 74 00 68 77 69 6E 69 54 68 4C 77 26 07 }
    condition:
        $a1
}

rule Windows_Trojan_Metasploit_0f5a852d {
    meta:
        author = "Elastic Security"
        id = "0f5a852d-cacd-43d7-8754-204b09afba2f"
        fingerprint = "97daac4249e85a73d4e6a4450248e59e0d286d5e7c230cf32a38608f8333f00d"
        creation_date = "2021-04-07"
        last_modified = "2021-08-23"
        description = "Identifies 64 bit metasploit wininet reverse shellcode. May also be used by other malware families."
        threat_name = "Windows.Trojan.Metasploit"
        severity = 80
        arch_context = "x86"
        scan_context = "file, memory"
        license = "Elastic License v2"
        os = "windows"
    strings:
        $a = { 49 BE 77 69 6E 69 6E 65 74 00 41 56 48 89 E1 49 C7 C2 4C 77 26 07 FF D5 }
    condition:
        all of them
}

rule Windows_Trojan_Metasploit_c9773203 {
    meta:
        author = "Elastic Security"
        id = "c9773203-6d1e-4246-a1e0-314217e0207a"
        fingerprint = "afde93eeb14b4d0c182f475a22430f101394938868741ffa06445e478b6ece36"
        creation_date = "2021-04-07"
        last_modified = "2021-08-23"
        description = "Identifies the 64 bit API hashing function used by Metasploit. This has been re-used by many other malware families."
        threat_name = "Windows.Trojan.Metasploit"
        reference = "https://github.com/rapid7/metasploit-framework/blob/04e8752b9b74cbaad7cb0ea6129c90e3172580a2/external/source/shellcode/windows/x64/src/block/block_api.asm"
        severity = 10
        arch_context = "x86"
        scan_context = "file, memory"
        license = "Elastic License v2"
        os = "windows"
    strings:
        $a = { 48 31 C0 AC 41 C1 C9 0D 41 01 C1 38 E0 75 F1 4C 03 4C 24 08 45 39 D1 }
    condition:
        all of them
}

rule Windows_Trojan_Metasploit_dd5ce989 {
    meta:
        author = "Elastic Security"
        id = "dd5ce989-3925-4e27-97c1-3b8927c557e9"
        fingerprint = "4fc7c309dca197f4626d6dba8afcd576e520dbe2a2dd6f7d38d7ba33ee371d55"
        creation_date = "2021-04-14"
        last_modified = "2021-08-23"
        description = "Identifies Meterpreter DLL used by Metasploit"
        threat_name = "Windows.Trojan.Metasploit"
        reference = "https://www.rapid7.com/blog/post/2015/03/25/stageless-meterpreter-payloads/"
        reference_sample = "86cf98bf854b01a55e3f306597437900e11d429ac6b7781e090eeda3a5acb360"
        severity = 90
        arch_context = "x86"
        scan_context = "file, memory"
        license = "Elastic License v2"
        os = "windows"
    strings:
        $a1 = "metsrv.x64.dll" fullword
        $a2 = "metsrv.dll" fullword
        $b1 = "ReflectiveLoader"
    condition:
        1 of ($a*) and 1 of ($b*)
}

rule Windows_Trojan_Metasploit_96233b6b {
    meta:
        author = "Elastic Security"
        id = "96233b6b-d95a-4e0e-8f83-f2282a342087"
        fingerprint = "40032849674714bc9eb020971dd9f27a07b53b8ff953b793cb3aad136256fd70"
        creation_date = "2021-06-10"
        last_modified = "2021-08-23"
        description = "Identifies another 64 bit API hashing function used by Metasploit."
        threat_name = "Windows.Trojan.Metasploit"
        reference_sample = "e7a2d966deea3a2df6ce1aeafa8c2caa753824215a8368e0a96b394fb46b753b"
        severity = 100
        arch_context = "x86"
        scan_context = "file, memory"
        license = "Elastic License v2"
        os = "windows"
    strings:
        $a = { 89 E5 31 D2 64 8B 52 30 8B 52 0C 8B 52 14 8B 72 28 31 FF 0F B7 4A 26 31 C0 AC 3C 61 7C 02 2C 20 C1 CF 0D }
    condition:
        all of them
}

rule Windows_Trojan_Metasploit_4a1c4da8 {
    meta:
        author = "Elastic Security"
        id = "4a1c4da8-837d-4ad1-a672-ddb8ba074936"
        fingerprint = "7a31ce858215f0a8732ce6314bfdbc3975f1321e3f87d7f4dc5a525f15766987"
        creation_date = "2021-06-10"
        last_modified = "2021-08-23"
        description = "Identifies Metasploit 64 bit reverse tcp shellcode."
        threat_name = "Windows.Trojan.Metasploit"
        reference_sample = "9582d37ed9de522472abe615dedef69282a40cfd58185813c1215249c24bbf22"
        severity = 100
        arch_context = "x86"
        scan_context = "file, memory"
        license = "Elastic License v2"
        os = "windows"
    strings:
        $a = { 6A 10 56 57 68 99 A5 74 61 FF D5 85 C0 74 0A FF 4E 08 }
    condition:
        all of them
}

rule Windows_Trojan_Metasploit_91bc5d7d {
    meta:
        author = "Elastic Security"
        id = "91bc5d7d-31e3-4c02-82b3-a685194981f3"
        fingerprint = "8848a3de66a25dd98278761a7953f31b7995e48621dec258f3d92bd91a4a3aa3"
        creation_date = "2021-08-02"
        last_modified = "2021-10-04"
        threat_name = "Windows.Trojan.Metasploit"
        reference_sample = "0dd993ff3917dc56ef02324375165f0d66506c5a9b9548eda57c58e041030987"
        severity = 100
        arch_context = "x86"
        scan_context = "file, memory"
        license = "Elastic License v2"
        os = "windows"
    strings:
        $a = { 49 BE 77 73 32 5F 33 32 00 00 41 56 49 89 E6 48 81 EC A0 01 00 00 49 89 E5 }
    condition:
        all of them
}

