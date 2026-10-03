package com.google.android.gms.internal.cast;

import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class I1 implements Future {
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final String toString() {
        return ((J1) this).f22475G.toString();
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        return ((J1) this).f22475G.get();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return ((J1) this).f22475G.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return ((J1) this).f22475G.isDone();
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j8, TimeUnit timeUnit) {
        return ((J1) this).f22475G.get(j8, timeUnit);
    }
}
