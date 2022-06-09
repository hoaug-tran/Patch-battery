/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200110 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLv3I0JI.aml, Wed Aug 12 12:43:04 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000571 (1393)
 *     Revision         0x02
 *     Checksum         0x85
 *     OEM ID           "ACDT"
 *     OEM Table ID     "BATS"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200110 (538968336)
 */
DefinitionBlock ("", "SSDT", 2, "ACDT", "BATS", 0x00000000)
{
    External (_SB_.ECON, FieldUnitObj)
    External (_SB_.PCI0.LPCB, DeviceObj)
    External (_SB_.PCI0.LPCB.H_EC, DeviceObj)
    External (_SB_.PCI0.LPCB.H_EC.B1ST, FieldUnitObj)
    External (_SB_.PCI0.LPCB.H_EC.BAT0, DeviceObj)
    External (_SB_.PCI0.LPCB.H_EC.BAT0.BPKG, UnknownObj)
    External (_SB_.PCI0.LPCB.H_EC.BNUM, IntObj)
    External (_SB_.PCI0.LPCB.H_EC.ECAV, IntObj)
    External (_SB_.PWRS, FieldUnitObj)
    External (B1B2, MethodObj)    // 2 Arguments
    External (BPKG, IntObj)
    External (PWRS, IntObj)

    Method (B1B2, 2, NotSerialized)
    {
        Return ((Arg0 | (Arg1 << 0x08)))
    }

    Scope (\_SB.PCI0.LPCB.H_EC)
    {
        OperationRegion (ECF2, EmbeddedControl, Zero, 0xFF)
        Field (ECF2, ByteAcc, Lock, Preserve)
        {
            Offset (0x01), 
            Offset (0x02), 
            Offset (0x03), 
            Offset (0x0F), 
                ,   7, 
            Offset (0x10), 
            Offset (0x20), 
            Offset (0x21), 
                ,   7, 
            Offset (0x22), 
            Offset (0x23), 
            Offset (0x24), 
            Offset (0x25), 
            ANG0,   8, 
            ANG1,   8, 
            Offset (0x28), 
            Offset (0x29), 
            Offset (0x60), 
            Offset (0x61), 
            Offset (0x62), 
            Offset (0x63), 
                ,   4, 
            Offset (0x64), 
            Offset (0x65), 
            Offset (0x66), 
            Offset (0x67), 
            CHG1,   8, 
            CHG2,   8, 
            Offset (0x6F), 
            Offset (0x70), 
            Offset (0x71), 
            Offset (0x72), 
            Offset (0x73), 
            Offset (0x74), 
            Offset (0x7F), 
                ,   1, 
            Offset (0x80), 
            ECWR,   8, 
            Offset (0x82), 
            X110,   8, 
            X111,   8, 
            BDC0,   8, 
            BDC1,   8, 
            BFV0,   8, 
            BFV1,   8, 
            BFC0,   8, 
            BFC1,   8, 
            X150,   8, 
            X151,   8, 
            Offset (0x8D), 
            BCR0,   8, 
            BCR1,   8, 
            BRC0,   8, 
            BRC1,   8, 
            BVT0,   8, 
            BVT1,   8, 
            Offset (0x94), 
            Offset (0x99), 
            BLC0,   8, 
            BLC1,   8, 
            Offset (0xA8), 
                ,   1, 
                ,   1, 
                ,   1, 
                ,   4, 
            Offset (0xA9), 
            Offset (0xC0), 
            Offset (0xC1), 
            Offset (0xC2), 
            Offset (0xC3), 
            Offset (0xC4), 
            Offset (0xC5), 
            Offset (0xC6), 
            Offset (0xC7), 
            Offset (0xC8), 
            Offset (0xC9), 
            Offset (0xCA), 
            Offset (0xCB), 
            Offset (0xCC), 
            Offset (0xCD), 
            Offset (0xCE), 
            Offset (0xCF), 
            Offset (0xD0), 
            Offset (0xD1), 
            Offset (0xD2), 
            Offset (0xD3), 
            Offset (0xD4), 
            Offset (0xD5), 
            Offset (0xD6), 
            Offset (0xD7), 
            Offset (0xD8), 
            Offset (0xD9), 
            Offset (0xDA), 
            Offset (0xDB), 
            Offset (0xDC), 
            Offset (0xDD), 
            Offset (0xDE), 
            Offset (0xDF), 
            Offset (0xE0), 
            Offset (0xE1), 
            Offset (0xE2), 
            Offset (0xE3), 
            Offset (0xE4), 
            Offset (0xE5), 
            Offset (0xE6), 
            Offset (0xE7), 
            Offset (0xE8), 
            Offset (0xE9), 
            Offset (0xEA), 
            Offset (0xEB), 
            Offset (0xEC), 
            Offset (0xED), 
            Offset (0xEE), 
            Offset (0xEF), 
            Offset (0xF0), 
                ,   3, 
                ,   1, 
                ,   2, 
                ,   1, 
            Offset (0xF1)
        }

        Device (ADP1)
        {
            Name (_HID, "ACPI0003" /* Power Source Device */)  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
            {
                If ((ECWR & One))
                {
                    PWRS = One
                }
                Else
                {
                    PWRS = Zero
                }

                Return (PWRS) /* External reference */
            }

            Method (_PCL, 0, NotSerialized)  // _PCL: Power Consumer List
            {
                Return (Package (0x01)
                {
                    _SB
                })
            }
        }

        Scope (BAT0)
        {
            Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
            {
                BPKG [One] = B1B2 (BDC0, BDC1)
                BPKG [0x02] = B1B2 (BFC0, BFC1)
                BPKG [0x04] = B1B2 (BFV0, BFV1)
                If (B1B2 (BFC0, BFC1))
                {
                    BPKG [0x05] = (B1B2 (BFC0, BFC1) / 0x0A)
                    BPKG [0x06] = (B1B2 (BFC0, BFC1) / 0x64)
                    BPKG [0x07] = (B1B2 (BDC0, BDC1) / 0x64)
                }

                Return (BPKG) /* External reference */
            }

            Method (_BIX, 0, NotSerialized)  // _BIX: Battery Information Extended
            {
                Name (BIXT, Package (0x14)
                {
                    Zero, 
                    Zero, 
                    0x1770, 
                    0x1770, 
                    One, 
                    0x39D0, 
                    0x0258, 
                    0x012C, 
                    Zero, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0x3C, 
                    0x3C, 
                    "UX431", 
                    "123456789", 
                    "LIon", 
                    "ASUSTeK"
                })
                _BIF ()
                BIXT [One] = DerefOf (BPKG [Zero])
                BIXT [0x02] = DerefOf (BPKG [One])
                BIXT [0x03] = DerefOf (BPKG [0x02])
                BIXT [0x04] = DerefOf (BPKG [0x03])
                BIXT [0x05] = DerefOf (BPKG [0x04])
                BIXT [0x06] = DerefOf (BPKG [0x05])
                BIXT [0x07] = DerefOf (BPKG [0x06])
                BIXT [0x0E] = DerefOf (BPKG [0x07])
                BIXT [0x0F] = DerefOf (BPKG [0x08])
                BIXT [0x10] = DerefOf (BPKG [0x09])
                BIXT [0x11] = DerefOf (BPKG [0x0A])
                BIXT [0x12] = DerefOf (BPKG [0x0B])
                BIXT [0x13] = DerefOf (BPKG [0x0C])
                BIXT [0x08] = B1B2 (BLC0, BLC1)
                BIXT [0x09] = 0x0001869F
                Return (BIXT) /* \_SB_.PCI0.LPCB.H_EC.BAT0._BIX.BIXT */
            }

            Method (_BST, 0, NotSerialized)  // _BST: Battery Status
            {
                Name (PKG1, Package (0x04)
                {
                    Ones, 
                    Ones, 
                    Ones, 
                    Ones
                })
                PKG1 [Zero] = (B1ST & 0x07)
                If ((B1ST & One))
                {
                    PKG1 [One] = B1B2 (BCR0, BCR1)
                }
                Else
                {
                    PKG1 [One] = B1B2 (BCR0, BCR1)
                }

                PKG1 [0x02] = B1B2 (BRC0, BRC1)
                PKG1 [0x03] = B1B2 (BFV0, BFV1)
                Return (PKG1) /* \_SB_.PCI0.LPCB.H_EC.BAT0._BST.PKG1 */
            }
        }
    }
}

