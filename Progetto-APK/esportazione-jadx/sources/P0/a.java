package P0;

import com.google.android.gms.internal.measurement.H1;
import p094m0.C3136t;
import p141s0.C3188m;
import p141s0.InterfaceC3184i;

/* JADX INFO: loaded from: classes.dex */
public abstract class a extends p {

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final long f5695Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final long f5696R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public c f5697S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public int[] f5698T;

    public a(InterfaceC3184i interfaceC3184i, C3188m c3188m, C3136t c3136t, int i8, Object obj, long j8, long j9, long j10, long j11, long j12) {
        super(interfaceC3184i, c3188m, c3136t, i8, obj, j8, j9, j12);
        this.f5695Q = j10;
        this.f5696R = j11;
    }

    public final int c(int i8) {
        int[] iArr = this.f5698T;
        H1.j(iArr);
        return iArr[i8];
    }
}
