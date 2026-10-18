package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class I2 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final byte[] f13846f = {0, 0, 1};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f13847a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f13848b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13849c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13850d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte[] f13851e;

    public final void a(int i8, byte[] bArr, int i9) {
        if (this.f13847a) {
            int i10 = i9 - i8;
            byte[] bArr2 = this.f13851e;
            int length = bArr2.length;
            int i11 = this.f13849c + i10;
            if (length < i11) {
                this.f13851e = Arrays.copyOf(bArr2, i11 + i11);
            }
            System.arraycopy(bArr, i8, this.f13851e, this.f13849c, i10);
            this.f13849c += i10;
        }
    }
}
