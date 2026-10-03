package u3;

import android.os.RemoteException;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.gms.internal.ads.InterfaceC1295f9;
import com.google.android.gms.internal.ads.X8;
import okhttp3.HttpUrl;
import p043f3.k;
import p120p3.h;

/* JADX INFO: loaded from: classes.dex */
public final class b extends FrameLayout {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public boolean f30491G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public ImageView.ScaleType f30492H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f30493I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public e f30494J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public e f30495K;

    public final synchronized void a(e eVar) {
        try {
            this.f30495K = eVar;
            if (this.f30493I) {
                ImageView.ScaleType scaleType = this.f30492H;
                X8 x8 = eVar.f30507a.f30506H;
                if (x8 != null && scaleType != null) {
                    try {
                        x8.r0(new R3.b(scaleType));
                    } catch (RemoteException e8) {
                        h.e("Unable to call setMediaViewImageScaleType on delegate", e8);
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public k getMediaContent() {
        return null;
    }

    public void setImageScaleType(ImageView.ScaleType scaleType) {
        X8 x8;
        this.f30493I = true;
        this.f30492H = scaleType;
        e eVar = this.f30495K;
        if (eVar == null || (x8 = eVar.f30507a.f30506H) == null || scaleType == null) {
            return;
        }
        try {
            x8.r0(new R3.b(scaleType));
        } catch (RemoteException e8) {
            h.e("Unable to call setMediaViewImageScaleType on delegate", e8);
        }
    }

    public void setMediaContent(k kVar) {
        boolean zK;
        X8 x8;
        this.f30491G = true;
        e eVar = this.f30494J;
        if (eVar != null && (x8 = eVar.f30507a.f30506H) != null) {
            try {
                x8.Z(null);
            } catch (RemoteException e8) {
                h.e("Unable to call setMediaContent on delegate", e8);
            }
        }
        if (kVar == null) {
            return;
        }
        try {
            InterfaceC1295f9 interfaceC1295f9Zza = kVar.zza();
            if (interfaceC1295f9Zza != null) {
                if (!kVar.a()) {
                    if (kVar.zzb()) {
                        zK = interfaceC1295f9Zza.K(new R3.b(this));
                    }
                    removeAllViews();
                }
                zK = interfaceC1295f9Zza.H(new R3.b(this));
                if (zK) {
                    return;
                }
                removeAllViews();
            }
        } catch (RemoteException e9) {
            removeAllViews();
            h.e(HttpUrl.FRAGMENT_ENCODE_SET, e9);
        }
    }
}
