package com.google.protobuf;

import B0.C0073x;
import android.content.SharedPreferences;
import android.os.Parcel;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.HashMap;
import pe.hf.black20.encryption.Encrypt;

/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class U2 {
    public static String A(String str, String str2) {
        return str + str2;
    }

    public static /* synthetic */ String B(int i8) {
        switch (i8) {
            case 1:
                return "ENQUEUED";
            case 2:
                return "RUNNING";
            case 3:
                return "SUCCEEDED";
            case 4:
                return "FAILED";
            case 5:
                return "BLOCKED";
            case 6:
                return "CANCELLED";
            default:
                throw null;
        }
    }

    public static /* synthetic */ String C(int i8) {
        switch (i8) {
            case 1:
                return "NOT_REQUIRED";
            case 2:
                return "CONNECTED";
            case 3:
                return "UNMETERED";
            case 4:
                return "NOT_ROAMING";
            case 5:
                return "METERED";
            case 6:
                return "TEMPORARILY_UNMETERED";
            default:
                return "null";
        }
    }

    public static /* synthetic */ String D(int i8) {
        switch (i8) {
            case 1:
                return "ENQUEUED";
            case 2:
                return "RUNNING";
            case 3:
                return "SUCCEEDED";
            case 4:
                return "FAILED";
            case 5:
                return "BLOCKED";
            case 6:
                return "CANCELLED";
            default:
                return "null";
        }
    }

    public static /* synthetic */ String E(int i8) {
        if (i8 == 1) {
            return "LOW";
        }
        if (i8 == 2) {
            return "NORMAL";
        }
        if (i8 != 3) {
            return i8 != 4 ? "null" : "IMMEDIATE";
        }
        return "HIGH";
    }

    public static p032e0.G a(F2.G g8, D6.c cVar, p040f0.c cVar2) {
        z4.q0.f(cVar.a(), "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-java>>");
        int i8 = g8.f3116G;
        switch (i8) {
            case 0:
                switch (i8) {
                    case 0:
                        return new Y.M(true);
                    case 1:
                        throw new UnsupportedOperationException("`Factory.create(String, CreationExtras)` is not implemented. You may need to override the method and provide a custom implementation. Note that using `Factory.create(String)` is not supported and considered an error.");
                    default:
                        return new p056h0.a();
                }
            case 1:
                return new p032e0.E();
            default:
                switch (i8) {
                    case 0:
                        return new Y.M(true);
                    case 1:
                        throw new UnsupportedOperationException("`Factory.create(String, CreationExtras)` is not implemented. You may need to override the method and provide a custom implementation. Note that using `Factory.create(String)` is not supported and considered an error.");
                    default:
                        return new p056h0.a();
                }
        }
    }

    public static p126q1.b b(p126q1.m mVar, byte[] bArr, int i8, int i9) {
        z4.E eQ = z4.H.q();
        mVar.b(bArr, i8, i9, p126q1.l.f29556c, new C0073x(eQ, 23));
        return new p126q1.b(eQ.m0());
    }

    public static Object c(int i8, AbstractC2961w abstractC2961w) {
        if (i8 != 1) {
            return i8 != 2 ? abstractC2961w.n() : abstractC2961w.E();
        }
        return abstractC2961w.D();
    }

    public static final boolean d(int i8) {
        return i8 == 3 || i8 == 4 || i8 == 6;
    }

    public static int e(String str, int i8, int i9) {
        return (str.hashCode() + i8) * i9;
    }

    public static R3.a f(Parcel parcel) {
        R3.a aVarJ0 = R3.b.j0(parcel.readStrongBinder());
        parcel.recycle();
        return aVarJ0;
    }

    public static Object g(ArrayList arrayList, int i8) {
        return arrayList.get(arrayList.size() - i8);
    }

    public static String h(SharedPreferences sharedPreferences, String str, String str2, StringBuilder sb) {
        sb.append(sharedPreferences.getString(str, str2));
        return sb.toString();
    }

    public static String i(RecyclerView recyclerView, StringBuilder sb) {
        sb.append(recyclerView.B());
        return sb.toString();
    }

    public static String j(String str, int i8, String str2, int i9) {
        return str + i8 + str2 + i9;
    }

    public static String k(String str, String str2) {
        return Encrypt.a(z4.q0.q().c(str, str2));
    }

    public static String l(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    public static String m(String str, String str2, String str3, String str4) {
        return str + str2 + str3 + str4;
    }

    public static String n(StringBuilder sb, String str, String str2, String str3) {
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        return sb.toString();
    }

    public static StringBuilder o(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        return sb;
    }

    public static StringBuilder p(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(str2);
        sb.append(str3);
        return sb;
    }

    public static StringBuilder q(String str, String str2, String str3, String str4, String str5) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
        sb.append(str5);
        return sb;
    }

    public static void r(int i8, int i9, int i10, int i11, int i12) {
        p117p0.M.L(i8);
        p117p0.M.L(i9);
        p117p0.M.L(i10);
        p117p0.M.L(i11);
        p117p0.M.L(i12);
    }

    public static void s(int i8, HashMap map, String str, int i9, String str2) {
        map.put(str, Integer.valueOf(i8));
        map.put(str2, Integer.valueOf(i9));
    }

    public static void t(p021c4.A1 a8) {
        a8.d().m();
        a8.j();
    }

    public static /* synthetic */ void u(Object obj) {
        throw new ClassCastException();
    }

    public static void v(String str, int i8, String str2) {
        p117p0.x.f(str2, str + i8);
    }

    public static void w(String str, String str2, String str3) {
        p117p0.x.f(str3, str + str2);
    }

    public static void x(String str, String str2, StringBuilder sb, String str3) {
        sb.append(z4.q0.q().c(str, str2));
        sb.append(str3);
    }

    public static void y(HashMap map, String str, Integer num, int i8, String str2) {
        map.put(str, num);
        map.put(str2, Integer.valueOf(i8));
    }

    public static boolean z(String str, String str2, String str3) {
        return z4.q0.q().c(str, str2).equals(str3);
    }
}
