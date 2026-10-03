package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public final class S3 extends p039f.H {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f23655c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ S3(byte[] bArr, int i8) {
        super(bArr, 5);
        this.f23655c = i8;
    }

    @Override // p039f.H
    public final R3 l(int i8, byte[] bArr) {
        switch (this.f23655c) {
            case 0:
                return new R3(bArr, i8, 0);
            default:
                return new R3(bArr, i8, 1);
        }
    }
}
