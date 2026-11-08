package p125q0;

import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class c extends e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f29443c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ArrayList f29444d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f29445e;

    public c(int i8, long j8) {
        super(i8);
        this.f29443c = j8;
        this.f29444d = new ArrayList();
        this.f29445e = new ArrayList();
    }

    public final c e(int i8) {
        ArrayList arrayList = this.f29445e;
        int size = arrayList.size();
        for (int i9 = 0; i9 < size; i9++) {
            c cVar = (c) arrayList.get(i9);
            if (cVar.f29448b == i8) {
                return cVar;
            }
        }
        return null;
    }

    public final d f(int i8) {
        ArrayList arrayList = this.f29444d;
        int size = arrayList.size();
        for (int i9 = 0; i9 < size; i9++) {
            d dVar = (d) arrayList.get(i9);
            if (dVar.f29448b == i8) {
                return dVar;
            }
        }
        return null;
    }

    @Override // p125q0.e
    public final String toString() {
        return e.a(this.f29448b) + " leaves: " + Arrays.toString(this.f29444d.toArray()) + " containers: " + Arrays.toString(this.f29445e.toArray());
    }
}
