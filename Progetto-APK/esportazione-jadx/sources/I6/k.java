package I6;

import java.util.ArrayList;
import java.util.List;
import p027d2.v;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class k extends i {
    public static boolean C0(CharSequence charSequence, char c8) {
        q0.h(charSequence, "<this>");
        return I0(charSequence, c8, 0, false, 2) >= 0;
    }

    public static boolean D0(CharSequence charSequence, String str) {
        q0.h(charSequence, "<this>");
        return J0(charSequence, str, 0, false, 2) >= 0;
    }

    public static boolean E0(String str, String str2) {
        q0.h(str, "<this>");
        q0.h(str2, "suffix");
        return str.endsWith(str2);
    }

    public static boolean F0(String str, String str2) {
        if (str == null) {
            return str2 == null;
        }
        return str.equalsIgnoreCase(str2);
    }

    public static final int G0(CharSequence charSequence) {
        q0.h(charSequence, "<this>");
        return charSequence.length() - 1;
    }

    public static final int H0(int i8, CharSequence charSequence, String str, boolean z7) {
        q0.h(charSequence, "<this>");
        q0.h(str, "string");
        if (!z7 && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(str, i8);
        }
        int length = charSequence.length();
        if (i8 < 0) {
            i8 = 0;
        }
        int length2 = charSequence.length();
        if (length > length2) {
            length = length2;
        }
        F6.c cVar = new F6.c(i8, length, 1);
        boolean z8 = charSequence instanceof String;
        int i9 = cVar.f3267I;
        int i10 = cVar.f3266H;
        if (z8) {
            if ((i9 > 0 && i8 <= i10) || (i9 < 0 && i10 <= i8)) {
                while (!N0(0, i, str.length(), str, (String) charSequence, z7)) {
                    if (i8 != i10) {
                        i8 += i9;
                    }
                }
                return i8;
            }
        } else if ((i9 > 0 && i8 <= i10) || (i9 < 0 && i10 <= i8)) {
            while (!O0(str, 0, charSequence, i8, str.length(), z7)) {
                if (i8 != i10) {
                    i8 += i9;
                }
            }
            return i8;
        }
        return -1;
    }

    public static int I0(CharSequence charSequence, char c8, int i8, boolean z7, int i9) {
        if ((i9 & 2) != 0) {
            i8 = 0;
        }
        if ((i9 & 4) != 0) {
            z7 = false;
        }
        q0.h(charSequence, "<this>");
        return (z7 || !(charSequence instanceof String)) ? K0(i8, charSequence, z7, new char[]{c8}) : ((String) charSequence).indexOf(c8, i8);
    }

    public static /* synthetic */ int J0(CharSequence charSequence, String str, int i8, boolean z7, int i9) {
        if ((i9 & 2) != 0) {
            i8 = 0;
        }
        if ((i9 & 4) != 0) {
            z7 = false;
        }
        return H0(i8, charSequence, str, z7);
    }

    public static final int K0(int i8, CharSequence charSequence, boolean z7, char[] cArr) {
        q0.h(charSequence, "<this>");
        q0.h(cArr, "chars");
        if (!z7 && cArr.length == 1 && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(p162u6.j.S(cArr), i8);
        }
        if (i8 < 0) {
            i8 = 0;
        }
        int iG0 = G0(charSequence);
        if (i8 > iG0) {
            return -1;
        }
        while (true) {
            char cCharAt = charSequence.charAt(i8);
            for (char c8 : cArr) {
                if (v.k(c8, cCharAt, z7)) {
                    return i8;
                }
            }
            if (i8 == iG0) {
                return -1;
            }
            i8++;
        }
    }

    public static boolean L0(String str) {
        q0.h(str, "<this>");
        for (int i8 = 0; i8 < str.length(); i8++) {
            char cCharAt = str.charAt(i8);
            if (!Character.isWhitespace(cCharAt) && !Character.isSpaceChar(cCharAt)) {
                return false;
            }
        }
        return true;
    }

    public static int M0(CharSequence charSequence, char c8, int i8, int i9) {
        if ((i9 & 2) != 0) {
            i8 = G0(charSequence);
        }
        q0.h(charSequence, "<this>");
        if (charSequence instanceof String) {
            return ((String) charSequence).lastIndexOf(c8, i8);
        }
        char[] cArr = {c8};
        if (charSequence instanceof String) {
            return ((String) charSequence).lastIndexOf(p162u6.j.S(cArr), i8);
        }
        int iG0 = G0(charSequence);
        if (i8 > iG0) {
            i8 = iG0;
        }
        while (-1 < i8) {
            if (v.k(cArr[0], charSequence.charAt(i8), false)) {
                return i8;
            }
            i8--;
        }
        return -1;
    }

    public static final boolean N0(int i8, int i9, int i10, String str, String str2, boolean z7) {
        q0.h(str, "<this>");
        q0.h(str2, "other");
        return !z7 ? str.regionMatches(i8, str2, i9, i10) : str.regionMatches(z7, i8, str2, i9, i10);
    }

    public static final boolean O0(CharSequence charSequence, int i8, CharSequence charSequence2, int i9, int i10, boolean z7) {
        q0.h(charSequence, "<this>");
        q0.h(charSequence2, "other");
        if (i9 < 0 || i8 < 0 || i8 > charSequence.length() - i10 || i9 > charSequence2.length() - i10) {
            return false;
        }
        for (int i11 = 0; i11 < i10; i11++) {
            if (!v.k(charSequence.charAt(i8 + i11), charSequence2.charAt(i9 + i11), z7)) {
                return false;
            }
        }
        return true;
    }

    public static String P0(String str, String str2) {
        q0.h(str, "<this>");
        if (!V0(str, str2)) {
            return str;
        }
        String strSubstring = str.substring(str2.length());
        q0.g(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static String Q0(String str, char c8, char c9) {
        q0.h(str, "<this>");
        String strReplace = str.replace(c8, c9);
        q0.g(strReplace, "replace(...)");
        return strReplace;
    }

    public static String R0(String str, String str2, String str3) {
        q0.h(str, "<this>");
        int iH0 = H0(0, str, str2, false);
        if (iH0 < 0) {
            return str;
        }
        int length = str2.length();
        int i8 = length >= 1 ? length : 1;
        int length2 = str3.length() + (str.length() - length);
        if (length2 < 0) {
            throw new OutOfMemoryError();
        }
        StringBuilder sb = new StringBuilder(length2);
        int i9 = 0;
        do {
            sb.append((CharSequence) str, i9, iH0);
            sb.append(str3);
            i9 = iH0 + length;
            if (iH0 >= str.length()) {
                break;
            }
            iH0 = H0(iH0 + i8, str, str2, false);
        } while (iH0 > 0);
        sb.append((CharSequence) str, i9, str.length());
        String string = sb.toString();
        q0.g(string, "toString(...)");
        return string;
    }

    public static List S0(CharSequence charSequence, char[] cArr) {
        q0.h(charSequence, "<this>");
        if (cArr.length != 1) {
            c<F6.c> cVar = new c(charSequence, 0, 0, new j(cArr, false, 0));
            ArrayList arrayList = new ArrayList(p162u6.k.v(new H6.g(cVar)));
            for (F6.c cVar2 : cVar) {
                q0.h(cVar2, "range");
                arrayList.add(charSequence.subSequence(cVar2.f3265G, cVar2.f3266H + 1).toString());
            }
            return arrayList;
        }
        String strValueOf = String.valueOf(cArr[0]);
        int iH0 = H0(0, charSequence, strValueOf, false);
        if (iH0 == -1) {
            return v.o(charSequence.toString());
        }
        ArrayList arrayList2 = new ArrayList(10);
        int length = 0;
        do {
            arrayList2.add(charSequence.subSequence(length, iH0).toString());
            length = strValueOf.length() + iH0;
            iH0 = H0(length, charSequence, strValueOf, false);
        } while (iH0 != -1);
        arrayList2.add(charSequence.subSequence(length, charSequence.length()).toString());
        return arrayList2;
    }

    public static boolean T0(String str, int i8, String str2, boolean z7) {
        q0.h(str, "<this>");
        return !z7 ? str.startsWith(str2, i8) : N0(i8, 0, str2.length(), str, str2, z7);
    }

    public static boolean U0(String str, String str2, boolean z7) {
        q0.h(str, "<this>");
        q0.h(str2, "prefix");
        return !z7 ? str.startsWith(str2) : N0(0, 0, str2.length(), str, str2, z7);
    }

    public static boolean V0(CharSequence charSequence, String str) {
        q0.h(charSequence, "<this>");
        return charSequence instanceof String ? U0((String) charSequence, str, false) : O0(charSequence, 0, str, 0, str.length(), false);
    }

    public static String W0(String str) {
        int iM0 = M0(str, '.', 0, 6);
        if (iM0 == -1) {
            return str;
        }
        String strSubstring = str.substring(iM0 + 1, str.length());
        q0.g(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static CharSequence X0(CharSequence charSequence) {
        q0.h(charSequence, "<this>");
        int length = charSequence.length() - 1;
        int i8 = 0;
        boolean z7 = false;
        while (i8 <= length) {
            char cCharAt = charSequence.charAt(!z7 ? i8 : length);
            boolean z8 = Character.isWhitespace(cCharAt) || Character.isSpaceChar(cCharAt);
            if (z7) {
                if (!z8) {
                    break;
                }
                length--;
            } else if (z8) {
                i8++;
            } else {
                z7 = true;
            }
        }
        return charSequence.subSequence(i8, length + 1);
    }
}
