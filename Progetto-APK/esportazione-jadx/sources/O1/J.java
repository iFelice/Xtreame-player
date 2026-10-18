package O1;

import android.content.Context;
import android.os.ParcelFileDescriptor;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.internal.ads.C1075aw;
import com.google.android.gms.internal.ads.C1322fl;
import com.google.android.gms.internal.ads.C1385gw;
import com.google.android.gms.internal.ads.C2000sq;
import com.google.android.gms.internal.ads.C2040te;
import com.google.android.gms.internal.ads.C2201wj;
import com.google.android.gms.internal.ads.InterfaceC1374gl;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;

/* JADX INFO: loaded from: classes.dex */
public final class J implements m0, InterfaceC1374gl, Z3.W, org.chromium.net.c {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f5273G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Object f5274H;

    public J() {
        this.f5273G = 2;
    }

    public FileChannel a() throws IOException {
        int i8 = this.f5273G;
        Object obj = this.f5274H;
        switch (i8) {
            case 1:
                return new FileInputStream((File) obj).getChannel();
            default:
                ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) obj;
                if (parcelFileDescriptor.getStatSize() != -1) {
                    return new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor).getChannel();
                }
                parcelFileDescriptor.close();
                throw new IllegalArgumentException("Not a file: " + parcelFileDescriptor);
        }
    }

    public int b(View view) {
        int i8 = this.f5273G;
        Object obj = this.f5274H;
        switch (i8) {
            case 0:
                return ((L) obj).F(view) + ((ViewGroup.MarginLayoutParams) ((M) view.getLayoutParams())).rightMargin;
            default:
                return ((L) obj).A(view) + ((ViewGroup.MarginLayoutParams) ((M) view.getLayoutParams())).bottomMargin;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1374gl
    public void c(boolean z7, Context context, C2201wj c2201wj) throws C1322fl {
        int i8 = this.f5273G;
        Object obj = this.f5274H;
        switch (i8) {
            case 0:
                C2000sq c2000sq = (C2000sq) obj;
                try {
                    ((C1385gw) c2000sq.f20994b).c(z7);
                    C1385gw c1385gw = (C1385gw) c2000sq.f20994b;
                    c1385gw.getClass();
                    try {
                        c1385gw.f19025a.H1(new R3.b(context));
                        return;
                    } catch (Throwable th) {
                        throw new C1075aw(th);
                    }
                } catch (C1075aw e8) {
                    throw new C1322fl(e8.getCause());
                }
            case 1:
                C2000sq c2000sq2 = (C2000sq) obj;
                try {
                    ((C1385gw) c2000sq2.f20994b).c(z7);
                    C1385gw c1385gw2 = (C1385gw) c2000sq2.f20994b;
                    c1385gw2.getClass();
                    try {
                        c1385gw2.f19025a.B0(new R3.b(context));
                        return;
                    } catch (Throwable th2) {
                        throw new C1075aw(th2);
                    }
                } catch (C1075aw e9) {
                    throw new C1322fl(e9.getCause());
                }
            case 2:
                C2000sq c2000sq3 = (C2000sq) obj;
                try {
                    ((C1385gw) c2000sq3.f20994b).c(z7);
                    C1385gw c1385gw3 = (C1385gw) c2000sq3.f20994b;
                    c1385gw3.getClass();
                    try {
                        c1385gw3.f19025a.B();
                        return;
                    } catch (Throwable th3) {
                        throw new C1075aw(th3);
                    }
                } catch (C1075aw e10) {
                    p120p3.h.h("Cannot show rewarded video.", e10);
                    throw new C1322fl(e10.getCause());
                }
            default:
                C2040te c2040te = (C2040te) obj;
                try {
                    F2.G g8 = p083k3.l.f25980A.f25982b;
                    F2.G.M(context, (AdOverlayInfoParcel) c2040te.f21082G.get(), true);
                    return;
                } catch (Exception unused) {
                    return;
                }
        }
    }

    public int d(View view) {
        int i8 = this.f5273G;
        Object obj = this.f5274H;
        switch (i8) {
            case 0:
                return ((L) obj).C(view) - ((ViewGroup.MarginLayoutParams) ((M) view.getLayoutParams())).leftMargin;
            default:
                return ((L) obj).G(view) - ((ViewGroup.MarginLayoutParams) ((M) view.getLayoutParams())).topMargin;
        }
    }

    @Override // Z3.Y
    public Object zza() {
        switch (this.f5273G) {
            case 2:
                break;
        }
        return this.f5274H;
    }

    public /* synthetic */ J(Object obj, int i8) {
        this.f5273G = i8;
        this.f5274H = obj;
    }
}
