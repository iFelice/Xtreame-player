package p094m0;

import com.google.android.gms.internal.measurement.H1;
import com.google.protobuf.U2;
import java.util.Arrays;
import okhttp3.HttpUrl;
import okhttp3.internal.http2.Http2;
import p117p0.M;
import p117p0.x;

/* JADX INFO: loaded from: classes.dex */
public final class g0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f26857a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f26858b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f26859c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C3136t[] f26860d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f26861e;

    static {
        M.L(0);
        M.L(1);
    }

    public g0(String str, C3136t... c3136tArr) {
        H1.d(c3136tArr.length > 0);
        this.f26858b = str;
        this.f26860d = c3136tArr;
        this.f26857a = c3136tArr.length;
        int i8 = O.i(c3136tArr[0].f27041o);
        this.f26859c = i8 == -1 ? O.i(c3136tArr[0].f27040n) : i8;
        String str2 = c3136tArr[0].f27030d;
        str2 = (str2 == null || str2.equals("und")) ? HttpUrl.FRAGMENT_ENCODE_SET : str2;
        int i9 = c3136tArr[0].f27032f | Http2.INITIAL_MAX_FRAME_SIZE;
        for (int i10 = 1; i10 < c3136tArr.length; i10++) {
            String str3 = c3136tArr[i10].f27030d;
            if (!str2.equals((str3 == null || str3.equals("und")) ? HttpUrl.FRAGMENT_ENCODE_SET : str3)) {
                c("languages", c3136tArr[0].f27030d, c3136tArr[i10].f27030d, i10);
                return;
            } else {
                if (i9 != (c3136tArr[i10].f27032f | Http2.INITIAL_MAX_FRAME_SIZE)) {
                    c("role flags", Integer.toBinaryString(c3136tArr[0].f27032f), Integer.toBinaryString(c3136tArr[i10].f27032f), i10);
                    return;
                }
            }
        }
    }

    public static void c(String str, String str2, String str3, int i8) {
        StringBuilder sbQ = U2.q("Different ", str, " combined in one TrackGroup: '", str2, "' (track 0) and '");
        sbQ.append(str3);
        sbQ.append("' (track ");
        sbQ.append(i8);
        sbQ.append(")");
        x.d("TrackGroup", HttpUrl.FRAGMENT_ENCODE_SET, new IllegalStateException(sbQ.toString()));
    }

    public final C3136t a() {
        return this.f26860d[0];
    }

    public final int b(C3136t c3136t) {
        int i8 = 0;
        while (true) {
            C3136t[] c3136tArr = this.f26860d;
            if (i8 >= c3136tArr.length) {
                return -1;
            }
            if (c3136t == c3136tArr[i8]) {
                return i8;
            }
            i8++;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || g0.class != obj.getClass()) {
            return false;
        }
        g0 g0Var = (g0) obj;
        return this.f26858b.equals(g0Var.f26858b) && Arrays.equals(this.f26860d, g0Var.f26860d);
    }

    public final int hashCode() {
        if (this.f26861e == 0) {
            this.f26861e = Arrays.hashCode(this.f26860d) + U2.e(this.f26858b, 527, 31);
        }
        return this.f26861e;
    }

    public final String toString() {
        return this.f26858b + ": " + Arrays.toString(this.f26860d);
    }
}
