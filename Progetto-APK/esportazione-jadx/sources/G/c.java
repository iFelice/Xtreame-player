package G;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.widget.ImageView;
import com.google.android.gms.internal.ads.AbstractC2090uc;
import com.google.android.gms.internal.ads.C1669mL;
import com.google.android.gms.internal.ads.C1707n7;
import com.google.android.gms.internal.ads.C1759o7;
import com.google.android.gms.internal.ads.C2032tL;
import com.google.android.gms.internal.ads.C7;
import com.google.android.gms.internal.ads.D7;
import com.google.android.gms.internal.ads.InterfaceC1119bo;
import com.google.android.gms.internal.ads.InterfaceC1152cL;
import com.google.android.gms.internal.ads.InterfaceC1787ok;
import com.google.android.gms.internal.ads.InterfaceC1942rk;
import com.google.android.gms.internal.ads.InterfaceC2121v6;
import com.google.android.gms.internal.ads.ViewTreeObserverOnGlobalLayoutListenerC0920Sf;
import com.google.android.gms.internal.measurement.H1;
import java.nio.ByteBuffer;
import p117p0.D;
import p125q0.q;
import p125q0.r;
import p125q0.s;

/* JADX INFO: loaded from: classes.dex */
public final class c implements N2.e, InterfaceC2121v6, InterfaceC1942rk, InterfaceC1119bo {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f3279G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public boolean f3280H;

    public c() {
        this.f3279G = 5;
    }

    @Override // N2.e
    public boolean a(Object obj, N2.d dVar) {
        Drawable drawable = (Drawable) obj;
        M2.g gVar = (M2.g) dVar;
        Drawable drawable2 = ((ImageView) gVar.f4790G).getDrawable();
        if (drawable2 == null) {
            drawable2 = new ColorDrawable(0);
        }
        TransitionDrawable transitionDrawable = new TransitionDrawable(new Drawable[]{drawable2, drawable});
        transitionDrawable.setCrossFadeEnabled(this.f3280H);
        transitionDrawable.startTransition(this.f3279G);
        ((ImageView) gVar.f4790G).setImageDrawable(transitionDrawable);
        return true;
    }

    public synchronized void b() {
        while (!this.f3280H) {
            wait();
        }
    }

    public synchronized void c() {
        boolean z7 = false;
        while (!this.f3280H) {
            try {
                wait();
            } catch (InterruptedException unused) {
                z7 = true;
            }
        }
        if (z7) {
            Thread.currentThread().interrupt();
        }
    }

    public synchronized boolean d() {
        boolean z7;
        z7 = this.f3280H;
        this.f3280H = false;
        return z7;
    }

    public synchronized boolean e() {
        if (this.f3280H) {
            return false;
        }
        this.f3280H = true;
        notifyAll();
        return true;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2121v6
    public void g(C7 c8) {
        int i8 = ViewTreeObserverOnGlobalLayoutListenerC0920Sf.f16444H0;
        C1707n7 c1707n7A = C1759o7.A();
        boolean zB = ((C1759o7) c1707n7A.f20255H).B();
        boolean z7 = this.f3280H;
        if (zB != z7) {
            c1707n7A.d();
            C1759o7.C((C1759o7) c1707n7A.f20255H, z7);
        }
        int i9 = this.f3279G;
        c1707n7A.d();
        C1759o7.D((C1759o7) c1707n7A.f20255H, i9);
        C1759o7 c1759o7 = (C1759o7) c1707n7A.b();
        c8.d();
        D7.I((D7) c8.f20255H, c1759o7);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1942rk, com.google.android.gms.internal.ads.InterfaceC1218dk
    /* JADX INFO: renamed from: zza */
    public void mo0zza(Object obj) {
        switch (this.f3279G) {
            case 2:
                ((InterfaceC1787ok) obj).m(this.f3280H);
                break;
            case 3:
                ((InterfaceC1787ok) obj).p(this.f3280H);
                break;
            default:
                C2032tL c2032tL = (C2032tL) ((InterfaceC1152cL) obj);
                c2032tL.i(c2032tL.l(), 23, new C1669mL(3, (AbstractC2090uc) null));
                break;
        }
    }

    public c(int i8) {
        this.f3279G = 4;
    }

    public c(boolean z7) {
        this.f3279G = 1;
        this.f3280H = z7;
    }

    public /* synthetic */ c(boolean z7, int i8) {
        this.f3279G = i8;
        this.f3280H = z7;
    }

    public c(s sVar, r rVar) throws q {
        this.f3279G = 0;
        int i8 = rVar.f29512a;
        H1.d(i8 == 6 || i8 == 3);
        ByteBuffer byteBuffer = rVar.f29513b;
        byte[] bArr = new byte[Math.min(4, byteBuffer.remaining())];
        byteBuffer.asReadOnlyBuffer().get(bArr);
        D d6 = new D(bArr, 0, (Object) null);
        if (!sVar.f29514a) {
            if (d6.h()) {
                this.f3280H = false;
                return;
            }
            int i9 = d6.i(2);
            boolean zH = d6.h();
            if (sVar.f29515b) {
                throw new q();
            }
            if (!zH) {
                this.f3280H = true;
                return;
            }
            boolean zH2 = (i9 == 3 || i9 == 0) ? true : d6.h();
            d6.t();
            if (!(!sVar.f29517d)) {
                if (d6.h()) {
                    if (!(!sVar.f29518e)) {
                        d6.t();
                    } else {
                        throw new q();
                    }
                }
                if (!sVar.f29516c) {
                    if (i9 != 3) {
                        d6.t();
                    }
                    d6.u(sVar.f29519f);
                    if (i9 != 2 && i9 != 0 && !zH2) {
                        d6.u(3);
                    }
                    this.f3280H = i9 == 3 || i9 == 0 || d6.i(8) != 0;
                    return;
                }
                throw new q();
            }
            throw new q();
        }
        throw new q();
    }
}
