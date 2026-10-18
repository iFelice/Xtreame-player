package p094m0;

import com.google.protobuf.U2;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public abstract class Q extends Exception {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f26783G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final long f26784H;

    static {
        U2.r(0, 1, 2, 3, 4);
        M.L(5);
    }

    public Q(String str, Throwable th, int i8, long j8) {
        super(str, th);
        this.f26783G = i8;
        this.f26784H = j8;
    }
}
