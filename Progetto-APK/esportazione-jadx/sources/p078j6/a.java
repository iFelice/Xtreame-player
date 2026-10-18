package p078j6;

import com.google.android.gms.internal.measurement.Q1;
import java.io.PrintStream;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends Q1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f25718b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f25719c;

    public /* synthetic */ a(Object obj, int i8) {
        this.f25718b = i8;
        this.f25719c = obj;
    }

    public final void d(String str) {
        int i8 = this.f25718b;
        Object obj = this.f25719c;
        switch (i8) {
            case 0:
                ((PrintStream) obj).println((Object) str);
                break;
            default:
                ((PrintWriter) obj).println((Object) str);
                break;
        }
    }
}
