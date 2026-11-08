package H3;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.common.internal.AbstractC0636l;

/* JADX INFO: loaded from: classes.dex */
public final class u extends AbstractC0636l {
    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.internal.ICastService");
        return iInterfaceQueryLocalInterface instanceof i ? (i) iInterfaceQueryLocalInterface : new i(iBinder, "com.google.android.gms.cast.internal.ICastService", 2);
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final J3.d[] getApiFeatures() {
        return C3.y.f1625e;
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g, com.google.android.gms.common.api.e
    public final int getMinApkVersion() {
        return 12451000;
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final String getServiceDescriptor() {
        return "com.google.android.gms.cast.internal.ICastService";
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
