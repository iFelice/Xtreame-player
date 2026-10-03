package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public final class N2 extends L2 {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final P2 f23608I;

    public N2(P2 p7, int i8) {
        super(p7.size(), i8);
        this.f23608I = p7;
    }

    @Override // com.google.android.gms.internal.pal.L2
    public final Object b(int i8) {
        return this.f23608I.get(i8);
    }
}
