package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes.dex */
public final class E extends C {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final G f22440J;

    public E(G g8, int i8) {
        super(g8.size(), i8);
        this.f22440J = g8;
    }

    @Override // com.google.android.gms.internal.cast.C
    public final Object c(int i8) {
        return this.f22440J.get(i8);
    }
}
