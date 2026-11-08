package p113o3;

import E1.W;
import P3.c;
import android.content.Context;
import android.os.Message;
import com.google.android.gms.internal.ads.B8;
import p083k3.l;

/* JADX INFO: loaded from: classes.dex */
public final class J extends W {
    @Override // E1.W
    public final void a(Message message) {
        try {
            super.a(message);
        } catch (Throwable th) {
            O o4 = l.f25980A.f25983c;
            Context context = l.f25980A.f25987g.f19809e;
            if (context != null) {
                try {
                    if (((Boolean) B8.f12288b.l()).booleanValue()) {
                        c.a(context, th);
                    }
                } catch (IllegalStateException unused) {
                }
            }
            throw th;
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        try {
            super.handleMessage(message);
        } catch (Exception e8) {
            l.f25980A.f25987g.i("AdMobHandler.handleMessage", e8);
        }
    }
}
