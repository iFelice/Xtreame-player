package p113o3;

import a7.b;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.internal.ads.Cw;
import p120p3.g;
import p120p3.h;

/* JADX INFO: loaded from: classes.dex */
public final class N extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f27923a = 1;

    public N() {
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        switch (this.f27923a) {
            case 0:
                synchronized (g.f28212b) {
                    g.f28213c = false;
                    g.f28214d = false;
                    h.g("Ad debug logging enablement is out of date.");
                    break;
                }
                b.n(context);
                return;
            default:
                if (intent.getAction() == "android.media.action.HDMI_AUDIO_PLUG") {
                    int intExtra = intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", -1);
                    if (intExtra == 0) {
                        Cw.f12724h = 1;
                        return;
                    } else {
                        if (intExtra == 1) {
                            Cw.f12724h = 2;
                            return;
                        }
                        return;
                    }
                }
                return;
        }
    }

    public /* synthetic */ N(int i8) {
    }
}
