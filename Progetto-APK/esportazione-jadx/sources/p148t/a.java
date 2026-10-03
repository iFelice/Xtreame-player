package p148t;

import P3.b;
import android.graphics.Color;
import android.os.Bundle;
import com.google.android.gms.internal.ads.C1786oj;
import com.google.android.gms.internal.ads.HJ;
import com.google.android.gms.internal.ads.MJ;
import com.google.android.gms.internal.ads.NJ;
import com.google.protobuf.U2;
import java.nio.ByteBuffer;
import java.util.HashMap;
import p149t0.r;
import p170w.d;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class a {
    public static long a(r rVar) {
        byte[] bArr = (byte[]) rVar.f30238b.get("exo_len");
        if (bArr != null) {
            return ByteBuffer.wrap(bArr).getLong();
        }
        return -1L;
    }

    public static MJ b(NJ nj, int i8) {
        return HJ.b(new C1786oj(nj, i8));
    }

    public static String c(String str, String str2) {
        return str + str2;
    }

    public static StringBuilder d(String str, long j8, String str2) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(j8);
        sb.append(str2);
        return sb;
    }

    public static void e(int i8, int i9, int i10, HashMap map, String str) {
        map.put(str, Integer.valueOf(Color.rgb(i8, i9, i10)));
    }

    public static /* synthetic */ void f(int i8, String str) {
        if (i8 == 0) {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            String name = q0.class.getName();
            int i9 = 0;
            while (!stackTrace[i9].getClassName().equals(name)) {
                i9++;
            }
            while (stackTrace[i9].getClassName().equals(name)) {
                i9++;
            }
            StackTraceElement stackTraceElement = stackTrace[i9];
            StringBuilder sbQ = U2.q("Parameter specified as non-null is null: method ", stackTraceElement.getClassName(), ".", stackTraceElement.getMethodName(), ", parameter ");
            sbQ.append(str);
            NullPointerException nullPointerException = new NullPointerException(sbQ.toString());
            q0.F(q0.class.getName(), nullPointerException);
            throw nullPointerException;
        }
    }

    public static void g(b bVar, Bundle bundle, String str) {
        bVar.getClass();
        bundle.putLong(str, System.currentTimeMillis());
    }

    public static void h(StringBuilder sb, String str, String str2, String str3, String str4) {
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
    }

    public static /* synthetic */ void i(d dVar) {
        if (dVar != null) {
            throw new ClassCastException();
        }
    }

    public static /* synthetic */ String j(int i8) {
        switch (i8) {
            case 1:
                return "NONE";
            case 2:
                return "LEFT";
            case 3:
                return "TOP";
            case 4:
                return "RIGHT";
            case 5:
                return "BOTTOM";
            case 6:
                return "BASELINE";
            case 7:
                return "CENTER";
            case 8:
                return "CENTER_X";
            case 9:
                return "CENTER_Y";
            default:
                throw null;
        }
    }

    public static /* synthetic */ String k(int i8) {
        if (i8 == 1) {
            return "FIXED";
        }
        if (i8 == 2) {
            return "WRAP_CONTENT";
        }
        if (i8 == 3) {
            return "MATCH_CONSTRAINT";
        }
        if (i8 == 4) {
            return "MATCH_PARENT";
        }
        throw null;
    }

    public static /* synthetic */ String l(int i8) {
        if (i8 == 1) {
            return "SOURCE";
        }
        if (i8 != 2) {
            return i8 != 3 ? "null" : "NONE";
        }
        return "TRANSFORMED";
    }

    public static /* synthetic */ String m(int i8) {
        switch (i8) {
            case 1:
                return "UNKNOWN";
            case 2:
                return "HORIZONTAL_DIMENSION";
            case 3:
                return "VERTICAL_DIMENSION";
            case 4:
                return "LEFT";
            case 5:
                return "RIGHT";
            case 6:
                return "TOP";
            case 7:
                return "BOTTOM";
            case 8:
                return "BASELINE";
            default:
                return "null";
        }
    }

    public static /* synthetic */ String n(int i8) {
        if (i8 == 1) {
            return "INITIALIZE";
        }
        if (i8 != 2) {
            return i8 != 3 ? "null" : "DECODE_DATA";
        }
        return "SWITCH_TO_SOURCE_SERVICE";
    }

    public static /* synthetic */ String o(int i8) {
        switch (i8) {
            case 1:
                return "INITIALIZE";
            case 2:
                return "RESOURCE_CACHE";
            case 3:
                return "DATA_CACHE";
            case 4:
                return "SOURCE";
            case 5:
                return "ENCODE";
            case 6:
                return "FINISHED";
            default:
                return "null";
        }
    }
}
