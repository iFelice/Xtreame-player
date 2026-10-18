package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class QD extends p039f.H {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f15998c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ QD(byte[] bArr, int i8) {
        super(bArr, 4);
        this.f15998c = i8;
    }

    @Override // p039f.H
    public final OD k(int i8, byte[] bArr) {
        switch (this.f15998c) {
            case 0:
                return new OD(bArr, i8, 0);
            default:
                return new OD(bArr, i8, 1);
        }
    }
}
