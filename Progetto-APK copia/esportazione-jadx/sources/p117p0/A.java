package p117p0;

import android.telephony.TelephonyCallback;
import android.telephony.TelephonyDisplayInfo;
import com.google.android.gms.internal.ads.Kq;

/* JADX INFO: loaded from: classes.dex */
public final class A extends TelephonyCallback implements TelephonyCallback.DisplayInfoListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f28016a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f28017b;

    public /* synthetic */ A(Object obj, int i8) {
        this.f28016a = i8;
        this.f28017b = obj;
    }

    @Override // android.telephony.TelephonyCallback.DisplayInfoListener
    public final void onDisplayInfoChanged(TelephonyDisplayInfo telephonyDisplayInfo) {
        switch (this.f28016a) {
            case 0:
                int overrideNetworkType = telephonyDisplayInfo.getOverrideNetworkType();
                ((C) this.f28017b).g(overrideNetworkType == 3 || overrideNetworkType == 4 || overrideNetworkType == 5 ? 10 : 5);
                break;
            default:
                int overrideNetworkType2 = telephonyDisplayInfo.getOverrideNetworkType();
                Kq.f((Kq) this.f28017b, true != (overrideNetworkType2 == 3 || overrideNetworkType2 == 4 || overrideNetworkType2 == 5) ? 5 : 10);
                break;
        }
    }
}
