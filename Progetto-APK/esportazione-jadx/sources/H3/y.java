package H3;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.common.internal.AbstractC0636l;
import com.google.android.gms.common.internal.C0633i;

/* JADX INFO: loaded from: classes.dex */
public final class y extends AbstractC0636l {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final b f3757e = new b("CastClientImplCxless", null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CastDevice f3758a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f3759b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Bundle f3760c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f3761d;

    public y(Context context, Looper looper, C0633i c0633i, CastDevice castDevice, long j8, Bundle bundle, String str, com.google.android.gms.common.api.k kVar, com.google.android.gms.common.api.l lVar) {
        super(context, looper, 10, c0633i, kVar, lVar);
        this.f3758a = castDevice;
        this.f3759b = j8;
        this.f3760c = bundle;
        this.f3761d = str;
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.internal.ICastDeviceController");
        return iInterfaceQueryLocalInterface instanceof f ? (f) iInterfaceQueryLocalInterface : new f(iBinder);
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g, com.google.android.gms.common.api.e
    public final void disconnect() {
        try {
            try {
                f fVar = (f) getService();
                fVar.i2(1, fVar.j0());
            } catch (RemoteException | IllegalStateException e8) {
                f3757e.a(e8, "Error while disconnecting the controller interface", new Object[0]);
            }
        } finally {
            super.disconnect();
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final J3.d[] getApiFeatures() {
        return C3.y.f1625e;
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final Bundle getGetServiceRequestExtraArgs() {
        Bundle bundle = new Bundle();
        f3757e.b("getRemoteService()", new Object[0]);
        CastDevice castDevice = this.f3758a;
        castDevice.getClass();
        bundle.putParcelable("com.google.android.gms.cast.EXTRA_CAST_DEVICE", castDevice);
        bundle.putLong("com.google.android.gms.cast.EXTRA_CAST_FLAGS", this.f3759b);
        bundle.putString("connectionless_client_record_id", this.f3761d);
        Bundle bundle2 = this.f3760c;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g, com.google.android.gms.common.api.e
    public final int getMinApkVersion() {
        return 19390000;
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final String getServiceDescriptor() {
        return "com.google.android.gms.cast.internal.ICastDeviceController";
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final String getStartServiceAction() {
        return "com.google.android.gms.cast.service.BIND_CAST_DEVICE_CONTROLLER_SERVICE";
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final boolean usesClientTelemetry() {
        return true;
    }
}
