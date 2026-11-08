package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Hi, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0763Hi implements InterfaceC2044ti {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public C0936Th f13774b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public C0936Th f13775c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public C0936Th f13776d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public C0936Th f13777e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ByteBuffer f13778f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ByteBuffer f13779g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f13780h;

    public AbstractC0763Hi() {
        ByteBuffer byteBuffer = InterfaceC2044ti.f21093a;
        this.f13778f = byteBuffer;
        this.f13779g = byteBuffer;
        C0936Th c0936Th = C0936Th.f16698e;
        this.f13776d = c0936Th;
        this.f13777e = c0936Th;
        this.f13774b = c0936Th;
        this.f13775c = c0936Th;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2044ti
    public final C0936Th a(C0936Th c0936Th) {
        this.f13776d = c0936Th;
        this.f13777e = c(c0936Th);
        return zzg() ? this.f13777e : C0936Th.f16698e;
    }

    public abstract C0936Th c(C0936Th c0936Th);

    public final ByteBuffer d(int i8) {
        if (this.f13778f.capacity() < i8) {
            this.f13778f = ByteBuffer.allocateDirect(i8).order(ByteOrder.nativeOrder());
        } else {
            this.f13778f.clear();
        }
        ByteBuffer byteBuffer = this.f13778f;
        this.f13779g = byteBuffer;
        return byteBuffer;
    }

    public void e() {
    }

    public void f() {
    }

    public void g() {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2044ti
    public ByteBuffer zzb() {
        ByteBuffer byteBuffer = this.f13779g;
        this.f13779g = InterfaceC2044ti.f21093a;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2044ti
    public final void zzc() {
        this.f13779g = InterfaceC2044ti.f21093a;
        this.f13780h = false;
        this.f13774b = this.f13776d;
        this.f13775c = this.f13777e;
        e();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2044ti
    public final void zzd() {
        this.f13780h = true;
        f();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2044ti
    public final void zzf() {
        zzc();
        this.f13778f = InterfaceC2044ti.f21093a;
        C0936Th c0936Th = C0936Th.f16698e;
        this.f13776d = c0936Th;
        this.f13777e = c0936Th;
        this.f13774b = c0936Th;
        this.f13775c = c0936Th;
        g();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2044ti
    public boolean zzg() {
        return this.f13777e != C0936Th.f16698e;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2044ti
    public boolean zzh() {
        return this.f13780h && this.f13779g == InterfaceC2044ti.f21093a;
    }
}
