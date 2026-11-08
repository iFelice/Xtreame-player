package U6;

import java.io.Serializable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class c implements Serializable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final ArrayList f6981G = new ArrayList();

    public final synchronized void a(d dVar) {
        this.f6981G.add(dVar);
    }

    public final synchronized d b(int i8) {
        return (d) this.f6981G.get(i8);
    }

    public final synchronized int c() {
        return this.f6981G.size();
    }
}
