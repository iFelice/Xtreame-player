package I6;

import A0.O;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class l extends k {
    public static String Y0(int i8, String str) {
        q0.h(str, "<this>");
        if (i8 < 0) {
            throw new IllegalArgumentException(O.y("Requested character count ", i8, " is less than zero.").toString());
        }
        int length = str.length();
        if (i8 > length) {
            i8 = length;
        }
        String strSubstring = str.substring(0, i8);
        q0.g(strSubstring, "substring(...)");
        return strSubstring;
    }
}
