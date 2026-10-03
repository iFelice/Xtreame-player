package B0;

import C0.InterfaceC0078c;
import android.util.Base64;
import android.util.Log;
import androidx.media3.effect.DefaultVideoFrameProcessor$Factory$Builder;
import com.google.internal.firebase.inappmessaging.v1.sdkserving.CampaignImpression;
import pe.hf.black20.CategoriesActivity;

/* JADX INFO: renamed from: B0.y, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0074y implements p190y4.t, p117p0.u, p085k6.a, R2.d {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f1126G;

    public /* synthetic */ C0074y(int i8) {
        this.f1126G = i8;
    }

    public static void a(K.k kVar) {
        String str = CategoriesActivity.THEME;
        Log.w("XCIPTV_TAG", kVar.f4294H + ": " + ((String) kVar.f4295I));
    }

    @Override // R2.d
    public Object apply(Object obj) {
        switch (this.f1126G) {
            case 0:
                return ((CampaignImpression) obj).getCampaignId();
            case 6:
                return p108n6.b.f27572a;
            default:
                return (byte[]) obj;
        }
    }

    @Override // p190y4.t
    public Object get() {
        switch (this.f1126G) {
            case 0:
                return new C0061m(new S0.d(), 50000, 50000, 1000, 2000, -1, false);
            case 1:
                byte[] bArr = new byte[12];
                C0.C.f1243i.nextBytes(bArr);
                return Base64.encodeToString(bArr, 10);
            case 2:
                p190y4.t tVar = U0.u.f6849b;
                return DefaultVideoFrameProcessor$Factory$Builder.class;
            default:
                throw new IllegalStateException();
        }
    }

    @Override // p117p0.u
    public void invoke(Object obj) {
        InterfaceC0078c interfaceC0078c = (InterfaceC0078c) obj;
        switch (this.f1126G) {
            case 0:
                interfaceC0078c.getClass();
                break;
            default:
                interfaceC0078c.getClass();
                break;
        }
    }
}
