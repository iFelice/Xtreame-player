package com.google.protobuf;

import com.google.android.gms.internal.ads.CO;
import java.io.IOException;
import java.nio.charset.Charset;

/* JADX INFO: renamed from: com.google.protobuf.b1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2881b1 extends AbstractC2875a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final AbstractC2909i1 f24412G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public AbstractC2909i1 f24413H;

    public AbstractC2881b1(AbstractC2909i1 abstractC2909i1) {
        this.f24412G = abstractC2909i1;
        if (abstractC2909i1.isMutable()) {
            throw new IllegalArgumentException("Default instance must be immutable.");
        }
        this.f24413H = abstractC2909i1.newMutableInstance();
    }

    public static void h(AbstractC2909i1 abstractC2909i1, Object obj) {
        C2902g2.f24439c.b(abstractC2909i1).b(abstractC2909i1, obj);
    }

    public final AbstractC2909i1 b() {
        AbstractC2909i1 abstractC2909i1K = k();
        if (abstractC2909i1K.isInitialized()) {
            return abstractC2909i1K;
        }
        throw new z2();
    }

    @Override // com.google.protobuf.P1
    /* JADX INFO: renamed from: c */
    public AbstractC2909i1 k() {
        if (!this.f24413H.isMutable()) {
            return this.f24413H;
        }
        this.f24413H.makeImmutable();
        return this.f24413H;
    }

    public final Object clone() {
        AbstractC2881b1 abstractC2881b1NewBuilderForType = this.f24412G.newBuilderForType();
        abstractC2881b1NewBuilderForType.f24413H = k();
        return abstractC2881b1NewBuilderForType;
    }

    public final void d() {
        if (this.f24413H.isMutable()) {
            return;
        }
        e();
    }

    public void e() {
        AbstractC2909i1 abstractC2909i1NewMutableInstance = this.f24412G.newMutableInstance();
        h(abstractC2909i1NewMutableInstance, this.f24413H);
        this.f24413H = abstractC2909i1NewMutableInstance;
    }

    public final void f(AbstractC2961w abstractC2961w, O0 o4) {
        d();
        try {
            InterfaceC2914j2 interfaceC2914j2B = C2902g2.f24439c.b(this.f24413H);
            AbstractC2909i1 abstractC2909i1 = this.f24413H;
            CO co = abstractC2961w.f24529d;
            if (co == null) {
                co = new CO();
                co.f12630c = 0;
                Charset charset = AbstractC2960v1.f24524a;
                co.f12631d = abstractC2961w;
                abstractC2961w.f24529d = co;
            }
            interfaceC2914j2B.c(abstractC2909i1, co, o4);
        } catch (RuntimeException e8) {
            if (!(e8.getCause() instanceof IOException)) {
                throw e8;
            }
            throw ((IOException) e8.getCause());
        }
    }

    public final void g(AbstractC2909i1 abstractC2909i1) {
        if (this.f24412G.equals(abstractC2909i1)) {
            return;
        }
        d();
        h(this.f24413H, abstractC2909i1);
    }

    @Override // com.google.protobuf.R1
    public final Q1 getDefaultInstanceForType() {
        return this.f24412G;
    }

    @Override // com.google.protobuf.R1
    public final boolean isInitialized() {
        return AbstractC2909i1.isInitialized(this.f24413H, false);
    }
}
