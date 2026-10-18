package W0;

import android.support.v4.media.session.PlaybackStateCompat;
import com.google.android.gms.internal.measurement.H1;

/* JADX INFO: renamed from: W0.k, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0378k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f7424a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f7425b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f7426c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f7427d;

    public AbstractC0378k(InterfaceC0375h interfaceC0375h, InterfaceC0377j interfaceC0377j, long j8, long j9, long j10, long j11, long j12, int i8) {
        this.f7426c = interfaceC0377j;
        this.f7424a = i8;
        this.f7425b = new C0373f(interfaceC0375h, j8, j9, j10, j11, j12);
    }

    public static int c(t tVar, long j8, w wVar) {
        if (j8 == tVar.r()) {
            return 0;
        }
        wVar.f7458a = j8;
        return 1;
    }

    public static final int g(com.google.android.gms.internal.ads.M m7, long j8, w wVar) {
        if (j8 == m7.zzf()) {
            return 0;
        }
        wVar.f7458a = j8;
        return 1;
    }

    public final int a(t tVar, w wVar) {
        while (true) {
            C0374g c0374g = (C0374g) this.f7427d;
            H1.j(c0374g);
            long j8 = c0374g.f7417f;
            long j9 = c0374g.f7418g;
            long j10 = c0374g.f7419h;
            long j11 = j9 - j8;
            long j12 = this.f7424a;
            Object obj = this.f7426c;
            if (j11 <= j12) {
                this.f7427d = null;
                ((InterfaceC0377j) obj).e();
                b(j8, false);
                return c(tVar, j8, wVar);
            }
            long jR = j10 - tVar.r();
            if (jR < 0 || jR > PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
                return c(tVar, j10, wVar);
            }
            tVar.n((int) jR);
            tVar.m();
            C0376i c0376iA = ((InterfaceC0377j) obj).a(tVar, c0374g.f7413b);
            int i8 = c0376iA.f7421a;
            if (i8 == -3) {
                this.f7427d = null;
                ((InterfaceC0377j) obj).e();
                b(j10, false);
                return c(tVar, j10, wVar);
            }
            long j13 = c0376iA.f7422b;
            long j14 = c0376iA.f7423c;
            if (i8 == -2) {
                c0374g.f7415d = j13;
                c0374g.f7417f = j14;
                c0374g.f7419h = C0374g.a(c0374g.f7413b, j13, c0374g.f7416e, j14, c0374g.f7418g, c0374g.f7414c);
            } else {
                if (i8 != -1) {
                    if (i8 != 0) {
                        throw new IllegalStateException("Invalid case");
                    }
                    long jR2 = j14 - tVar.r();
                    if (jR2 >= 0 && jR2 <= PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
                        tVar.n((int) jR2);
                    }
                    this.f7427d = null;
                    ((InterfaceC0377j) obj).e();
                    b(j14, true);
                    return c(tVar, j14, wVar);
                }
                c0374g.f7416e = j13;
                c0374g.f7418g = j14;
                c0374g.f7419h = C0374g.a(c0374g.f7413b, c0374g.f7415d, j13, c0374g.f7417f, j14, c0374g.f7414c);
            }
        }
    }

    public final void d(long j8) {
        Object obj = this.f7427d;
        if (((C0374g) obj) == null || ((C0374g) obj).f7412a != j8) {
            C0373f c0373f = (C0373f) this.f7425b;
            this.f7427d = new C0374g(j8, c0373f.f7405a.b(j8), c0373f.f7407c, c0373f.f7408d, c0373f.f7409e, c0373f.f7410f, c0373f.f7411g);
        }
    }

    public final int e(com.google.android.gms.internal.ads.M m7, w wVar) {
        while (true) {
            C0374g c0374g = (C0374g) this.f7427d;
            p113o3.r.x(c0374g);
            long j8 = c0374g.f7417f;
            long j9 = c0374g.f7418g;
            long j10 = c0374g.f7419h;
            long j11 = j9 - j8;
            long j12 = this.f7424a;
            Object obj = this.f7426c;
            if (j11 <= j12) {
                this.f7427d = null;
                ((com.google.android.gms.internal.ads.D) obj).zzb();
                return g(m7, j8, wVar);
            }
            long jZzf = j10 - m7.zzf();
            if (jZzf < 0 || jZzf > PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
                return g(m7, j10, wVar);
            }
            m7.q((int) jZzf);
            m7.zzj();
            com.google.android.gms.internal.ads.C cE = ((com.google.android.gms.internal.ads.D) obj).e(m7, c0374g.f7413b);
            int i8 = cE.f12528a;
            if (i8 == -3) {
                this.f7427d = null;
                ((com.google.android.gms.internal.ads.D) obj).zzb();
                return g(m7, j10, wVar);
            }
            long j13 = cE.f12529b;
            long j14 = cE.f12530c;
            if (i8 == -2) {
                c0374g.f7415d = j13;
                c0374g.f7417f = j14;
                c0374g.f7419h = C0374g.b(c0374g.f7413b, j13, c0374g.f7416e, j14, c0374g.f7418g, c0374g.f7414c);
            } else {
                if (i8 != -1) {
                    long jZzf2 = j14 - m7.zzf();
                    if (jZzf2 >= 0 && jZzf2 <= PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
                        m7.q((int) jZzf2);
                    }
                    this.f7427d = null;
                    ((com.google.android.gms.internal.ads.D) obj).zzb();
                    return g(m7, j14, wVar);
                }
                c0374g.f7416e = j13;
                c0374g.f7418g = j14;
                c0374g.f7419h = C0374g.b(c0374g.f7413b, c0374g.f7415d, j13, c0374g.f7417f, j14, c0374g.f7414c);
            }
        }
    }

    public final void f(long j8) {
        C0374g c0374g = (C0374g) this.f7427d;
        if (c0374g == null || c0374g.f7412a != j8) {
            com.google.android.gms.internal.ads.A a8 = (com.google.android.gms.internal.ads.A) this.f7425b;
            this.f7427d = new C0374g(j8, a8.f11910a.c(j8), a8.f11912c, a8.f11913d, a8.f11914e, a8.f11915f);
        }
    }

    public AbstractC0378k(com.google.android.gms.internal.ads.B b8, com.google.android.gms.internal.ads.D d6, long j8, long j9, long j10, long j11, long j12, int i8) {
        this.f7426c = d6;
        this.f7424a = i8;
        this.f7425b = new com.google.android.gms.internal.ads.A(b8, j8, j9, j10, j11, j12);
    }

    public void b(long j8, boolean z7) {
    }
}
