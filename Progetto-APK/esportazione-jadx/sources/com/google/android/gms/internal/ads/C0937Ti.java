package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ti, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0937Ti implements InterfaceC2044ti {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f16703b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f16704c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f16705d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public C0936Th f16706e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public C0936Th f16707f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public C0936Th f16708g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public C0936Th f16709h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f16710i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public C0853Ni f16711j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ByteBuffer f16712k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ShortBuffer f16713l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public ByteBuffer f16714m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f16715n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public long f16716o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f16717p;

    @Override // com.google.android.gms.internal.ads.InterfaceC2044ti
    public final C0936Th a(C0936Th c0936Th) throws C1267ei {
        if (c0936Th.f16701c != 2) {
            throw new C1267ei(c0936Th);
        }
        int i8 = this.f16703b;
        if (i8 == -1) {
            i8 = c0936Th.f16699a;
        }
        this.f16706e = c0936Th;
        C0936Th c0936Th2 = new C0936Th(i8, c0936Th.f16700b, 2);
        this.f16707f = c0936Th2;
        this.f16710i = true;
        return c0936Th2;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2044ti
    public final void b(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            C0853Ni c0853Ni = this.f16711j;
            c0853Ni.getClass();
            ShortBuffer shortBufferAsShortBuffer = byteBuffer.asShortBuffer();
            int iRemaining = byteBuffer.remaining();
            this.f16715n += (long) iRemaining;
            int iRemaining2 = shortBufferAsShortBuffer.remaining();
            int i8 = c0853Ni.f15053b;
            int i9 = iRemaining2 / i8;
            int i10 = i9 * i8;
            short[] sArrF = c0853Ni.f(c0853Ni.f15061j, c0853Ni.f15062k, i9);
            c0853Ni.f15061j = sArrF;
            shortBufferAsShortBuffer.get(sArrF, c0853Ni.f15062k * i8, (i10 + i10) / 2);
            c0853Ni.f15062k += i9;
            c0853Ni.e();
            byteBuffer.position(byteBuffer.position() + iRemaining);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2044ti
    public final ByteBuffer zzb() {
        C0853Ni c0853Ni = this.f16711j;
        if (c0853Ni != null) {
            int i8 = c0853Ni.f15064m;
            int i9 = c0853Ni.f15053b;
            int i10 = i8 * i9;
            int i11 = i10 + i10;
            if (i11 > 0) {
                if (this.f16712k.capacity() < i11) {
                    ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(i11).order(ByteOrder.nativeOrder());
                    this.f16712k = byteBufferOrder;
                    this.f16713l = byteBufferOrder.asShortBuffer();
                } else {
                    this.f16712k.clear();
                    this.f16713l.clear();
                }
                ShortBuffer shortBuffer = this.f16713l;
                int iMin = Math.min(shortBuffer.remaining() / i9, c0853Ni.f15064m);
                int i12 = iMin * i9;
                shortBuffer.put(c0853Ni.f15063l, 0, i12);
                int i13 = c0853Ni.f15064m - iMin;
                c0853Ni.f15064m = i13;
                short[] sArr = c0853Ni.f15063l;
                System.arraycopy(sArr, i12, sArr, 0, i13 * i9);
                this.f16716o += (long) i11;
                this.f16712k.limit(i11);
                this.f16714m = this.f16712k;
            }
        }
        ByteBuffer byteBuffer = this.f16714m;
        this.f16714m = InterfaceC2044ti.f21093a;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2044ti
    public final void zzc() {
        if (zzg()) {
            C0936Th c0936Th = this.f16706e;
            this.f16708g = c0936Th;
            C0936Th c0936Th2 = this.f16707f;
            this.f16709h = c0936Th2;
            if (this.f16710i) {
                this.f16711j = new C0853Ni(c0936Th.f16699a, c0936Th.f16700b, this.f16704c, this.f16705d, c0936Th2.f16699a);
            } else {
                C0853Ni c0853Ni = this.f16711j;
                if (c0853Ni != null) {
                    c0853Ni.f15062k = 0;
                    c0853Ni.f15064m = 0;
                    c0853Ni.f15066o = 0;
                    c0853Ni.f15067p = 0;
                    c0853Ni.f15068q = 0;
                    c0853Ni.f15069r = 0;
                    c0853Ni.f15070s = 0;
                    c0853Ni.f15071t = 0;
                    c0853Ni.f15072u = 0;
                    c0853Ni.f15073v = 0;
                }
            }
        }
        this.f16714m = InterfaceC2044ti.f21093a;
        this.f16715n = 0L;
        this.f16716o = 0L;
        this.f16717p = false;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2044ti
    public final void zzd() {
        C0853Ni c0853Ni = this.f16711j;
        if (c0853Ni != null) {
            int i8 = c0853Ni.f15062k;
            int i9 = c0853Ni.f15064m;
            float f8 = c0853Ni.f15066o;
            float f9 = c0853Ni.f15054c;
            float f10 = c0853Ni.f15055d;
            int i10 = i9 + ((int) ((((i8 / (f9 / f10)) + f8) / (c0853Ni.f15056e * f10)) + 0.5f));
            int i11 = c0853Ni.f15059h;
            int i12 = i11 + i11;
            c0853Ni.f15061j = c0853Ni.f(c0853Ni.f15061j, i8, i12 + i8);
            int i13 = 0;
            while (true) {
                int i14 = c0853Ni.f15053b;
                if (i13 >= i12 * i14) {
                    break;
                }
                c0853Ni.f15061j[(i14 * i8) + i13] = 0;
                i13++;
            }
            c0853Ni.f15062k += i12;
            c0853Ni.e();
            if (c0853Ni.f15064m > i10) {
                c0853Ni.f15064m = i10;
            }
            c0853Ni.f15062k = 0;
            c0853Ni.f15069r = 0;
            c0853Ni.f15066o = 0;
        }
        this.f16717p = true;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2044ti
    public final void zzf() {
        this.f16704c = 1.0f;
        this.f16705d = 1.0f;
        C0936Th c0936Th = C0936Th.f16698e;
        this.f16706e = c0936Th;
        this.f16707f = c0936Th;
        this.f16708g = c0936Th;
        this.f16709h = c0936Th;
        ByteBuffer byteBuffer = InterfaceC2044ti.f21093a;
        this.f16712k = byteBuffer;
        this.f16713l = byteBuffer.asShortBuffer();
        this.f16714m = byteBuffer;
        this.f16703b = -1;
        this.f16710i = false;
        this.f16711j = null;
        this.f16715n = 0L;
        this.f16716o = 0L;
        this.f16717p = false;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2044ti
    public final boolean zzg() {
        if (this.f16707f.f16699a != -1) {
            return Math.abs(this.f16704c + (-1.0f)) >= 1.0E-4f || Math.abs(this.f16705d + (-1.0f)) >= 1.0E-4f || this.f16707f.f16699a != this.f16706e.f16699a;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2044ti
    public final boolean zzh() {
        if (!this.f16717p) {
            return false;
        }
        C0853Ni c0853Ni = this.f16711j;
        if (c0853Ni == null) {
            return true;
        }
        int i8 = c0853Ni.f15064m * c0853Ni.f15053b;
        return i8 + i8 == 0;
    }
}
