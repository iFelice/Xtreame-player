package p019c2;

import J2.t;
import android.net.Uri;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.internal.ads.G4;
import com.google.android.gms.internal.ads.H4;
import com.google.android.gms.internal.measurement.V1;
import java.util.concurrent.Callable;
import org.chromium.support_lib_boundary.JsReplyProxyBoundaryInterface;
import p021c4.C0579f0;
import p083k3.k;
import p105n3.l;
import p113o3.J;
import p113o3.O;
import p151t2.d;
import p167v3.C3193a;

/* JADX INFO: loaded from: classes.dex */
public final class h implements Callable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10629a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f10630b;

    public /* synthetic */ h(Object obj, int i8) {
        this.f10629a = i8;
        this.f10630b = obj;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        switch (this.f10629a) {
            case 0:
                JsReplyProxyBoundaryInterface jsReplyProxyBoundaryInterface = (JsReplyProxyBoundaryInterface) this.f10630b;
                i iVar = new i();
                iVar.f10631a = jsReplyProxyBoundaryInterface;
                return iVar;
            case 1:
                synchronized (((d) this.f10630b)) {
                    try {
                        Object obj = this.f10630b;
                        if (((d) obj).f30284O == null) {
                            return null;
                        }
                        ((d) obj).j0();
                        if (((d) this.f10630b).c0()) {
                            ((d) this.f10630b).h0();
                            ((d) this.f10630b).f30286Q = 0;
                        }
                        return null;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            case 2:
                return (l) AdOverlayInfoParcel.f11636f0.remove(Long.valueOf(((AdOverlayInfoParcel) this.f10630b).f11660d0));
            case 3:
                J j8 = O.f27924l;
                O o4 = p083k3.l.f25980A.f25983c;
                return O.l((Uri) this.f10630b);
            case 4:
                k kVar = (k) this.f10630b;
                String str = kVar.f25971G.f28196G;
                Object obj2 = G4.f13476e0;
                return new H4(G4.r(kVar.f25974J, new t(str, false)));
            case 5:
                return ((C3193a) this.f10630b).getViewSignals();
            case 6:
                return new V1(((C0579f0) this.f10630b).f11178Q);
            default:
                return this.f10630b;
        }
    }
}
