package com.google.ads.interactivemedia.v3.internal;

import A0.O;
import com.google.protobuf.U2;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public final class zzqm {
    public static String zza(String str) {
        if (zzqg.zza(str)) {
            return null;
        }
        return str;
    }

    public static String zzb(String str, Object... objArr) {
        int length;
        int length2;
        int iIndexOf;
        String strC;
        int i8 = 0;
        int i9 = 0;
        while (true) {
            length = objArr.length;
            if (i9 >= length) {
                break;
            }
            Object obj = objArr[i9];
            if (obj == null) {
                strC = "null";
            } else {
                try {
                    strC = obj.toString();
                } catch (Exception e8) {
                    String strL = U2.l(obj.getClass().getName(), "@", Integer.toHexString(System.identityHashCode(obj)));
                    Logger.getLogger("com.google.common.base.Strings").logp(Level.WARNING, "com.google.common.base.Strings", "lenientToString", "Exception during lenientFormat for ".concat(strL), (Throwable) e8);
                    strC = O.C("<", strL, " threw ", e8.getClass().getName(), ">");
                }
            }
            objArr[i9] = strC;
            i9++;
        }
        StringBuilder sb = new StringBuilder(str.length() + (length * 16));
        int i10 = 0;
        while (true) {
            length2 = objArr.length;
            if (i8 >= length2 || (iIndexOf = str.indexOf("%s", i10)) == -1) {
                break;
            }
            sb.append((CharSequence) str, i10, iIndexOf);
            sb.append(objArr[i8]);
            i10 = iIndexOf + 2;
            i8++;
        }
        sb.append((CharSequence) str, i10, str.length());
        if (i8 < length2) {
            sb.append(" [");
            sb.append(objArr[i8]);
            for (int i11 = i8 + 1; i11 < objArr.length; i11++) {
                sb.append(", ");
                sb.append(objArr[i11]);
            }
            sb.append(']');
        }
        return sb.toString();
    }

    public static boolean zzc(String str) {
        return zzqg.zza(str);
    }
}
