package Y;

import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import java.util.LinkedHashMap;
import p032e0.EnumC2981i;
import p032e0.InterfaceC2978f;

/* JADX INFO: loaded from: classes.dex */
public final class a0 implements InterfaceC2978f, S1.g, p032e0.L {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final AbstractComponentCallbacksC0406s f7831G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final p032e0.K f7832H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public p032e0.o f7833I = null;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public S1.f f7834J = null;

    public a0(AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s, p032e0.K k8) {
        this.f7831G = abstractComponentCallbacksC0406s;
        this.f7832H = k8;
    }

    @Override // p032e0.InterfaceC2978f
    public final p040f0.c a() {
        Application application;
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = this.f7831G;
        Context applicationContext = abstractComponentCallbacksC0406s.M().getApplicationContext();
        while (true) {
            if (!(applicationContext instanceof ContextWrapper)) {
                application = null;
                break;
            }
            if (applicationContext instanceof Application) {
                application = (Application) applicationContext;
                break;
            }
            applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
        }
        p040f0.c cVar = new p040f0.c();
        LinkedHashMap linkedHashMap = cVar.f25133a;
        if (application != null) {
            linkedHashMap.put(p032e0.H.f24728J, application);
        }
        linkedHashMap.put(p032e0.B.f24713G, this);
        linkedHashMap.put(p032e0.B.f24714H, this);
        Bundle bundle = abstractComponentCallbacksC0406s.f7937M;
        if (bundle != null) {
            linkedHashMap.put(p032e0.B.f24715I, bundle);
        }
        return cVar;
    }

    public final void b(EnumC2981i enumC2981i) {
        this.f7833I.f(enumC2981i);
    }

    @Override // p032e0.L
    public final p032e0.K c() {
        e();
        return this.f7832H;
    }

    @Override // S1.g
    public final S1.e d() {
        e();
        return this.f7834J.f6394b;
    }

    public final void e() {
        if (this.f7833I == null) {
            this.f7833I = new p032e0.o(this);
            S1.f fVarW = F2.G.w(this);
            this.f7834J = fVarW;
            fVarW.a();
            p032e0.B.b(this);
        }
    }

    @Override // p032e0.m
    public final p032e0.o h() {
        e();
        return this.f7833I;
    }
}
