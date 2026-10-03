package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.ads.SG;
import java.io.IOException;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.r2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2626r2 extends com.google.android.gms.internal.atv_ads_framework.D {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final AbstractC2631s2 f23246G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public AbstractC2631s2 f23247H;

    public AbstractC2626r2(AbstractC2631s2 abstractC2631s2) {
        this.f23246G = abstractC2631s2;
        if (abstractC2631s2.n()) {
            throw new IllegalArgumentException("Default instance must be immutable.");
        }
        this.f23247H = (AbstractC2631s2) abstractC2631s2.p(4);
    }

    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final AbstractC2626r2 clone() {
        AbstractC2626r2 abstractC2626r2 = (AbstractC2626r2) this.f23246G.p(5);
        abstractC2626r2.f23247H = f();
        return abstractC2626r2;
    }

    public final void c(AbstractC2631s2 abstractC2631s2) {
        AbstractC2631s2 abstractC2631s3 = this.f23246G;
        if (abstractC2631s3.equals(abstractC2631s2)) {
            return;
        }
        if (!this.f23247H.n()) {
            AbstractC2631s2 abstractC2631s4 = (AbstractC2631s2) abstractC2631s3.p(4);
            V2.f23021c.a(abstractC2631s4.getClass()).zzg(abstractC2631s4, this.f23247H);
            this.f23247H = abstractC2631s4;
        }
        AbstractC2631s2 abstractC2631s5 = this.f23247H;
        V2.f23021c.a(abstractC2631s5.getClass()).zzg(abstractC2631s5, abstractC2631s2);
    }

    public final void d(byte[] bArr, int i8, C2600m2 c2600m2) throws B2 {
        if (!this.f23247H.n()) {
            AbstractC2631s2 abstractC2631s2 = (AbstractC2631s2) this.f23246G.p(4);
            V2.f23021c.a(abstractC2631s2.getClass()).zzg(abstractC2631s2, this.f23247H);
            this.f23247H = abstractC2631s2;
        }
        try {
            V2.f23021c.a(this.f23247H.getClass()).c(this.f23247H, bArr, 0, i8, new SG(c2600m2));
        } catch (B2 e8) {
            throw e8;
        } catch (IOException e9) {
            throw new RuntimeException("Reading from byte array should not throw IOException.", e9);
        } catch (IndexOutOfBoundsException unused) {
            throw new B2("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }

    public final AbstractC2631s2 e() {
        AbstractC2631s2 abstractC2631s2F = f();
        abstractC2631s2F.getClass();
        if (AbstractC2631s2.o(abstractC2631s2F, true)) {
            return abstractC2631s2F;
        }
        throw new Y.r(10, 0);
    }

    public final AbstractC2631s2 f() {
        if (!this.f23247H.n()) {
            return this.f23247H;
        }
        this.f23247H.j();
        return this.f23247H;
    }

    public final void g() {
        if (this.f23247H.n()) {
            return;
        }
        AbstractC2631s2 abstractC2631s2 = (AbstractC2631s2) this.f23246G.p(4);
        V2.f23021c.a(abstractC2631s2.getClass()).zzg(abstractC2631s2, this.f23247H);
        this.f23247H = abstractC2631s2;
    }
}
