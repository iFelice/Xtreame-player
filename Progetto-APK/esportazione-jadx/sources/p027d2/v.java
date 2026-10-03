package p027d2;

import F6.c;
import N.V;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.api.d;
import com.google.android.gms.internal.ads.Cw;
import com.google.protobuf.U2;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.HttpUrl;
import p000a.r;
import p034e2.s;
import p034e2.y;
import p096m2.u;
import p104n2.e;
import p162u6.q;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public abstract class v implements V {
    public static String d(String str, String str2) {
        byte[] bytes = str.getBytes();
        byte[] bytes2 = str2.getBytes();
        int length = bytes2.length;
        char[] cArr = new char[bytes.length];
        int i8 = 0;
        int i9 = 0;
        for (byte b8 : bytes) {
            if (i8 == length) {
                i8 = 0;
            }
            cArr[i9] = (char) (b8 ^ bytes2[i8]);
            i8++;
            i9++;
        }
        return new String(cArr);
    }

    public static int e(int i8) {
        if (i8 >= 3) {
            return i8 < 1073741824 ? (int) Math.ceil(((double) i8) / 0.75d) : d.API_PRIORITY_OTHER;
        }
        Cw.g(i8, "expectedSize");
        return i8 + 1;
    }

    public static void f(int i8) {
        if (2 > i8 || i8 >= 37) {
            StringBuilder sbK = r.k("radix ", i8, " was not in valid range ");
            sbK.append(new c(2, 36, 1));
            throw new IllegalArgumentException(sbK.toString());
        }
    }

    public static String g(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        for (int i8 = 0; i8 < str.length(); i8++) {
            sb.append((char) (str.charAt(i8) ^ str2.charAt(i8 % str2.length())));
        }
        return sb.toString();
    }

    public static float h(float f8, float f9, float f10, float f11) {
        double d6 = f8 - f10;
        double d8 = f9 - f11;
        return (float) Math.sqrt((d8 * d8) + (d6 * d6));
    }

    public static float i(int i8, int i9, int i10, int i11) {
        double d6 = i8 - i10;
        double d8 = i9 - i11;
        return (float) Math.sqrt((d8 * d8) + (d6 * d6));
    }

    public static final boolean k(char c8, char c9, boolean z7) {
        if (c8 == c9) {
            return true;
        }
        if (!z7) {
            return false;
        }
        char upperCase = Character.toUpperCase(c8);
        char upperCase2 = Character.toUpperCase(c9);
        return upperCase == upperCase2 || Character.toLowerCase(upperCase) == Character.toLowerCase(upperCase2);
    }

    public static boolean l(Object obj, Map map) {
        if (map == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return map.entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    public static int m(List list) {
        q0.h(list, "<this>");
        return list.size() - 1;
    }

    public static String n(String str, Object... objArr) {
        int iIndexOf;
        String string;
        String strValueOf = String.valueOf(str);
        int i8 = 0;
        for (int i9 = 0; i9 < objArr.length; i9++) {
            Object obj = objArr[i9];
            if (obj == null) {
                string = "null";
            } else {
                try {
                    string = obj.toString();
                } catch (Exception e8) {
                    String str2 = obj.getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(obj));
                    Logger.getLogger("com.google.common.base.Strings").log(Level.WARNING, "Exception during lenientFormat for " + str2, (Throwable) e8);
                    StringBuilder sbP = U2.p("<", str2, " threw ");
                    sbP.append(e8.getClass().getName());
                    sbP.append(">");
                    string = sbP.toString();
                }
            }
            objArr[i9] = string;
        }
        StringBuilder sb = new StringBuilder((objArr.length * 16) + strValueOf.length());
        int i10 = 0;
        while (i8 < objArr.length && (iIndexOf = strValueOf.indexOf("%s", i10)) != -1) {
            sb.append((CharSequence) strValueOf, i10, iIndexOf);
            sb.append(objArr[i8]);
            i10 = iIndexOf + 2;
            i8++;
        }
        sb.append((CharSequence) strValueOf, i10, strValueOf.length());
        if (i8 < objArr.length) {
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

    public static List o(Object obj) {
        List listSingletonList = Collections.singletonList(obj);
        q0.g(listSingletonList, "singletonList(...)");
        return listSingletonList;
    }

    public static List p(Object... objArr) {
        q0.h(objArr, "elements");
        if (objArr.length <= 0) {
            return q.f30542G;
        }
        List listAsList = Arrays.asList(objArr);
        q0.g(listAsList, "asList(...)");
        return listAsList;
    }

    public static void q(String str) {
        if (Log.isLoggable("FIAM.Headless", 4)) {
            Log.i("FIAM.Headless", str);
        }
    }

    public static String r(String str) {
        return str == null ? HttpUrl.FRAGMENT_ENCODE_SET : str;
    }

    public static int s(float f8) {
        return (int) (f8 + (f8 < 0.0f ? -0.5f : 0.5f));
    }

    public static int t(int[] iArr) {
        int i8 = 0;
        for (int i9 : iArr) {
            i8 += i9;
        }
        return i8;
    }

    public static void u() {
        throw new ArithmeticException("Index overflow has happened.");
    }

    public void j(p pVar) {
        List listSingletonList = Collections.singletonList(pVar);
        y yVar = (y) this;
        if (listSingletonList.isEmpty()) {
            throw new IllegalArgumentException("enqueue needs at least one WorkRequest.");
        }
        s sVar = new s(yVar, listSingletonList);
        if (!sVar.f24834Q) {
            ((u) yVar.f24845d).m(new e(sVar));
            return;
        }
        n.d().g(s.f24829R, "Already enqueued work ids (" + TextUtils.join(", ", sVar.f24832O) + ")");
    }

    @Override // N.V
    public void a() {
    }

    @Override // N.V
    public void b() {
    }
}
