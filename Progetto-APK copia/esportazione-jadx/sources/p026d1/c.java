package p026d1;

import W0.t;
import com.google.android.gms.internal.measurement.H1;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class c implements t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final t f24598a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f24599b;

    public c(t tVar, long j8) {
        this.f24598a = tVar;
        H1.d(tVar.r() >= j8);
        this.f24599b = j8;
    }

    @Override // W0.t
    public final boolean b(byte[] bArr, int i8, int i9, boolean z7) {
        return this.f24598a.b(bArr, i8, i9, z7);
    }

    @Override // W0.t
    public final void c(int i8, byte[] bArr, int i9) {
        this.f24598a.c(i8, bArr, i9);
    }

    @Override // W0.t
    public final boolean d(int i8, boolean z7) {
        return this.f24598a.d(i8, z7);
    }

    @Override // W0.t
    public final boolean e(byte[] bArr, int i8, int i9, boolean z7) {
        return this.f24598a.e(bArr, i8, i9, z7);
    }

    @Override // W0.t
    public final long f() {
        return this.f24598a.f() - this.f24599b;
    }

    @Override // W0.t
    public final void g(int i8) {
        this.f24598a.g(i8);
    }

    @Override // W0.t
    public final int h(int i8, byte[] bArr, int i9) {
        return this.f24598a.h(i8, bArr, i9);
    }

    @Override // W0.t
    public final int i(int i8) {
        return this.f24598a.i(i8);
    }

    @Override // W0.t
    public final long j() {
        return this.f24598a.j() - this.f24599b;
    }

    @Override // W0.t
    public final void l(long j8, IOException iOException) {
        this.f24598a.l(j8 + this.f24599b, iOException);
    }

    @Override // W0.t
    public final void m() {
        this.f24598a.m();
    }

    @Override // W0.t
    public final void n(int i8) {
        this.f24598a.n(i8);
    }

    @Override // W0.t
    public final boolean o(int i8, boolean z7) {
        return this.f24598a.o(i8, z7);
    }

    @Override // p094m0.InterfaceC3127j
    public final int q(byte[] bArr, int i8, int i9) {
        return this.f24598a.q(bArr, i8, i9);
    }

    @Override // W0.t
    public final long r() {
        return this.f24598a.r() - this.f24599b;
    }

    @Override // W0.t
    public final void readFully(byte[] bArr, int i8, int i9) {
        this.f24598a.readFully(bArr, i8, i9);
    }
}
