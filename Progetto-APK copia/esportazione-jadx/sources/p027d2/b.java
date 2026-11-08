package p027d2;

import D0.U;
import U1.f;
import com.google.android.gms.common.api.d;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ExecutorService f24609a = Executors.newFixedThreadPool(Math.max(2, Math.min(Runtime.getRuntime().availableProcessors() - 1, 4)), new a(false));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ExecutorService f24610b = Executors.newFixedThreadPool(Math.max(2, Math.min(Runtime.getRuntime().availableProcessors() - 1, 4)), new a(true));

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final y f24611c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final f f24612d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final U f24613e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f24614f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f24615g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f24616h;

    public b(U4.b bVar) {
        String str = z.f24653a;
        this.f24611c = new y();
        this.f24612d = new f(5);
        this.f24613e = new U(22);
        this.f24614f = 4;
        this.f24615g = d.API_PRIORITY_OTHER;
        this.f24616h = 20;
    }
}
