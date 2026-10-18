package p166v2;

import C2.C;
import C2.D;
import C2.H;
import okhttp3.Call;
import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes.dex */
public final class b implements D {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile OkHttpClient f30560b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Call.Factory f30561a;

    public b() {
        if (f30560b == null) {
            synchronized (b.class) {
                try {
                    if (f30560b == null) {
                        f30560b = new OkHttpClient();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        this.f30561a = f30560b;
    }

    @Override // C2.D
    public final C a(H h8) {
        return new c(this.f30561a);
    }
}
