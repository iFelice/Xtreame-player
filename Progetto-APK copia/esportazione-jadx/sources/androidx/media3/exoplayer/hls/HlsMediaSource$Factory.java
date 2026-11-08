package androidx.media3.exoplayer.hls;

import G0.j;
import G0.r;
import H0.c;
import H0.d;
import H0.k;
import H0.o;
import I0.s;
import N.C0260i;
import O0.InterfaceC0299x;
import U4.b;
import java.util.List;
import p094m0.E;
import p094m0.I;
import p141s0.InterfaceC3183h;

/* JADX INFO: loaded from: classes.dex */
public final class HlsMediaSource$Factory implements InterfaceC0299x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f9460a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public k f9461b;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public j f9466g = new j();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final b f9463d = new b();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final C0260i f9464e = I0.c.f3802U;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final b f9467h = new b();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final b f9465f = new b();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f9469j = 1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f9470k = -9223372036854775807L;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f9468i = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f9462c = true;

    public HlsMediaSource$Factory(InterfaceC3183h interfaceC3183h) {
        this.f9460a = new c(interfaceC3183h);
    }

    @Override // O0.InterfaceC0299x
    public final InterfaceC0299x a(j jVar) {
        this.f9466g = jVar;
        return this;
    }

    public final o b(I i8) {
        E e8 = i8.f26702b;
        e8.getClass();
        if (this.f9461b == null) {
            this.f9461b = new d();
        }
        k kVar = this.f9461b;
        d dVar = (d) kVar;
        dVar.f3440c = this.f9462c;
        dVar.f3441d = 0;
        s cVar = this.f9463d;
        List list = e8.f26678d;
        if (!list.isEmpty()) {
            cVar = new p096m2.c(5, cVar, list);
        }
        b bVar = this.f9465f;
        r rVarB = this.f9466g.b(i8);
        this.f9464e.getClass();
        b bVar2 = this.f9467h;
        I0.c cVar2 = new I0.c(this.f9460a, bVar2, cVar);
        boolean z7 = this.f9468i;
        return new o(i8, this.f9460a, kVar, bVar, rVarB, bVar2, cVar2, this.f9470k, z7, this.f9469j);
    }
}
