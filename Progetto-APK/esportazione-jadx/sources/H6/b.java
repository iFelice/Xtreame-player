package H6;

import N.P;
import java.util.Iterator;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f3782a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f3783b;

    public b(c cVar, int i8) {
        q0.h(cVar, "sequence");
        this.f3782a = cVar;
        this.f3783b = i8;
        if (i8 >= 0) {
            return;
        }
        throw new IllegalArgumentException(("count must be non-negative, but was " + i8 + '.').toString());
    }

    @Override // H6.c
    public final Iterator iterator() {
        return new P(this);
    }
}
