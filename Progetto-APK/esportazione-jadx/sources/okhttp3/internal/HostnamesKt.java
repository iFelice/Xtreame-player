package okhttp3.internal;

import I6.k;
import Q6.j;
import java.net.IDN;
import java.net.InetAddress;
import java.util.Arrays;
import java.util.Locale;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class HostnamesKt {
    private static final boolean containsInvalidHostnameAsciiCodes(String str) {
        int length = str.length();
        for (int i8 = 0; i8 < length; i8++) {
            char cCharAt = str.charAt(i8);
            if (q0.l(cCharAt, 31) <= 0 || q0.l(cCharAt, 127) >= 0 || k.I0(" #%/:?@[\\]", cCharAt, 0, false, 6) != -1) {
                return true;
            }
        }
        return false;
    }

    private static final boolean decodeIpv4Suffix(String str, int i8, int i9, byte[] bArr, int i10) {
        int i11 = i10;
        while (i8 < i9) {
            if (i11 == bArr.length) {
                return false;
            }
            if (i11 != i10) {
                if (str.charAt(i8) != '.') {
                    return false;
                }
                i8++;
            }
            int i12 = i8;
            int i13 = 0;
            while (i12 < i9) {
                char cCharAt = str.charAt(i12);
                if (q0.l(cCharAt, 48) < 0 || q0.l(cCharAt, 57) > 0) {
                    break;
                }
                if ((i13 == 0 && i8 != i12) || (i13 = ((i13 * 10) + cCharAt) - 48) > 255) {
                    return false;
                }
                i12++;
            }
            if (i12 - i8 == 0) {
                return false;
            }
            bArr[i11] = (byte) i13;
            i11++;
            i8 = i12;
        }
        return i11 == i10 + 4;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x004d  */
    /* JADX WARN: Code duplicated, block: B:33:0x0057 A[LOOP:1: B:30:0x004b->B:33:0x0057, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:54:0x005d A[EDGE_INSN: B:54:0x005d->B:34:0x005d BREAK  A[LOOP:1: B:30:0x004b->B:33:0x0057], SYNTHETIC] */
    private static final InetAddress decodeIpv6(String str, int i8, int i9) {
        int i10;
        int i11;
        int hexDigit;
        byte[] bArr = new byte[16];
        int i12 = 0;
        int i13 = -1;
        int i14 = -1;
        while (i8 < i9) {
            if (i12 == 16) {
                return null;
            }
            int i15 = i8 + 2;
            if (i15 <= i9 && k.T0(str, i8, "::", false)) {
                if (i13 != -1) {
                    return null;
                }
                i12 += 2;
                i13 = i12;
                if (i15 == i9) {
                    break;
                }
                i14 = i15;
                i8 = i14;
                i10 = 0;
                while (i8 < i9) {
                    hexDigit = Util.parseHexDigit(str.charAt(i8));
                    if (hexDigit != -1) {
                        break;
                        break;
                    }
                    i10 = (i10 << 4) + hexDigit;
                    i8++;
                }
                i11 = i8 - i14;
                if (i11 != 0) {
                }
                return null;
            }
            if (i12 != 0) {
                if (!k.T0(str, i8, ":", false)) {
                    if (!k.T0(str, i8, ".", false) || !decodeIpv4Suffix(str, i14, i9, bArr, i12 - 2)) {
                        return null;
                    }
                    i12 += 2;
                    break;
                }
                i8++;
            }
            i14 = i8;
            i8 = i14;
            i10 = 0;
            while (i8 < i9) {
                hexDigit = Util.parseHexDigit(str.charAt(i8));
                if (hexDigit != -1) {
                    break;
                }
                i10 = (i10 << 4) + hexDigit;
                i8++;
            }
            i11 = i8 - i14;
            if (i11 != 0 || i11 > 4) {
                return null;
            }
            int i16 = i12 + 1;
            bArr[i12] = (byte) ((i10 >>> 8) & 255);
            i12 += 2;
            bArr[i16] = (byte) (i10 & 255);
        }
        if (i12 != 16) {
            if (i13 == -1) {
                return null;
            }
            int i17 = i12 - i13;
            System.arraycopy(bArr, i13, bArr, 16 - i17, i17);
            Arrays.fill(bArr, i13, (16 - i12) + i13, (byte) 0);
        }
        return InetAddress.getByAddress(bArr);
    }

    private static final String inet6AddressToAscii(byte[] bArr) {
        int i8 = -1;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        while (i10 < bArr.length) {
            int i12 = i10;
            while (i12 < 16 && bArr[i12] == 0 && bArr[i12 + 1] == 0) {
                i12 += 2;
            }
            int i13 = i12 - i10;
            if (i13 > i11 && i13 >= 4) {
                i8 = i10;
                i11 = i13;
            }
            i10 = i12 + 2;
        }
        j jVar = new j();
        while (i9 < bArr.length) {
            if (i9 == i8) {
                jVar.o0(58);
                i9 += i11;
                if (i9 == 16) {
                    jVar.o0(58);
                }
            } else {
                if (i9 > 0) {
                    jVar.o0(58);
                }
                jVar.q0((Util.and(bArr[i9], 255) << 8) | Util.and(bArr[i9 + 1], 255));
                i9 += 2;
            }
        }
        return jVar.h0();
    }

    public static final String toCanonicalHost(String str) {
        q0.h(str, "<this>");
        if (!k.D0(str, ":")) {
            try {
                String ascii = IDN.toASCII(str);
                q0.g(ascii, "toASCII(host)");
                Locale locale = Locale.US;
                q0.g(locale, "US");
                String lowerCase = ascii.toLowerCase(locale);
                q0.g(lowerCase, "this as java.lang.String).toLowerCase(locale)");
                if (lowerCase.length() == 0 || containsInvalidHostnameAsciiCodes(lowerCase)) {
                    return null;
                }
                return lowerCase;
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }
        InetAddress inetAddressDecodeIpv6 = (k.U0(str, "[", false) && k.E0(str, "]")) ? decodeIpv6(str, 1, str.length() - 1) : decodeIpv6(str, 0, str.length());
        if (inetAddressDecodeIpv6 == null) {
            return null;
        }
        byte[] address = inetAddressDecodeIpv6.getAddress();
        if (address.length == 16) {
            return inet6AddressToAscii(address);
        }
        if (address.length == 4) {
            return inetAddressDecodeIpv6.getHostAddress();
        }
        throw new AssertionError("Invalid IPv6 address: '" + str + '\'');
    }
}
