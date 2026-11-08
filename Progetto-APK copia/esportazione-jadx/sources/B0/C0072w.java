package B0;

import O0.C0300y;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.gms.internal.measurement.H1;
import com.google.protobuf.U2;
import p094m0.C3136t;

/* JADX INFO: renamed from: B0.w, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0072w extends p094m0.Q {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f1112I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final String f1113J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final int f1114K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final C3136t f1115L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final int f1116M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final C0300y f1117N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final boolean f1118O;

    public C0072w(int i8, Throwable th, int i9) {
        this(i8, th, i9, null, -1, null, 4, null, false);
    }

    public final C0072w a(C0300y c0300y) {
        String message = getMessage();
        String str = p117p0.M.f28050a;
        return new C0072w(message, getCause(), this.f26783G, this.f1112I, this.f1113J, this.f1114K, this.f1115L, this.f1116M, c0300y, this.f26784H, this.f1118O);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public C0072w(int i8, Throwable th, int i9, String str, int i10, C3136t c3136t, int i11, C0300y c0300y, boolean z7) {
        String string;
        String str2;
        if (i8 != 0) {
            if (i8 != 1) {
                if (i8 != 3) {
                    string = "Unexpected runtime error";
                } else {
                    string = "Remote error";
                }
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append(" error, index=");
                sb.append(i10);
                sb.append(", format=");
                sb.append(c3136t);
                sb.append(", format_supported=");
                String str3 = p117p0.M.f28050a;
                if (i11 == 0) {
                    str2 = "NO";
                } else if (i11 == 1) {
                    str2 = "NO_UNSUPPORTED_TYPE";
                } else if (i11 == 2) {
                    str2 = "NO_UNSUPPORTED_DRM";
                } else if (i11 == 3) {
                    str2 = "NO_EXCEEDS_CAPABILITIES";
                } else if (i11 == 4) {
                    str2 = "YES";
                } else {
                    throw new IllegalStateException();
                }
                sb.append(str2);
                string = sb.toString();
            }
        } else {
            string = "Source error";
        }
        this(TextUtils.isEmpty(null) ? string : U2.A(string, ": null"), th, i9, i8, str, i10, c3136t, i11, c0300y, SystemClock.elapsedRealtime(), z7);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0072w(String str, Throwable th, int i8, int i9, String str2, int i10, C3136t c3136t, int i11, C0300y c0300y, long j8, boolean z7) {
        super(str, th, i8, j8);
        Bundle bundle = Bundle.EMPTY;
        H1.d(!z7 || i9 == 1);
        H1.d(th != null || i9 == 3);
        this.f1112I = i9;
        this.f1113J = str2;
        this.f1114K = i10;
        this.f1115L = c3136t;
        this.f1116M = i11;
        this.f1117N = c0300y;
        this.f1118O = z7;
    }
}
