package E0;

import android.os.Handler;
import android.os.Message;
import java.util.TreeMap;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class t implements Handler.Callback {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final S0.d f2570G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final f f2571H;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public F0.c f2575L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public boolean f2576M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public boolean f2577N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public boolean f2578O;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final TreeMap f2574K = new TreeMap();

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Handler f2573J = M.n(this);

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final p041f1.b f2572I = new p041f1.b(1);

    public t(F0.c cVar, f fVar, S0.d dVar) {
        this.f2575L = cVar;
        this.f2571H = fVar;
        this.f2570G = dVar;
    }

    public final s a() {
        return new s(this, this.f2570G);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (this.f2578O) {
            return true;
        }
        if (message.what != 1) {
            return false;
        }
        r rVar = (r) message.obj;
        long j8 = rVar.f2563a;
        TreeMap treeMap = this.f2574K;
        long j9 = rVar.f2564b;
        Long l4 = (Long) treeMap.get(Long.valueOf(j9));
        if (l4 == null || l4.longValue() > j8) {
            treeMap.put(Long.valueOf(j9), Long.valueOf(j8));
        }
        return true;
    }
}
