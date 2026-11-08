package N3;

import J3.d;
import K3.InterfaceC0232e;
import K3.InterfaceC0239l;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.internal.AbstractC0636l;
import com.google.android.gms.common.internal.C0633i;
import com.google.android.gms.common.internal.C0645v;
import org.videolan.libvlc.MediaPlayer;

/* JADX INFO: loaded from: classes.dex */
public final class c extends AbstractC0636l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0645v f4941a;

    public c(Context context, Looper looper, C0633i c0633i, C0645v c0645v, InterfaceC0232e interfaceC0232e, InterfaceC0239l interfaceC0239l) {
        super(context, looper, MediaPlayer.Event.PausableChanged, c0633i, interfaceC0232e, interfaceC0239l);
        this.f4941a = c0645v;
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.service.IClientTelemetryService");
        return iInterfaceQueryLocalInterface instanceof a ? (a) iInterfaceQueryLocalInterface : new a(iBinder, "com.google.android.gms.common.internal.service.IClientTelemetryService", 1);
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final d[] getApiFeatures() {
        return X3.b.f7657b;
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final Bundle getGetServiceRequestExtraArgs() {
        C0645v c0645v = this.f4941a;
        c0645v.getClass();
        Bundle bundle = new Bundle();
        String str = c0645v.f11901b;
        if (str != null) {
            bundle.putString("api", str);
        }
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g, com.google.android.gms.common.api.e
    public final int getMinApkVersion() {
        return 203400000;
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final String getServiceDescriptor() {
        return "com.google.android.gms.common.internal.service.IClientTelemetryService";
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final String getStartServiceAction() {
        return "com.google.android.gms.common.telemetry.service.START";
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final boolean getUseDynamicLookup() {
        return true;
    }
}
