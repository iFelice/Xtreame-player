package androidx.media3.exoplayer.dash;

import E0.a;
import E0.m;
import F0.e;
import G0.j;
import O0.InterfaceC0299x;
import U4.b;
import java.util.List;
import p086l.C3016a;
import p094m0.E;
import p094m0.I;
import p141s0.InterfaceC3183h;

/* JADX INFO: loaded from: classes.dex */
public final class DashMediaSource$Factory implements InterfaceC0299x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f9453a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InterfaceC3183h f9454b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public j f9455c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final b f9456d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final b f9457e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f9458f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f9459g;

    public DashMediaSource$Factory(InterfaceC3183h interfaceC3183h) {
        m mVar = new m(interfaceC3183h);
        this.f9453a = mVar;
        this.f9454b = interfaceC3183h;
        this.f9455c = new j();
        this.f9457e = new b();
        this.f9458f = 30000L;
        this.f9459g = 5000000L;
        this.f9456d = new b(25);
        ((C3016a) mVar.f2532c).f26217a = true;
    }

    @Override // O0.InterfaceC0299x
    public final InterfaceC0299x a(j jVar) {
        this.f9455c = jVar;
        return this;
    }

    public final E0.j b(I i8) {
        E e8 = i8.f26702b;
        e8.getClass();
        e eVar = new e();
        List list = e8.f26678d;
        return new E0.j(i8, this.f9454b, !list.isEmpty() ? new p096m2.e(5, eVar, list) : eVar, this.f9453a, this.f9456d, this.f9455c.b(i8), this.f9457e, this.f9458f, this.f9459g);
    }
}
