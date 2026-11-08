package com.google.android.gms.internal.pal;

import A0.C0022w;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public abstract class C extends AbstractC2732i {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final D f23474G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public D f23475H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f23476I = false;

    public C(D d6) {
        this.f23474G = d6;
        this.f23475H = (D) d6.l(4);
    }

    public static final void a(D d6, D d8) {
        C2725h0.f23828c.a(d6.getClass()).zzg(d6, d8);
    }

    public final void b(D d6) {
        if (this.f23476I) {
            f();
            this.f23476I = false;
        }
        a(this.f23475H, d6);
    }

    public final void c(byte[] bArr, int i8, C2851x c2851x) throws L {
        if (this.f23476I) {
            f();
            this.f23476I = false;
        }
        try {
            C2725h0.f23828c.a(this.f23475H.getClass()).a(this.f23475H, bArr, 0, i8, new C0022w(c2851x));
        } catch (L e8) {
            throw e8;
        } catch (IOException e9) {
            throw new RuntimeException("Reading from byte array should not throw IOException.", e9);
        } catch (IndexOutOfBoundsException unused) {
            throw L.e();
        }
    }

    public final Object clone() {
        C c8 = (C) this.f23474G.l(5);
        c8.b(e());
        return c8;
    }

    public final D d() {
        D dE = e();
        if (dE.g()) {
            return dE;
        }
        throw new C2773n0();
    }

    public final D e() {
        if (this.f23476I) {
            return this.f23475H;
        }
        D d6 = this.f23475H;
        C2725h0.f23828c.a(d6.getClass()).zzf(d6);
        this.f23476I = true;
        return this.f23475H;
    }

    public final void f() {
        D d6 = (D) this.f23475H.l(4);
        a(d6, this.f23475H);
        this.f23475H = d6;
    }
}
