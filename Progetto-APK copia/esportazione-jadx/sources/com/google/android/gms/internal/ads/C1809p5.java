package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.p5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1809p5 extends AbstractCallableC2016t5 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f20419h;

    public C1809p5(V4 v5, V3 v7, int i8) {
        boolean z7;
        super(v5, "ErPP4PypQmbjNzzBcpPEb7SMjpueU0b2D5VyuZDUz95tFtao7lfnsWucNRKS/8//", "Gt05wIkB9VlCQDpYnwS+bvW/Sf4rdLdhAuNRhSCvQ2I=", v7, i8, 61);
        R4 r7 = v5.f16955q;
        switch (r7.f16205a) {
            case 0:
                z7 = r7.f16206b;
                break;
            default:
                z7 = r7.f16206b;
                break;
        }
        this.f20419h = z7;
    }

    @Override // com.google.android.gms.internal.ads.AbstractCallableC2016t5
    public final void a() {
        long jLongValue = ((Long) this.f21036e.invoke(null, this.f21032a.f16939a, Boolean.valueOf(this.f20419h))).longValue();
        synchronized (this.f21035d) {
            V3 v5 = this.f21035d;
            v5.d();
            C1496j4.W((C1496j4) v5.f20255H, jLongValue);
        }
    }
}
