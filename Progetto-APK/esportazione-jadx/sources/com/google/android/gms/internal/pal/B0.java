package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public abstract class B0 implements Comparable {
    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        long j8 = ((C0) this).f23477G;
        long j9 = ((C0) ((B0) obj)).f23477G;
        if (j8 < j9) {
            return -1;
        }
        return j8 > j9 ? 1 : 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof B0) && ((C0) this).f23477G == ((C0) ((B0) obj)).f23477G;
    }

    public final int hashCode() {
        long j8 = ((C0) this).f23477G;
        return (int) (j8 ^ (j8 >>> 32));
    }

    /* JADX WARN: Code duplicated, block: B:11:0x002e  */
    /* JADX WARN: Code duplicated, block: B:12:0x0035  */
    /* JADX WARN: Code duplicated, block: B:14:0x0039  */
    /* JADX WARN: Code duplicated, block: B:15:0x0054  */
    public final String toString() {
        long j8 = ((C0) this).f23477G;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("PT");
        int i8 = D0.f23488a;
        int i9 = (int) j8;
        if (i9 != j8) {
            stringBuffer.append(Long.toString(j8));
        } else if (i9 < 0) {
            stringBuffer.append('-');
            if (i9 != Integer.MIN_VALUE) {
                i9 = -i9;
                if (i9 < 10) {
                    stringBuffer.append((char) (i9 + 48));
                } else if (i9 < 100) {
                    int i10 = ((i9 + 1) * 13421772) >> 27;
                    stringBuffer.append((char) (i10 + 48));
                    stringBuffer.append((char) (((i9 - (i10 << 3)) - (i10 + i10)) + 48));
                } else {
                    stringBuffer.append(Integer.toString(i9));
                }
            } else {
                stringBuffer.append("2147483648");
            }
        } else if (i9 < 10) {
            stringBuffer.append((char) (i9 + 48));
        } else if (i9 < 100) {
            int i11 = ((i9 + 1) * 13421772) >> 27;
            stringBuffer.append((char) (i11 + 48));
            stringBuffer.append((char) (((i9 - (i11 << 3)) - (i11 + i11)) + 48));
        } else {
            stringBuffer.append(Integer.toString(i9));
        }
        while (true) {
            if (stringBuffer.length() >= (j8 < 0 ? 7 : 6)) {
                break;
            }
            stringBuffer.insert(j8 < 0 ? 3 : 2, "0");
        }
        if ((j8 / 1000) * 1000 == j8) {
            stringBuffer.setLength(stringBuffer.length() - 3);
        } else {
            stringBuffer.insert(stringBuffer.length() - 3, ".");
        }
        stringBuffer.append('S');
        return stringBuffer.toString();
    }
}
